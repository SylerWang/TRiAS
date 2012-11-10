// Fuktionen, die bei externen Messages gerufen werden ------------------------
// File: EXTFCNS1.CXX
// @doc

#include "triaspre.hxx"

#include <shellapi.h>
#include <tchar.h>
#include <registry.hxx>
#include <konsobj.hxx>

#if !defined(WIN16)
#include <dirisole.h>
#include <TRiASMode.h>
#include "extmain3.hxx"
#endif

#if defined(OLD_TOOLBOX)
#include "tools.hxx"
#endif // OLD_TOOLBOX
#include "overview.hxx"
#include "legdinfo.hxx"
#include "legwind.hxx"
#include "triasres.h"
#include "strings.h"
#include "WinMMWrap.h"

#if !defined(WIN16)
#include <funcs03.h>

#include <xtsnguid.h>		// GUID's
#include <undoguid.h>
#include <iunredo.hxx>

#include <undohelp.hxx>
#endif // WIN16

extern HINSTANCE hInstance;	// aktuelles InstanceHandle
extern HPALETTE hPalette;	// aktive Farbpalette

extern bool OverViewCFlag;
extern bool LegendToRepaint;
extern bool PrintEFlag;		// Drucken !aktiv

extern short GCancelFlag;       // General Cancel Flag

#if defined(OLD_TOOLBOX)
extern class ToolWind *pToolBox;	// ToolBox
#else
extern int g_iActTool;		// aktives Tool
#endif // OLD_TOOLBOX

extern class COverViewClientWindow *pOverView;	// Gesamt�bersicht
extern class CLegendeClientWindow *pLegende;	// Legende

extern char cbDefaultDir[_MAX_PATH+1];

bool g_fDiagnostics;		// DiagnosticNotifications ausgeben
extern bool g_fAutomation;	// durch OLE Automation gestartet
extern bool g_fStartByOle;	// mit /Embedding gestartet
extern bool g_fTip;			// mit -t gestartet

extern bool g_fSystemAdm;	// SystemAdministratorMode
extern DWORD g_dwTRiASMode;		// TRiASMode

#if defined(_DEBUG) && !defined(WIN16) && _TRiAS_VER < 0x0400
extern short g_iKonsFlags;
#endif // _DEBUG

#ifdef _DEBUG
#undef THIS_FILE
static char BASED_CODE THIS_FILE[] = __FILE__;
#endif

///////////////////////////////////////////////////////////////////////////////
// 
long RetrieveObjNameMCodeIdent (DatenBasisObjekt &rDBO, long lIdent, bool fCreateNew = false);
long RetrieveObjNameMCode (DatenBasisObjekt &rDBO, long lONr, bool fCreateNew = false);

// sonstige FunktionsPrototypen -----------------------------------------------
ErrCode CreateNewDB (CREATEDB *pCDB, unsigned short iRes);
short OTypToBits (ObjTyp iOTyp);

#if defined(WIN16)
bool IsWin32s (void);
#endif

#if 0
// Vergleicht GeoTyp mit VisTyp ------------------------------------------------
VisType OTypToVTyp (ObjTyp iOTyp) 
{
	switch (iOTyp) {
	case OT_PUNKT:	return VT_Punkt;
	case OT_KANTE:	return VT_Linie;
	case OT_FLAECHE:
	case OT_KREIS:	return VT_Flaeche;
	case OT_TEXT:	return VT_Text;
	case OT_UNKNOWN:
	case OT_KO:
	default:
		break;
	}

return VT_Default;
}
#endif

// ----------------------------------------------------------------------------
// Funktion, die f�r eine nicht definierte Message gerufen werden soll --------
LRESULT ExtDirisWindow::OnNotDefinedMessage (HPROJECT hPr, LPARAM lParam)
{
#if defined(_DEBUG)
DWORD dwSndSize = 0;
BYTE *pSnd = ReadResource (hInstance, IDSND_QUACK, dwSndSize);

	if (pSnd) {	// synchron abspielen
	CWinMMBind WinMM;

		if (WinMM.IsValid())
			WinMM.PlaySound ((LPCSTR)pSnd, NULL, SND_MEMORY|SND_NODEFAULT|SND_SYNC/*|SND_NOWAIT*/);
		delete pSnd;
	} else
		MessageBeep (MB_ICONASTERISK);
#else
	MessageBeep (MB_ICONASTERISK);
#endif // defined(_DEBUG)
	return FALSE;
}

LRESULT ExtDirisWindow::OnNotImplementedMessage (HPROJECT hPr, LPARAM lParam)
{
	return FALSE;		// einfach nichts machen, ist ggf. woanders implementiert
}

// @msg DEX_QUERYTEXTMERKMAL | Mit dieser Message an <tr> ist es m�glich Merkmale
// eines Objektes, eines Identifikators oder einer Ansicht zu lesen.
// @parm TARGETMERKMAL * | pTargetFeature | lParam zeigt auf eine Struktur vom Typ
// <t TARGETMERKMAL>.
// @rdesc Diese Message liefert einen Zeiger auf den in der Datenstruktur �bergebenen
// Zeichenkettenpuffer (<e TARGETMERKMAL.pMText>). Im Fehlerfall liefert diese Message 
// NULL.
// @comm Diese Message wird durch die Funktion <f DEX_GetTextMerkmal> ausgel�st.
// @xref <f DEX_GetTextMerkmal>, <t TARGETMERKMAL>, <t ErrCode>
LRESULT ExtDirisWindow::OnQueryTextMerkmal (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);

TARGETMERKMAL *pGM = (TARGETMERKMAL *)lParam;

#if defined(_DEBUG)
	if (pGM -> dwSize == sizeof(TARGETMERKMAL))
		TX_ASSERT_POINTER(pGM, TARGETMERKMAL);
	else {
		TX_ASSERT(sizeof(TARGETMERKMALEX) == pGM -> dwSize);
		TX_ASSERT_POINTER(pGM, TARGETMERKMALEX);

	TARGETMERKMALEX *pTMEx = (TARGETMERKMALEX *)pGM;

		TX_ASSERT(NULL == pTMEx -> pcView || TIsValidString(pTMEx -> pcView));
	}
#endif

	TX_ASSERT(IsValidMCode(pGM -> lMCode));
	TX_ASSERT(pGM -> imaxLen >= 0);
	TX_ASSERT(NULL == pGM -> pMText || TIsValidAddress (pGM -> pMText, pGM -> imaxLen, true));

	return (LRESULT)DBO().QueryTextMerkmal (hPr, (TARGETMERKMAL *)lParam);
}

// ----------------------------------------------------------------------------
// Objekt-/Sicht-/IdentifikatorMerkmal schreiben ------------------------------
// @msg DEX_MODIFYMERKMAL | Mit dieser Message an <tr> ist es m�glich Merkmale
// eines Objektes, eines Identifikators oder einer Ansicht zu modifizieren oder zu 
// l�schen.
// @parm TARGETMERKMAL * | pTargetFeature | lParam zeigt auf eine Struktur vom Typ
// <t TARGETMERKMAL>.
// @rdesc Diese Message liefert einen <t ErrCode>, der evtl. aufgetretene Fehler 
// verschl�sselt.
// @comm Diese Message wird durch die Funktion <f DEX_ModTextMerkmal> ausgel�st.
// @xref <f DEX_ModTextMerkmal>, <t TARGETMERKMAL>, <t ErrCode>
LRESULT ExtDirisWindow::OnModTextMerkmal (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(EC_NOOPEN);
		
TARGETMERKMAL *pMMK = (TARGETMERKMAL *)lParam;

#if defined(_DEBUG)
	if (sizeof(TARGETMERKMAL) == pMMK -> dwSize)
		TX_ASSERT_POINTER(pMMK, TARGETMERKMAL);
	else {
		TX_ASSERT(sizeof(TARGETMERKMALEX) == pMMK -> dwSize);
		TX_ASSERT_POINTER((TARGETMERKMALEX *)pMMK, TARGETMERKMALEX);

	TARGETMERKMALEX *pTMEx = (TARGETMERKMALEX *)pMMK;

		TX_ASSERT(NULL == pTMEx -> pcView || TIsValidString(pTMEx -> pcView));
	}
#endif

	TX_ASSERT(IsValidMCode(pMMK -> lMCode));
	TX_ASSERT(pMMK -> imaxLen >= 0);
	TX_ASSERT(NULL == pMMK -> pMText || TIsValidAddress (pMMK -> pMText, pMMK -> imaxLen, false));

	return (LRESULT)DBO().ModTextMerkmal(hPr, (TARGETMERKMAL *)lParam);
}

///////////////////////////////////////////////////////////////////////////////
// Enumeration aller Identifikatoren einer Sicht 
extern "C" inline BOOL EnumIdentsCallback (
	BOOL (*pFcn)(long, BOOL, void *), long lKey, BOOL fNotLast, void *pData)
{
	return ((ENUMLONGKEYCALLBACK) pFcn)(lKey, fNotLast, pData);
}

LRESULT ExtDirisWindow::OnEnumSightIdents (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);
		
ENUMTEXTKEY *pK = (ENUMTEXTKEY *)lParam;

	TX_ASSERT_POINTER(pK, ENUMTEXTKEY);
	TX_ASSERT(TIsValidAddress(pK -> eFcn, 1, false));

#if defined(_FORCE_LEGACY_CODE)
GeoDB &rDB = DBO().DB();
CActDB ActDB (rDB);
#endif // _FORCE_LEGACY_CODE

	if (pK -> eKey == NULL || *(pK -> eKey) == '\0') {
	// aktuelle oder tempor�re Sicht
	CTable t (DBO().Idents().IdentTree());
	bool fRet = true;
	bool fLast = false;
		
		for (t.First(); t.Valid(); /* */) {
		CIdentifikatorLock lId (t);
		
			fLast = !t.Next();
			
			TX_ASSERT(NULL != (CIdentifikator *)lId);
			if (!lId) continue;

		int iToPaint = lId -> toPaint() | (lId -> hasKO() ? OTKO : 0);

			if (!iToPaint) continue;		// Ident ist nicht in Ansicht vertreten

		// Info ggf. aus GeoDB lesen
			iToPaint = (iToPaint & lId -> InitOTypes()) | (lId -> hasKO() ? OTKO : 0);
			if (!iToPaint) continue;

			if ((fRet = EnumIdentsCallback (pK -> eFcn, lId -> Id(), 
							!fLast, 
							pK -> ePtr)) == false) 
			{
				break;
			}
		}
		return fRet;
	} else {
	// aus Datenbank lesen
		TX_ASSERT(TIsValidString(pK -> eKey));
		return (LRESULT)(S_OK == DBO().EnumViewIdents ((LPCSTR)pK -> eKey, pK -> eFcn, pK -> ePtr));
	}
}

// Enumeration aller Identifikatoren einer Sicht unter Angabe der vorhandenen 
// Objekttypen
extern "C" inline BOOL EnumIdentsExCallback (
	BOOL (*pFcn)(long, DWORD, void *), long lKey, DWORD dwData, void *pData)
{
	return ((ENUMLONGKEYEXCALLBACK) pFcn)(lKey, dwData, pData);
}

LRESULT ExtDirisWindow::OnEnumSightIdentsEx (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);
		
ENUMTEXTKEYEX *pK = (ENUMTEXTKEYEX *)lParam;

	TX_ASSERT_POINTER(pK, ENUMTEXTKEYEX);
	TX_ASSERT(TIsValidAddress(pK -> eFcn, 1, false));

	if (pK -> eKey == NULL || *(pK -> eKey) == '\0') {
	// aktuelle oder tempor�re Sicht
	CTable t (DBO().Idents().IdentTree());
	bool fRet = true;
	short iToPaint = 0;
#if defined(_FORCE_LEGACY_CODE)
	GeoDB &rDB = DBO().DB();
#endif // _FORCE_LEGACY_CODE

		for (t.First(); t.Valid(); t.Next()) {
		CIdentifikatorLock lId (t);
		
			TX_ASSERT(NULL != (CIdentifikator *)lId);
			if (!lId) continue;

//			if ((iToPaint = lId -> toPaint()) == 0 ||
//			    !(iToPaint & pK -> eData)) 
//				continue;

			iToPaint = lId -> toPaint() | (lId -> hasKO() ? OTKO : 0);
			if (!(iToPaint & pK -> eData))
				continue;

		// ggf. aus GeoDB lesen
			iToPaint = (iToPaint & lId -> InitOTypes()) | (lId -> hasKO() ? OTKO : 0);
			if (!(iToPaint & pK -> eData))
				continue;

			if ((fRet = EnumIdentsExCallback (pK -> eFcn, lId -> Id(), 
							iToPaint & pK -> eData, 
							pK -> ePtr)) == false) 
			{
				break;
			}
		}
		return fRet;
	} else {
	// aus Datenbank lesen
		TX_ASSERT(TIsValidString(pK -> eKey));
		return (LRESULT)(S_OK == DBO().EnumViewIdentsEx ((LPCSTR)pK -> eKey, pK -> eFcn, pK -> ePtr, pK -> eData));
	}
}

// Enumeration aller Identifikatoren ------------------------------------------
// @msg DEX_ENUMALLIDENTS | Mit dieser Message an <tr> ist es m�glich alle 
// Identifikatoren des aktuellen Projektes zu enumerieren.
// @parm ENUMNOKEYLONG * | pEnumNoKey | lParam zeigt auf eine Struktur vom Typ
// <t ENUMNOKEYLONG>.
// @rdesc Diese Message liefert einen <t bool> - Wert, also im Normalfall <t true> 
// und Fehlerfall <t false>. Wird die Enumeration durch die Enumerationsfunktion 
// abgebrochen (indem diese Funktion <t false> an <tr> liefert, so ist der 
// R�ckgabewert der Message ebenfalls <t false>.
// @comm Diese Message wird durch die Funktion <f DEX_EnumIdents> ausgel�st.<par>Um 
// zus�tzlich den gew�nschten Objekttyp vorgeben zu k�nnen, mu� die 
// Message <m DEX_ENUMALLIDENTSEX> eingesetzt werden.
// werden.
// @xref <f DEX_EnumIdents>, <m DEX_ENUMALLIDENTSEX>, <t ENUMNOKEYLONG>
LRESULT ExtDirisWindow::OnEnumIdents (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);
		
ENUMNOKEY *pK = (ENUMNOKEY *)lParam;

	TX_ASSERT_POINTER(pK, ENUMNOKEY);
	TX_ASSERT(TIsValidAddress(pK -> eFcn, 1, false));

	return (LRESULT)DBO().EnumIdents (hPr, (ENUMNOKEYLONGPROC)pK -> eFcn, pK -> ePtr);
}


// Enumeration aller Identifikatoren unter Ber�cksichtigung der gew�nschten 
// Objektypen
// DEX_ENUMALLIDENTSEX
LRESULT ExtDirisWindow::OnEnumIdentsEx (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);
		
ENUMNOKEYEX *pK = (ENUMNOKEYEX *)lParam;

	TX_ASSERT_POINTER(pK, ENUMNOKEYEX);
	TX_ASSERT(TIsValidAddress(pK -> eFcn, 1, false));

	return (LRESULT)DBO().EnumIdentsEx (hPr, (ENUMNOKEYLONGEXPROC)pK -> eFcn, pK -> ePtr, pK -> eData);
}


// Enumeration aller Objekte mit einem Identifikator --------------------------
// @msg DEX_ENUMIDENTOBJS | Mit dieser Message an <tr> ist es m�glich alle 
// Objekte eines vorgegebenen Identifikators zu enumerieren.
// @parm ENUMLONGKEY * | pEnumLongKey | lParam zeigt auf eine Struktur vom Typ
// <t ENUMLONGKEY>.
// @rdesc Diese Message liefert einen <t bool> - Wert, also im Normalfall <t true> 
// und Fehlerfall <t false>. Wird die Enumeration durch die Enumerationsfunktion 
// abgebrochen (indem diese Funktion <t false> an <tr> liefert, so ist der 
// R�ckgabewert der Message ebenfalls <t false>.
// @comm Diese Message wird durch die Funktion <f DEX_EnumIdentObjects> 
// ausgel�st.<par>Das Feld <e ENUMLONGKEY.eKey> mu� vor dem Aufruf der Message 
// mit dem zu untersuchenden Identifikator belegt werden.<par>Bei dieser Enumeration
// wird der Objekttyp nicht ber�cksichtigt, d.h. es werden grunds�tzlich alle Objekte,
// die den gegebenen Identifikator besitzen, enumeriert. Um zus�tzlich den gew�nschte
// Objekttyp vorgeben zu k�nnen, mu� die Message <m DEX_ENUMIDENTOBJSEX> eingesetzt 
// werden.
// @xref <f DEX_EnumIdentObjects>, <m DEX_ENUMIDENTOBJS>, <m DEX_ENUMIDENTOBJSEX>, 
// <t ENUMLONGKEY>
LRESULT ExtDirisWindow::OnEnumIdentObjects (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);
		
ENUMLONGKEY *pK = (ENUMLONGKEY *)lParam;

	TX_ASSERT_POINTER(pK, ENUMLONGKEY);
	TX_ASSERT(TIsValidAddress(pK -> eFcn, 1, false));
	TX_ASSERT(IsValidIdent((long)pK -> eKey));

	return (LRESULT)DBO().EnumIdentObjects (hPr, pK -> eKey, pK -> eFcn, pK -> ePtr);
}

// @msg DEX_ENUMIDENTOBJSEX | Mit dieser Message an <tr> ist es m�glich alle 
// Objekte eines vorgegebenen Identifikators unter Ber�cksichtigung eines
// gew�nschten Objekttypes (oder mehererer) zu enumerieren.
// @parm ENUMLONGKEYEX * | pEnumLongKeyEx | lParam zeigt auf eine Struktur vom Typ
// <t ENUMLONGKEYEX>.
// @rdesc Diese Message liefert einen <t bool> - Wert, also im Normalfall <t true> 
// und Fehlerfall <t false>. Wird die Enumeration durch die Enumerationsfunktion 
// abgebrochen (indem diese Funktion <t false> an <tr> liefert, so ist der 
// R�ckgabewert der Message ebenfalls <t false>.
// @comm Diese Message wird durch die Funktion <f DEX_EnumIdentObjectsEx> 
// ausgel�st.<par>Das Feld <e ENUMLONGKEYEX.eKey> mu� vor dem Aufruf der Message 
// mit dem zu untersuchenden Identifikator belegt werden. Das 
// Feld <e ENUMLONGKEYEX.eData> mu� mit den zu enumerierenden Objettypen belegt werden,
// wobei folgende Werte (oder deren Kombination) verwendet werden k�nnen:
// @flag OTPunkt | Es sollen alle Punktobjekte dieses Identifikators enumeriert werden.
// @flag OTLinie | Es sollen alle Linienobjekte dieses Identifikators enumeriert werden.
// @flag OTFlaeche | Es sollen alle Fl�chenobjekte dieses Identifikators enumeriert werden.
// @flag OTText | Es sollen alle Textobjekte dieses Identifikators enumeriert werden.
//<par>Bei dieser Enumeration wird der Objekttyp ber�cksichtigt. Sollen alle Objekte
// eines IDentifikators enumeriert werden, so ist es m�glich die Message 
//<m DEX_ENUMIDENTOBJS> einzusetzen.
// @xref <f DEX_EnumIdentObjects>, <m DEX_ENUMIDENTOBJS>, <t ENUMLONGKEYEX>
LRESULT ExtDirisWindow::OnEnumIdentObjectsEx (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);
		
ENUMLONGKEYEX *pK = (ENUMLONGKEYEX *)lParam;

	TX_ASSERT_POINTER(pK, ENUMLONGKEYEX);
	TX_ASSERT(TIsValidAddress(pK -> eFcn, 1, false));
	TX_ASSERT(IsValidIdent((long)pK -> eKey));

	return (LRESULT)DBO().EnumIdentObjectsEx (hPr, pK -> eKey, pK -> eFcn, pK -> ePtr, pK -> eData);
}


// Abfrage eines ObjektContainers ---------------------------------------------
LRESULT ExtDirisWindow::OnQueryObjContainer (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);
		
	TX_ASSERT(TIsValidAddress((void *)lParam, 4*sizeof(long), true));
	TX_ASSERT(IsValidONr(*(long *)lParam));

// hier wird getrickst, die Objektnummer wird im ersten Feld der 
// �bergebenen ObjContainerStruktur geliefert, und dann �berschrieben
ObjContainer OC;

	if (!DBO().GetObjContainer (*(long *)lParam, OC))
		return FALSE;

long *plCont = (long *)lParam;
KoOrd dX, dY;

	if (!DBO().ScaleCTF (OC.XMin(), OC.YMin(), &dX, &dY))
		return FALSE;
	plCont[0] = dX;
	plCont[2] = dY;

	if (!DBO().ScaleCTF (OC.XMax(), OC.YMax(), &dX, &dY))
		return FALSE;
	plCont[1] = dX;
	plCont[3] = dY;

	return TRUE;
}

// DEX_QUERYOBJCONTAINEREX
LRESULT ExtDirisWindow::OnQueryObjContainerEx (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);

OBJECTCONTAINER *pOC = (OBJECTCONTAINER *)lParam;

	_ASSERTE(TIsValidAddress(pOC, sizeof(OBJECTCONTAINER), true));
	_ASSERTE(sizeof(OBJECTCONTAINER) == pOC -> dwSize);
	_ASSERTE(IsValidONr(pOC -> lONr));
	_ASSERTE(NULL == pOC -> pICS || TIsValidIUnknown(pOC -> pICS));

ObjContainer OC;

	if (!DBO().GetObjContainer (pOC -> lONr, OC, pOC -> pICS))
		return LRESULT(false);

	pOC -> dXMin = OC.XMin();
	pOC -> dXMax = OC.XMax();
	pOC -> dYMin = OC.YMin();
	pOC -> dYMax = OC.YMax();
	return LRESULT(true);
}

LRESULT ExtDirisWindow::OnGetLastIdent (HPROJECT hPr, LPARAM lParam)
{
	return (LRESULT)GetLastIdent();
}


LRESULT ExtDirisWindow::OnSetLastIdent (HPROJECT hPr, LPARAM lParam)
{
	TX_ASSERT(IsValidIdent((long)lParam));

	SetLastIdent ((long)lParam);
	
return true;
}

LRESULT ExtDirisWindow::OnDeleteObject (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(EC_NOOPEN);

	TX_ASSERT(IsValidONr((long)lParam));

#if defined(_FORCE_LEGACY_CODE)
	DBO().DB().SetDirty();
#endif // _FORCE_LEGACY_CODE
	return (LRESULT)DBO().DeleteObjekt ((long)lParam);
}

#if !defined(WIN16)
LRESULT ExtDirisWindow::OnDeleteObjectEx (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);

	TX_ASSERT(IsValidONr((long)lParam));

ResString resUndoDesc (IDS_UNDODELETEOBJ, 64);

	DEX_BeginUndoLevel(resUndoDesc.Addr());

LPUNDOREDODELETEOBJECT pIUndo = NULL;
HRESULT hr = UndoCreateInstance (IID_IUndoRedoDeleteObject, (LPVOID *)&pIUndo);
bool fResult = false;

	if (SUCCEEDED(hr)) hr = pIUndo -> Init (lParam, NULL/* (RECT *)rc */);
	if (DBO().DeleteObjekt (lParam, true)) {
		if (hr == NOERROR)
			DEX_AddUndoRedo (pIUndo);
		fResult = true;
	} 
	if (pIUndo) pIUndo -> Release();

	if (fResult)
		DEX_EndUndoLevel();
	else
		DEX_CancelUndoLevel (false);

	return fResult;
}

LRESULT ExtDirisWindow::OnDeleteObjectRect (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);

DELETEOBJECTRECT *pDOR = (DELETEOBJECTRECT *)lParam;

	TX_ASSERT_POINTER(pDOR, DELETEOBJECTRECT);
	TX_ASSERT(sizeof(DELETEOBJECTRECT) == pDOR -> dwSize);
	TX_ASSERT(IsValidONr(pDOR -> lONr));
	TX_ASSERT(!pDOR -> fWithParentUndo || pDOR -> fUndo);

bool fResult = false;

	if (pDOR -> fWithParentUndo) {
	ResString resUndoDesc (IDS_UNDODELETEOBJ, 64);

		DEX_BeginUndoLevel(resUndoDesc.Addr());

	LPUNDOREDODELETEOBJECT pIUndo = NULL;
	HRESULT hr = UndoCreateInstance (IID_IUndoRedoDeleteObject, (LPVOID *)&pIUndo);

		if (SUCCEEDED(hr)) hr = pIUndo -> Init (lParam, pDOR -> fWithRect ? &pDOR -> rcObj : NULL);
		if (DBO().DeleteObjekt (lParam, true)) {
			if (hr == NOERROR)
				DEX_AddUndoRedo (pIUndo);
			fResult = true;
		} 
		if (pIUndo) pIUndo -> Release();

		if (fResult)
			DEX_EndUndoLevel();
		else
			DEX_CancelUndoLevel (false);
	} else 
		fResult = DBO().DeleteObjekt (pDOR -> lONr, pDOR -> fUndo);

	return fResult;
}
#endif // WIN16

// LegendenBehandlung ---------------------------------------------------------
LRESULT ExtDirisWindow::OnSaveLegend (HPROJECT hPr, LPARAM lParam)
{
	if (pLegende) return (LRESULT)pLegende -> SaveLegend();
	return LRESULT(true);
}

LRESULT ExtDirisWindow::OnResetLegend (HPROJECT hPr, LPARAM lParam)
{
	if (pLegende) return (LRESULT)pLegende -> ResetLegend();
	return LRESULT(true);
}

LRESULT ExtDirisWindow::OnRefreshLegend (HPROJECT hPr, LPARAM lParam)
{
	if (pLegende) return (LRESULT)pLegende -> RefreshLegend();
	return LRESULT(true);
}

LRESULT ExtDirisWindow::OnAddObjectToLegend (HPROJECT hPr, LPARAM lParam)
{
	if (pLegende) return (LRESULT)pLegende -> AddObject (lParam);
	return LRESULT(true);
}

LRESULT ExtDirisWindow::OnRepaintLegend (HPROJECT hPr, LPARAM lParam)
{
	if (pLegende) pLegende -> RePaint();
	return LRESULT(true);
}

LRESULT ExtDirisWindow::OnSaveOverview (HPROJECT hPr, LPARAM lParam)
{
	if (NULL != pOverView) 
		return (LRESULT)pOverView -> SaveOverview (LPCSTR(lParam));
	return LRESULT(true);
}

// DEX_ENUMTEXTMERKMALRECH: Enumeration aller Objekte mit einem Merkmal -------
// @msg DEX_ENUMTEXTMERKMALRECH | Mit dieser Message an <tr> k�nnen alle Objekte
// enumeriert werden, die einem vorgebbaren Suchkriterium �ber die Objektmerkmale
// entsprechen.
// @parm ENUMRECHTEXTMERKMAL * | pEnumRechTextMerkmal | lParam enth�lt einem Pointer
// auf eine Struktur vom Typ <t ENUMRECHTEXTMERKMAL>
// @rdesc Diese Message liefert einen <t bool> - Wert, also im Normalfall <t true> 
// und Fehlerfall <t false>. Wird die Enumeration durch die Enumerationsfunktion 
// abgebrochen (indem diese Funktion <t false> an <tr> liefert, so ist der 
// R�ckgabewert der Message ebenfalls <t false>.
// @comm Diese Message wird durch die Funktion <f DEX_EnumRechTextMerkmal> ausgel�st.
// @xref <f DEX_EnumRechTextMerkmal>, <t ENUMRECHTEXTMERKMAL>
LRESULT ExtDirisWindow::OnEnumTextMerkmal (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);
		
#if defined(_DEBUG)
ENUMRECHTEXTMERKMAL *pERT = (ENUMRECHTEXTMERKMAL *)lParam;

	TX_ASSERT_POINTER(pERT, ENUMRECHTEXTMERKMAL);
	TX_ASSERT(sizeof(ENUMRECHTEXTMERKMAL) == pERT -> dwSize ||
			  sizeof(ENUMRECHTEXTMERKMALEX) == pERT -> dwSize);
	TX_ASSERT(pERT -> pView == NULL || TIsValidString(pERT -> pView));
	TX_ASSERT(IsValidMCode(pERT -> lMCode));
// wenn gleich NULL, dann alle, die diesen MCode besitzen
	TX_ASSERT(NULL == pERT -> pMWert || TIsValidString(pERT -> pMWert));
	TX_ASSERT(TIsValidAddress(pERT -> eFcn, 1, false));
// Mode testen
	if (NULL != pERT -> pMWert) {
	short iMode = pERT -> iMode & SMActionFlag;

		TX_ASSERT(SMExactMatch == iMode || SMInexactMatch == iMode || 
			  SMSubstringMatch == iMode || SMSubStringStartMatch == iMode ||
			  SMExistanceOnly == iMode);
	}
#endif // _DEBUG

	return (LRESULT)DBO().EnumRechTextMerkmal ((ENUMRECHTEXTMERKMAL *)lParam);
}

LRESULT ExtDirisWindow::OnGetTextObjectText (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);
		
GETTEXTDATA *pGTD = (GETTEXTDATA *)lParam;

	TX_ASSERT_POINTER(pGTD, GETTEXTDATA);
	TX_ASSERT(sizeof(GETTEXTDATA) == pGTD -> dwSize);
	TX_ASSERT(IsValidONr(pGTD -> m_lONr));
	TX_ASSERT(pGTD -> m_iLen >= 0);
	TX_ASSERT(TIsValidAddress(pGTD -> m_pText, pGTD -> m_iLen, true));	// writeable !

	return DBO().GetTextObjektText (hPr, pGTD);
}

LRESULT ExtDirisWindow::OnPutTextObjectText (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);
		
PUTTEXTDATA *pPTD = (PUTTEXTDATA *)lParam;

	TX_ASSERT_POINTER(pPTD, PUTTEXTDATA);
	TX_ASSERT(sizeof(PUTTEXTDATA) == pPTD -> dwSize || sizeof(PUTTEXTDATAEX) == pPTD -> dwSize);
	TX_ASSERT(IsValidONr(pPTD -> m_lONr));
	TX_ASSERT(NULL == pPTD -> m_pcText || TIsValidString(pPTD -> m_pcText));
	TX_ASSERT(HACTPROJECT != hPr);

	return DBO().PutTextObjektText (hPr, pPTD);
}

// Enumeration �ber Geometrie -------------------------------------------------
LRESULT ExtDirisWindow::OnEnumGeometrie (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);
		
#if defined(_DEBUG)
ENUMRECHGEOMETRIE *pERG = (ENUMRECHGEOMETRIE *)lParam;

	TX_ASSERT_POINTER(pERG, ENUMRECHGEOMETRIE);

	TX_ASSERT(sizeof(ENUMRECHGEOMETRIE) == pERG -> dwSize || 
			  sizeof(ENUMRECHGEOMETRIEEX) == pERG -> dwSize);
	TX_ASSERT(TIsValidAddress(pERG -> lCont, 
		(pERG -> iMode & ERGConverted) ? 4*sizeof(double) : 4*sizeof(long), 
		true));	// writeable!
	TX_ASSERT(TIsValidAddress(pERG -> eFcn, 1, false));
	if (sizeof(ENUMRECHGEOMETRIEEX) == pERG -> dwSize) {
	ENUMRECHGEOMETRIEEX *pERGEx = (ENUMRECHGEOMETRIEEX *)pERG;

		TX_ASSERT(pERGEx -> m_pView == NULL || TIsValidString(pERGEx -> m_pView));
	}
#endif // _DEBUG

	return (LRESULT)DBO().EnumRechGeometrie ((ENUMRECHGEOMETRIE *)lParam);
}

// Identifikator abfragen -----------------------------------------------------
LRESULT ExtDirisWindow::OnRetrieveIdent (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);

	TX_ASSERT(IsValidONr((LONG)lParam));

// im Normalfall ist hPr == HACTCONNECTION, dann wird der 'echte' Identifikator geliefert
// wird der Pseudo-Identifikator einer evtl. Zuordnungsobjektklasse ben�tigt, dann
// mu� mit hPr == HACTPROJECT gerufen werden
	return LRESULT(DBO().RetrieveIdent ((LONG)lParam, (HACTPROJECT != hPr) ? true : false));
}

// ObjektTyp festellen --------------------------------------------------------
LRESULT ExtDirisWindow::OnRetrieveOTyp (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);
		
	TX_ASSERT(IsValidONr((LONG)lParam));
	return (LRESULT)DBO().RetrieveObjTyp (lParam);
}

LRESULT ExtDirisWindow::OnIsObjectVisible (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);
		
	TX_ASSERT(IsValidONr((LONG)lParam));

	return (LRESULT)DBO().Shapes().isObjectVisible ((long)lParam);
}


LRESULT ExtDirisWindow::OnEnumTopRelations (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);

#if defined(_FORCE_LEGACY_CODE)		
ENUMTOPRELS *pETR = (ENUMTOPRELS *)lParam;

	TX_ASSERT_POINTER(pETR, ENUMTOPRELS);
	TX_ASSERT(sizeof(ENUMTOPRELS) == pETR -> m_dwSize);
	TX_ASSERT(IsValidONr(pETR -> m_lONr));
	TX_ASSERT(TIsValidAddress(pETR -> m_eFcn, 1, false));
	TX_ASSERT(NULL == pETR -> m_pView || TIsValidString(pETR -> m_pView));
	TX_ASSERT(0 == (pETR -> m_iMode & ~ETRAnalyzeView));

ObjFeld Objekte;                        // ArrayContainer
DatenBasisObjekt &rDBO = DBO();
GeoDB &rDB = rDBO.DB();
CActDB ActDB (rDB);

	if (rDB.RigInfo (pETR -> m_lONr, Objekte) != EC_OKAY)
		return LRESULT(false);
		
	if (pETR -> m_iMode & ETRAnalyzeView) {
	// zus�tzlich �ber gegebene Sicht filtern
		if (pETR -> m_pView == NULL) {
		// nach Identifikatoren (�ber aktuelle Sicht) filtern
			if (rDB.IdFilter (Objekte, rDBO.Idents()) != EC_OKAY)
				return LRESULT(false);
		} else {
		// nach Identifikatoren (�ber gegebebene Sicht) filtern
			if (rDB.IdFilter (Objekte, pETR -> m_pView) != EC_OKAY)
				return LRESULT(false);
		}
	}
	return (LRESULT)Objekte.Enumerate (pETR -> m_eFcn, (void *)pETR -> m_dwData);
#else
	TX_ASSERT(FALSE);	// not supported any more
	return FALSE;
#endif // defined(_FORCE_LEGACY_CODE)
}


// Funktionen, die entsprechend der erhaltenen message gerufen werden m�ssen --
// DEX_MENUITEMINSTALL:	MenuItem installieren ---------------------------------
// @msg DEX_MENUITEMINSTALL | Diese Message wird an <tr> geschickt, wenn ein
// zus�tzlicher Menupunkt installiert werden soll.
// @parm INSTALLMENUITEM * | pInstallMenuItem | lParam enth�lt einen Pointer auf
// eine Struktur vom Typ <t INSTALLMENUITEM>.
// @rdesc <tr> liefert das Handle des Popupmenus, in dem der Menupunkt installiert 
// wurde, wenn kein Fehler aufgetreten ist. Ansonsten ist der R�ckgabewert NULL.
// @comm Ein mit <m DEX_MENUITEMINSTALL> installierter Menupunkt mu� durch die 
// Erweiterung mit der Message <m DEX_MENUITEMREMOVE> wieder entfernt werden, bevor
// diese entladen wird.<nl>Diese Message wird durch die Funktion 
// <f DEX_InstallMenuItem> ausgel�st.
// @xref <t INSTALLMENUITEM>, <m DEX_MENUITEMREMOVE>, <f DEX_InstallMenuItem>
LRESULT ExtDirisWindow::OnDexInstallMenuItem (HPROJECT hPr, LPARAM lParam)
{
#if defined(_DEBUG)
INSTALLMENUITEM *pIMI = (INSTALLMENUITEM *)lParam;

	TX_ASSERT_POINTER(pIMI, INSTALLMENUITEM);
	TX_ASSERT(sizeof(INSTALLMENUITEM) == pIMI -> dwSize || sizeof(INSTALLMENUITEMEX) == pIMI -> dwSize);
	TX_ASSERT(NULL != pIMI -> hDex);
	TX_ASSERT(-1 <= pIMI -> iMenuNum || (sizeof(INSTALLMENUITEMEX) == pIMI -> dwSize && -1 == pIMI -> iMenuID));
	TX_ASSERT(0 <= pIMI -> iMenuID || (-1 == pIMI -> iMenuID && (NULL == pIMI -> pMenuText || sizeof(INSTALLMENUITEMEX) == pIMI -> dwSize)));
	TX_ASSERT(NULL == pIMI -> pMenuText || TIsValidString(pIMI -> pMenuText));
	TX_ASSERT(-1 <= pIMI -> iMenuPos);
#endif // _DEBUG

	return (LRESULT)(NULL != InstallMenuItem ((INSTALLMENUITEM *)lParam));
}

// DEX_MENUITEMREMOVE: MenuItem entfernen -------------------------------------
// @msg DEX_MENUITEMREMOVE | Diese Message wird an <tr> geschickt, wenn ein
// zus�tzlich installierter Menupunkt entfernt werden soll.
// @parm REMOVEMENUITEM * | pRemoveMenuItem | lParam enth�lt einen Pointer auf
// eine Struktur vom Typ <t REMOVEMENUITEM>.
// @rdesc <tr> liefert das Handle des Popupmenus, in dem der Menupunkt installiert 
// wurde, wenn kein Fehler aufgetreten ist. Ansonsten ist der R�ckgabewert NULL.
// @comm Es sollten nur Menupunkte entfernt werden, die vorher mit 
// <m DEX_MENUITEMINSTALL> installiert wurden. Auf jeden Fall mu� ein mit der
// Message <m DEX_MENUITEMINSTALL> installierter Menupunkt wieder entfernt werden, 
// bevor diese entladen wird.<nl>Diese Message wird durch die Funktion 
// <f DEX_RemoveMenuItem> ausgel�st.
// @xref <m DEX_MENUITEMINSTALL>, <f DEX_RemoveMenuItem>
LRESULT ExtDirisWindow::OnDexRemoveMenuItem (HPROJECT hPr, LPARAM lParam)
{
#if defined(_DEBUG)
REMOVEMENUITEM *pRMI = (REMOVEMENUITEM *)lParam;

	TX_ASSERT_POINTER(pRMI, REMOVEMENUITEM);
	TX_ASSERT(sizeof(REMOVEMENUITEM) == pRMI -> dwSize || sizeof(REMOVEMENUITEMEX) == pRMI -> dwSize);
	TX_ASSERT(NULL != pRMI -> hDex);
	TX_ASSERT(-1 <= pRMI -> iMenuNum || (sizeof(REMOVEMENUITEMEX) == pRMI -> dwSize && -1 == pRMI -> iMenuID));
	TX_ASSERT((pRMI -> iFlag & IMIOrigMenuItem) || 
			  (0 <= pRMI -> iMenuID && 100 > pRMI -> iMenuID) || 
			  (sizeof(REMOVEMENUITEMEX) == pRMI -> dwSize && -1 == pRMI -> iMenuID));
#endif // _DEBUG

	return (LRESULT)RemoveMenuItem ((REMOVEMENUITEM *)lParam);
}

// DEX_TOOLINSTALL: Werkzeug installieren -------------------------------------
// @msg DEX_TOOLINSTALL | Diese Message wird an <tr> geschickt, wenn ein zus�tzliches
// Werkzeug ducrh die Erweiterung installiert werden soll.
// @parm INSTALLTOOL | pInstallToolData | lParam enth�lt einen Pointer auf eine 
// Struktur vom Typ <t INSTALLDATA>.
// @rdesc Diese Message liefert den Werkzeug-ID des neu installierten Werkzeuges (0...)
// oder -1 im Fehlerfall.
// @comm Ein mit <m DEX_TOOLINSTALL> installiertes Werkzeug mu� durch die 
// Erweiterung mit der Message <m DEX_TOOLREMOVE> wieder entfernt werden, bevor
// diese entladen wird.<nl>Diese Message wird durch die Funktion 
// <f DEX_InstallTool> ausgel�st.
// @xref <t INSTALLDATA>, <m DEX_TOOLREMOVE>, <f DEX_InstallTool>
LRESULT ExtDirisWindow::OnDexInstallTool (HPROJECT hPr, LPARAM lParam)
{
#if defined(_DEBUG)
INSTALLTOOL *pIT = (INSTALLTOOL *)lParam;

	TX_ASSERT_POINTER(pIT, INSTALLTOOL);
	TX_ASSERT(sizeof(INSTALLTOOL) == pIT -> dwSize);
	TX_ASSERT(TIsValidString(pIT -> pDesc));
	TX_ASSERT(NULL != pIT -> hBmp);
#endif // _DEBUG

	return (LRESULT)InstallTool ((INSTALLTOOL *)lParam);
}

// DEX_TOOLREMOVE: Werkzeug entfernen -----------------------------------------
// @msg DEX_TOOLREMOVE | Diese Message wird an <tr> geschickt, um ein zus�tzlich
// installiertes Werkzeug wieder zu entfernen.
// @parm short | iToolID | lParam enth�lt das Werkzeug-ID, welches das zu entfernende
// Werkzeug identifiziert.
// @rdesc Diese Message liefert keinen R�ckgabewert.
// @comm Es sollten nur Werkzeuge entfernt werden, die vorher mit 
// <m DEX_TOOLINSTALL> installiert wurden. Auf jeden Fall mu� ein durch die 
// Erweiterung mit der Message <m DEX_TOOLINSTALL> installiertes Werkzeug 
// wieder entfernt werden, bevor diese entladen wird.<nl>Diese Message wird 
// durch die Funktion <f DEX_RemoveTool> ausgel�st.
// @xref <m DEX_TOOLINSTALL>, <f DEX_RemoveTool>
LRESULT ExtDirisWindow::OnDexRemoveTool (HPROJECT hPr, LPARAM lParam)
{
	return (LRESULT)RemoveTool ((short)lParam);
}

// DEX_QUERYACTIVEPROJECT: aktuelles Projekt abfragen -------------------------
// @msg DEX_QUERYACTIVEPROJECT | Diese Message wird an <tr> geschickt, um den 
// Namen des aktuellen Projektes abzufragen.
// @parm char * | pProjectName | lParam enth�lt einen Zeichenkettenpuffer, der 
// gro� genug sein mu�, um einen vollen Pfadnamen zu halten (_MAX_PATH). In diesem
// Puffer wird der Name des aktuellen Projektes abgelegt. 
// @rdesc Diese Message liefert den Wert von lParam, wenn kein Fehler aufgetreten 
// ist. Wenn kein aktives Projekt existiert oder im Fehlerfall liefert diese 
// Message NULL.
// @comm <tr> kann zur Zeit gleichzeitig lediglich ein Projekt ge�ffnet halten
// <m DEX_PROJECTOPEN>.<nl>Diese Message wird durch die Funktion 
// <f DEX_OpenProject> ausgel�st.
// Dieses Projekt ist somit auch das aktive Projekt. 
// @xref <m DEX_PROJECTOPEN>, <f DEX_OpenProject>
LRESULT ExtDirisWindow::OnDexQueryActiveProject (HPROJECT hPr, LPARAM lParam)
{
	TX_ASSERT(TIsValidAddress((void *)lParam, _MAX_PATH, true));	// writeable!
	
	if (HACTPROJECT == hPr)
		return (LRESULT)RetrieveActiveProject((char *)lParam);
	else {
		if (!IsValidActiveView())
			return LRESULT(NULL);
		return SUCCEEDED(DBO().GetDataSourceName (hPr, (char *)lParam));
	}
}

// DEX_QUERYACTIVEUSER: aktuellen NutzerNamen abfragen ------------------------
// @msg DEX_QUERYACTIVEUSER | Diese Message wird an <tr> geschickt, um den 
// Namen des aktuellen Nutzers abzufragen.
// @parm char * | pUserName | lParam enth�lt einen Zeichenkettenpuffer, der 
// gro� genug sein mu�, um einen vollen Pfadnamen zu halten (_MAX_PATH). In diesem
// Puffer wird der Name des aktuellen Nutzers abgelegt. 
// @rdesc Diese Message liefert den Wert von lParam, wenn kein Fehler aufgetreten 
// ist. Wenn kein aktives Projekt existiert oder im Fehlerfall liefert diese 
// Message NULL.
// @comm Der aktuelle Nutzername ist die Zeichenkette, die beim �ffnen des aktuellen
// Projektes <m DEX_PROJECTOPEN> als Identifikation im Feld Nutzername 
// angegeben wurde.<nl>Diese Message wird durch die Funktion 
// <f DEX_GetActiveUser> ausgel�st.
// @xref <m DEX_PROJECTOPEN>, <f DEX_GetActiveUser>
LRESULT ExtDirisWindow::OnDexQueryActiveUser (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(NULL);

GeoDB &rDB = DBO().DB(hPr);

	TX_ASSERT(TIsValidAddress((void *)lParam, strlen(rDB.GetUserName())+1, true));

	strcpy ((char *)lParam, rDB.GetUserName());
	return (LRESULT)lParam;
}

// DEX_QUERYROMODE: aktiven Schreib/LeseMode der GeoDB abfragen -----------------
// @msg DEX_QUERYROMODE | Diese Message wird an <tr> geschickt, um die Zugriffsrechte
// f�r das aktuelle Projekt abzufragen.
// @rdesc Diese Message liefert -1, wenn kein aktuelles Projekt existiert, ansonsten
// <t true> wenn das aktuelle Projekt schreibgesch�tzt ge�ffnet wurde 
// (<m DEX_QUERYROMODE>) und <t false>, wenn das aktuelle Projekt mit Schreibrechten
// er�ffnet worden ist.
// @comm Diese Message ben�tigt keine Parameter.<nl>Diese Message wird durch die 
// Funktion <f DEX_GetROMode> ausgel�st.
// @xref <m DEX_QUERYROMODE>, <f DEX_GetROMode>
LRESULT ExtDirisWindow::OnDexQueryROMode (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveProject())
		return LRESULT(-1);

#if defined(_FORCE_LEGACY_CODE)
	if (DBO().IsTRiASDBBased() || DBO().DB().IsComDB())
		return FALSE;		// StorageProjekte sind NIE R/O
	return (LRESULT)(DBO().DB().GetROMode());
#else
	if (HACTPROJECT == hPr) 
		return FALSE;		// Projekte sind nie wirklich schreibgesch�tzt
//		return DBO().GetROMode() ? TRUE : FALSE;

GeoDB &rDB = DBO().DB(hPr);

	if (!rDB.isOpened())
		return TRUE;

	if (rDB.IsTRiASDataSource() && rDB.IsComDB())
		return FALSE;		// 

	return (LRESULT)(rDB.GetROMode());
#endif // _FORCE_LEGACY_CODE
}
		
// DEX_QUERYGEODBVERSION: Abfrage der GeoDBVersion ----------------------------
// @msg DEX_QUERYGEODBVERSION | Diese Message wird an <tr> geschickt, um die 
// Versionsnummer des aktuellen Projektes zu erfragen.
// @rdesc Der R�ckgabewert enth�lt die Versionsnummer des aktuellen Projektes. Wenn
// kein aktuelles Projekt existiert, dann liefert diese Message 0;
// @comm Diese Message ben�tigt keine Parameter.<nl>Sie wird durch die 
// Funktion <f DEX_GetDBVersion> ausgel�st.
// @xref <f DEX_GetDBVersion>
LRESULT ExtDirisWindow::OnDexQueryGeoDBVersion (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(0);
		
	return (LRESULT)DBO().DB(hPr).GetDBVersion();
}


// DEX_QUERYACTIVEPBD: aktuelle PBD abfragen ----------------------------------
LRESULT ExtDirisWindow::OnQueryActivePBD (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(NULL);

#if defined(_FORCE_LEGACY_CODE
CActDB ActDB (DBO().PbdDB());

	if (!ActDB) return LRESULT(NULL);	// keine Pbd gegeben

	TX_ASSERT(TIsValidAddress((void *)lParam, strlen(DBO().PbdDB().GetDBName())+1, true));

	strcpy ((char *)lParam, DBO().PbdDB().GetDBName());
	return (LRESULT)lParam;
#else
	TX_ASSERT(FALSE);
	return NULL;		// not supported any more
#endif // defined(_FORCE_LEGACY_CODE)
}

// DEX_MODIFYPBDNAME: neuen PBDNamen f�r aktuelle GeoDB setzen ----------------
LRESULT ExtDirisWindow::OnModifyPBDName (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);

	TX_ASSERT(TIsValidString((char *)lParam));

	return DBO().InitPbd ((char *)lParam, true), true;
}

// DEX_QUERYMAINININAME: zentralen INI-DateiNamen liefern ---------------------
// @msg DEX_QUERYMAINININAME | Diese Message wird an <tr> geschickt, um den 
// Namen der zentralen Initialisierungsdatei abzufragen.
// @parm char * | pIniName | lParam enth�lt einen Zeichenkettenpuffer, der 
// gro� genug sein mu�, um einen vollen Dateinamen zu halten (_MAX_PATH Zeichen). 
// In diesem Puffer wird der Dateiname der Initialisierungsdatei abgelegt. 
// @rdesc Diese Message liefert den Wert von lParam, wenn kein Fehler aufgetreten 
// ist. Im Fehlerfall liefert diese Message NULL.
// @comm Diese Message wird durch die Funktion <f DEX_GetMainIniName> ausgel�st.
// @xref <f DEX_GetMainIniName>
LRESULT ExtDirisWindow::OnQueryMainIniName (HPROJECT hPr, LPARAM lParam)
{
	TX_ASSERT(TIsValidAddress((void *)lParam, _MAX_PATH, true));

	return (LRESULT)RetrieveMainProFile ((char *)lParam);
}

// DEX_QUERYACTIVEOBJECT: das aktivierte Objekt eines ORFensters --------------
LRESULT ExtDirisWindow::OnQueryActiveObject (HPROJECT hPr, LPARAM lParam)
{
	TX_ASSERT(NULL == (HWND)lParam ||
		  (IsWindow((HWND)lParam) && NULL != GetORWindow((HWND)lParam)));

	return GetSelectedObject((HWND)lParam);
}

// DEX_QUERYACTIVEORWINDOW: HWND des derzeit aktiven ORFensters liefern -------
LRESULT ExtDirisWindow::OnQueryActiveORWindow (HPROJECT hPr, LPARAM lParam)
{
HWND hWnd = GetActiveORWindow();
	
	TX_ASSERT(NULL == hWnd || IsWindow(hWnd));
	return (LRESULT)(void *)hWnd;
}

// DEX_QUERYCNTACTIVEOBJECTS: Anzahl der offenen ORFenster liefern (obsolete) -
LRESULT ExtDirisWindow::OnQueryCountORWindows (HPROJECT hPr, LPARAM lParam)
{
	return (LRESULT)GetORCount();
}

// DEX_QUERYCNTRECHERCHEDOBJECTS: Anzahl der Recherchierten Objket liefern (obsolete)
LRESULT ExtDirisWindow::OnQueryCountORObjects (HPROJECT hPr, LPARAM lParam)
{
	return (LRESULT)GetORObjCount();
}

// DEX_QUERYALLACTIVEOBJECTS: Alle aktivierten Objekte liefern (obsolete) -----
LRESULT ExtDirisWindow::OnQueryAllActiveObjects (HPROJECT hPr, LPARAM lParam)
{	
	return (LRESULT)GetAllSelectedObjects((long *)lParam);
}

// DEX_QUERYACTIVESIGHT: aktuelle Sicht liefern -------------------------------
// @msg DEX_QUERYACTIVESIGHT | Diese Message wird an <tr> geschickt, um den 
// Namen der aktuellen Ansicht des aktuellen Projektes abzufragen.
// @parm char * | pViewName | lParam enth�lt einen Zeichenkettenpuffer, der 
// gro� genug sein mu�, um einen Ansichtnamen zu halten (41 Zeichen). In diesem
// Puffer wird der Name der aktuellen Ansicht abgelegt. 
// @rdesc Diese Message liefert den Wert von lParam, wenn kein Fehler aufgetreten 
// ist. Wenn kein aktives Projekt existiert, keine aktuelle Ansicht ausgew�hlt ist
// oder im Fehlerfall liefert diese Message NULL.
// @comm Eine Ansicht kann mit Hilfe der Message <m DEX_SELNEWSIGHT> ausgew�hlt werden.
// <nl>Diese Message wird durch die Funktion <f DEX_GetActiveSight> ausgel�st.
// @xref <m DEX_SELNEWSIGHT>, <f DEX_GetActiveSight>
LRESULT ExtDirisWindow::OnQueryActiveView (HPROJECT hPr, LPARAM lParam)
{	
	if (!IsValidActiveView())
		return LRESULT(NULL);
	
	if (DBO().GetActiveSightName ((char *)lParam))
		return (LRESULT)lParam;

return NULL;
}
		
// DEX_QUERYOBJMERKMAL:	ein bestimmtes Objektmerkmal liefern ------------------
LRESULT ExtDirisWindow::OnQueryObjectFeature (HPROJECT hPr, LPARAM lParam)
{
	return OnQueryTextMerkmal (hPr, lParam);
}

// DEX_QUERYIDENTVISINFO: VisualisierungsInfo f�r Ident liefern ---------------
LRESULT ExtDirisWindow::OnQueryIdentVisInfo (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(EC_NOOPEN);
		
HANDLEVISINFO *pHVI = (HANDLEVISINFO *)lParam;
		
	TX_ASSERT_POINTER(pHVI, HANDLEVISINFO);

	if (!IsValidIdent(pHVI -> m_lIdent)) {
	// Ident nicht gegeben
		TX_ASSERT(IsValidONr(pHVI -> m_lONr));
		pHVI -> m_lIdent = DBO().RetrieveIdent (pHVI -> m_lONr);
	}

bool fIsDefault = false;

	if (NULL == pHVI -> m_pView) {	// aktuelle Sicht
		return (LRESULT)DBO().Idents().RetrieveVisInfo (
				pHVI -> m_lIdent, 
				pHVI -> m_iVTyp, *pHVI -> m_pVI, &fIsDefault);
	} else {
		TX_ASSERT(TIsValidString(pHVI -> m_pView));
		return (LRESULT)DBO().RetrieveVisInfo (
				pHVI -> m_pView, pHVI -> m_lIdent, 
				pHVI -> m_iVTyp, *pHVI -> m_pVI, &fIsDefault);
	}
}

// DEX_QUERYOBJCOLOR: ObjektFarbe liefern -------------------------------------
LRESULT ExtDirisWindow::OnQueryObjectColor (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(-1);

	TX_ASSERT(IsValidONr((LONG)lParam));

Color rC = DBO().GetObjectColor ((LONG)lParam);

	return LRESULT((COLORREF &)rC);
}

// DEX_QUERYOBJSTATUS: Liefern des ObjektStatus -------------------------------
LRESULT ExtDirisWindow::OnQueryObjectStatus (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(OS_Invalid);
		
	TX_ASSERT(IsValidONr((LONG)lParam));

	return (LRESULT)DBO().Shapes().RetrieveObjStatus ((long)lParam);
}

// DEX_QUERYOBJSTATISTIK: Liefern Info �ber Geometrie eines Objektes ----------
LRESULT ExtDirisWindow::OnQueryObjectStatistics (HPROJECT hPr, LPARAM lParam)
{	
	if (!IsValidActiveView())
		return LRESULT(EC_NOOPEN);
		
#if defined(_DEBUG)
	TX_ASSERT(DBO().IsValidProjectHandle(hPr));

OBJSTATISTIK *pOS = (OBJSTATISTIK *)lParam;

	TX_ASSERT(TIsValidAddress(pOS, sizeof(OBJSTATISTIK), true));
	TX_ASSERT(sizeof(OBJSTATISTIK) <= pOS -> dwSize);
	TX_ASSERT(IsValidONr(pOS -> lONr));
#endif // _DEBUG

	return (LRESULT)DBO().QueryObjStatistik (hPr, (OBJSTATISTIK *)lParam);
}

// DEX_QUERYOBJGEOMETRIE: Geometrie eines Objektes liefern --------------------
LRESULT ExtDirisWindow::OnQueryObjectGeometry (HPROJECT hPr, LPARAM lParam)
{		
	if (!IsValidActiveView())
		return LRESULT(EC_NOOPEN);

OBJGEOMETRIE *pOG = (OBJGEOMETRIE *)lParam;
IUnknown *pICS = NULL;

	if (sizeof(GEOMETRIEWITHCS) == pOG->dwSize) {
		pOG = ((GEOMETRIEWITHCS *)lParam) -> pOG;
		pICS = ((GEOMETRIEWITHCS *)lParam) -> pICS;
	}

	TX_ASSERT_POINTER(pOG, OBJCREATE);	// erster Teil der Struktur ist f�r alle gleich
	hPr = DBO().GetObjectDBHandle (pOG -> lONr, hPr);

#if defined(_DEBUG)
	TX_ASSERT(NULL == pICS || TIsValidIUnknown(pICS));
	TX_ASSERT(DBO().IsValidProjectHandle(hPr));
	if (sizeof(OBJGEOMETRIE) == pOG -> dwSize) {
		TX_ASSERT(TIsValidAddress(pOG, sizeof(OBJGEOMETRIE), true));
	}
	else if (sizeof(TEXTGEOMETRIE) == pOG -> dwSize || sizeof(TEXTGEOMETRIEEX) == pOG -> dwSize) {
	TEXTGEOMETRIE *pTG = (TEXTGEOMETRIE *)pOG;

		TX_ASSERT(TIsValidAddress(pTG, sizeof(TEXTGEOMETRIE), true));
		TX_ASSERT(OT_TEXT == pTG -> iObjTyp || OT_LABEL == pTG -> iObjTyp);
		TX_ASSERT(1L == pTG -> lCnt);
		if (pTG -> pText) {
			TX_ASSERT(0 < pTG -> iKCnt);
			TX_ASSERT(TIsValidAddress(pTG -> pText, pTG -> iKCnt, true));
		}
	}
	TX_ASSERT(IsValidONr(pOG -> lONr));

// Geometriefelder pr�fen
	if (pOG -> iFlags & OGConverted) {
		TX_ASSERT(TIsValidAddress(pOG -> pdblX, sizeof(double)*(pOG -> lCnt), true));
		TX_ASSERT(TIsValidAddress(pOG -> pdblY, sizeof(double)*(pOG -> lCnt), true));
	} else {
		TX_ASSERT(TIsValidAddress(pOG -> pdblX, sizeof(long)*(pOG -> lCnt), true));
		TX_ASSERT(TIsValidAddress(pOG -> pdblY, sizeof(long)*(pOG -> lCnt), true));
	}
#endif // _DEBUG

	return (LRESULT)DBO().QueryObjGeometrie (hPr, pOG, pICS);
}

// DEX_MODIFYOBJGEOMETRIE:	neue Geometrie f�r eine Objekt schreiben ------
// @msg DEX_MODIFYOBJGEOMETRIE | Mit dieser Message an <tr> ist es m�glich, Objekte
// zu erzeugen oder Objektgeometrien zu modifizieren.
// @parm OBJGEOMETRIE * | pObjGeometrie | lParam zeigt auf eine Struktur vom Typ
// <t OBJGEOMETRIE> bzw. der verwandten Strukturen <t OBJCREATE>, <t COPYGEOMETRIE>
// oder <t TEXTGEOMETRIE>. Je nach auszuf�hrender Funktion mu� die entsprechende
// Datenstruktur �bergeben werden. Unterschieden werden die einzelnen Strukturen �ber 
// den ersten Strukturmember <e OBJGEOMETRIE.dwSize>.
// @rdesc Diese Message liefert die Objektnummer des neu erzeugten bzw. modifizierten
// Objektes und im Fehlerfall -1L.
// @comm Die durchzuf�hrende Funktion wird durch die Datenstruktur und den 
// Strukturmember <e OBJGEOMETRIE.iFlags> bestimmt.
// @xref <f DEX_ModObjGeometrie>, <t OBJGEOMETRIE>, <t OBJCREATE>, <t COPYGEOMETRIE>,
// <t TEXTGEOMETRIE>
LRESULT ExtDirisWindow::OnModObjectGeometry (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(EC_NOOPEN);

OBJGEOMETRIE *pOG = (OBJGEOMETRIE *)lParam;
IUnknown *pICS = NULL;

	if (sizeof(GEOMETRIEWITHCS) == pOG->dwSize) {
		pOG = ((GEOMETRIEWITHCS *)lParam) -> pOG;
		pICS = ((GEOMETRIEWITHCS *)lParam) -> pICS;
	}

	TX_ASSERT_POINTER(pOG, OBJCREATE);	// erster Teil der Struktur ist f�r alle gleich
	hPr = DBO().GetObjectDBHandle (pOG -> lONr, hPr);

#if defined(_DEBUG)
	TX_ASSERT(NULL == pICS || TIsValidIUnknown(pICS));
	TX_ASSERT(DBO().IsValidProjectHandle(hPr));
	if (sizeof(OBJGEOMETRIE) == pOG -> dwSize) {
	// normales Objekt wegschreiben (Punkt, Linie oder Fl�che)
		TX_ASSERT_POINTER(pOG, OBJGEOMETRIE);
		TX_ASSERT(0 == (pOG -> iFlags & OGOverlay));

	// bei Modifizieren mu� Objekt existieren
		if (pOG -> iFlags & OGModObject) 
			TX_ASSERT(IsValidONr(pOG -> lONr));

	// GeometrieFelder pr�fen
		if (pOG -> iFlags & OGConverted) {
			TX_ASSERT(TIsValidAddress(pOG -> pdblX, sizeof(double)*(pOG -> lCnt), false));
			TX_ASSERT(TIsValidAddress(pOG -> pdblY, sizeof(double)*(pOG -> lCnt), false));
		} else {
			TX_ASSERT(TIsValidAddress(pOG -> pdblX, sizeof(long)*(pOG -> lCnt), false));
			TX_ASSERT(TIsValidAddress(pOG -> pdblY, sizeof(long)*(pOG -> lCnt), false));
		}
		if (pOG -> iObjTyp == OT_FLAECHE)	// Konturfeld
			TX_ASSERT(TIsValidAddress(pOG -> plCnt, sizeof(long)*(pOG -> iKCnt), false));
	} 
	else if (sizeof(TEXTGEOMETRIE) == pOG -> dwSize || sizeof(TEXTGEOMETRIEEX) == pOG -> dwSize) {
	// Textobjekt neu schreiben
	TEXTGEOMETRIE *pTG = (TEXTGEOMETRIE *)pOG;

		TX_ASSERT_POINTER(pTG, TEXTGEOMETRIE);
		TX_ASSERT(OT_TEXT == pTG -> iObjTyp || OT_LABEL == pTG -> iObjTyp);
		TX_ASSERT(0 == (pTG -> iFlags & OGOverlay));

	// bei Modifizieren mu� Objekt existieren
		if (pOG -> iFlags & OGModObject) 
			TX_ASSERT(IsValidONr(pOG -> lONr));

	// Geometrie des Textes pr�fen
		if (pTG -> pText) {
			TX_ASSERT(0 < pTG -> iKCnt);
			TX_ASSERT(TIsValidString(pTG -> pText));
		}
		if (pTG -> iFlags & OGConverted) {
			TX_ASSERT_POINTER(pTG -> pdblX, double);
			TX_ASSERT_POINTER(pTG -> pdblY, double);
		} else {
			TX_ASSERT_POINTER(pTG -> pdblX, long);
			TX_ASSERT_POINTER(pTG -> pdblY, long);
		}
	} 
	else if (sizeof(OBJCREATE) == pOG -> dwSize) {
	// neues Objekt erzeugen, evtl. bestehendes vorher l�schen
		TX_ASSERT_POINTER(pOG, OBJCREATE);
		TX_ASSERT(-1L == pOG -> lONr || 0L == pOG -> lONr || IsValidONr(pOG -> lONr));
	} 
	else if (sizeof(COPYGEOMETRIE) == pOG -> dwSize) {
	COPYGEOMETRIE *pCG = (COPYGEOMETRIE *)pOG;

		TX_ASSERT(pCG -> iFlags & OGOverlay);	// nur bei Overlay m�glich
		TX_ASSERT(IsValidONr(pCG -> lTargetONr));
	}
#endif // _DEBUG

#if defined(_FORCE_LEGACY_CODE)
	DBO().DB().SetDirty();
#endif // _FORCE_LEGACY_CODE
	if (DBO().ModObjGeometrie (hPr, pOG, pICS)) {
		TX_ASSERT(IsValidONr(pOG -> lONr));
#if defined(_FORCE_LEGACY_CODE)
		TX_ASSERT(EC_OKAY == TestObjekt(DBO().DB(hPr), pOG -> lONr, g_iKonsFlags));
#endif // _FORCE_LEGACY_CODE
		return LRESULT(true);
	}
	return LRESULT(false);
}

// DEX_QUERYKOBJECTRCODE: f�r KObjekt: RCode liefern --------------------------
LRESULT ExtDirisWindow::OnQueryKObjectRCode (HPROJECT hPr, LPARAM lParam)
{	
	if (!IsValidActiveView())
		return LRESULT(EC_NOOPEN);
		
	TX_ASSERT(IsValidONr((long)lParam));
#if defined(_USE_KOMPLEX_OBJECTS)
	return (LRESULT)DBO().Shapes().GetRCode (lParam);		
#else
	return 0L;
#endif // defined(_USE_KOMPLEX_OBJECTS)
}

// DEX_QUERYACTSIGHTCONTAINER:	aktuellen Bildschirmausschnitt liefern --------
LRESULT ExtDirisWindow::OnQueryActViewContainer (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);

	TX_ASSERT(TIsValidAddress((void *)lParam, 4*sizeof(long), true));

long *plCont = (long *)lParam;
ObjContainer OC = DBO().GetExtend();
KoOrd dX, dY;

	if (!DBO().ScaleCTF (OC.XMin(), OC.YMin(), &dX, &dY))
		return FALSE;
	plCont[0] = dX;
	plCont[2] = dY;

	if (!DBO().ScaleCTF (OC.XMax(), OC.YMax(), &dX, &dY))
		return FALSE;
	plCont[1] = dX;
	plCont[3] = dY;

	return TRUE;
}

// DEX_SETACTSIGHTCONTAINER: aktuellen Bildschirmausschnitt setzen ------------
LRESULT ExtDirisWindow::OnSetActViewContainer (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);
		
	TX_ASSERT(TIsValidAddress((void *)lParam, 4*sizeof(long), false));

long *plCont = (long *)lParam;
KoOrd dXMin, dXMax, dYMin, dYMax;

	if (!DBO().UnScaleCTF (plCont[0], plCont[2], &dXMin, &dYMin) ||
		!DBO().UnScaleCTF (plCont[1], plCont[3], &dXMax, &dYMax))
	{
		return FALSE;
	}

ObjContainer OC (dXMin, dXMax, dYMin, dYMax);
	
	return SetActViewContainer (OC);
}

// DEX_QUERYACTIVESELECTION: aktuelle Selektion liefern -----------------------
LRESULT ExtDirisWindow::OnQueryActSelection (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);
		
	TX_ASSERT(TIsValidAddress((void *)lParam, 4*sizeof(long), true));

ObjContainer OC;
BOOL fHasSelection = GetActViewContainer (OC);
long *plCont = (long *)lParam;
KoOrd dX, dY;

	if (!DBO().ScaleCTF (OC.XMin(), OC.YMin(), &dX, &dY))
		return FALSE;
	plCont[0] = dX;
	plCont[2] = dY;

	if (!DBO().ScaleCTF (OC.XMax(), OC.YMax(), &dX, &dY))
		return FALSE;
	plCont[1] = dX;
	plCont[3] = dY;

	return fHasSelection;
}

// DEX_QUERYACTIVESELECTIONEX: aktuelle Selektion liefern -----------------------
LRESULT ExtDirisWindow::OnQueryActSelectionEx (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);
		
GENERICCONTAINER *pGC = reinterpret_cast<GENERICCONTAINER *>(lParam);

	TX_ASSERT(TIsValidAddress(pGC, sizeof(GENERICCONTAINER), true));
	TX_ASSERT(NULL == pGC -> pICS || TIsValidIUnknown(pGC -> pICS));

ObjContainer OC;
BOOL fHasSelection = GetActViewContainer (OC);

	if (DBO().ConvertObjContainer(OC, pGC -> pICS)) {
		pGC -> dXMin = OC.XMin();
		pGC -> dXMax = OC.XMax();
		pGC -> dYMin = OC.YMin();
		pGC -> dYMax = OC.YMax();
		return fHasSelection;
	}
	return FALSE;
}

// DEX_QUERYWINDOWASDBCONTAINER:: FensterKoords als DB-Koords
LRESULT ExtDirisWindow::OnQueryWindowAsDbCoords (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);
		
	TX_ASSERT(TIsValidAddress((void *)lParam, 4*sizeof(long), true));

Rectangle Rc = m_pView->RealCanvasRect();
Punkt Pkt1 = DCtoOC (Rc.Left(), Rc.Bottom());
Punkt Pkt2 = DCtoOC (Rc.Right(), Rc.Top());
ObjContainer OC (Pkt1, Pkt2);

long *plCont = (long *)lParam;
KoOrd dX, dY;

	if (!DBO().ScaleCTF (OC.XMin(), OC.YMin(), &dX, &dY))
		return FALSE;
	plCont[0] = dX;
	plCont[2] = dY;

	if (!DBO().ScaleCTF (OC.XMax(), OC.YMax(), &dX, &dY))
		return FALSE;
	plCont[1] = dX;
	plCont[3] = dY;

	return TRUE;
}

// DEX_QUERYWINDOWASCONTAINER:: FensterKoords als Koords
LRESULT ExtDirisWindow::OnQueryWindowAsCoords (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);
		
GENERICCONTAINER *pGC = reinterpret_cast<GENERICCONTAINER *>(lParam);

	TX_ASSERT(TIsValidAddress(pGC, sizeof(GENERICCONTAINER), true));
	TX_ASSERT(NULL == pGC -> pICS || TIsValidIUnknown(pGC -> pICS));

Rectangle Rc = m_pView->RealCanvasRect();
Punkt Pkt1 = DCtoOC (Rc.Left(), Rc.Bottom());
Punkt Pkt2 = DCtoOC (Rc.Right(), Rc.Top());
ObjContainer OC (Pkt1, Pkt2);

	if (DBO().ConvertObjContainer(OC, pGC -> pICS)) {
		pGC -> dXMin = OC.XMin();
		pGC -> dXMax = OC.XMax();
		pGC -> dYMin = OC.YMin();
		pGC -> dYMax = OC.YMax();
		return TRUE;
	}
	return FALSE;
}

// DEX_ADDNEWIDENT: neuen Ident in die Verwaltung aufnehmen (intern) ----------
LRESULT ExtDirisWindow::OnAddNewIdent (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(EC_NOOPEN);
		
ADDNEWIDENT *pA = (ADDNEWIDENT *)lParam;

	TX_ASSERT_POINTER(pA, ADDNEWIDENT);
	TX_ASSERT(IsValidIdent(pA -> newIdent));

	return (LRESULT)DBO().AddNewIdent (pA -> newIdent, hPalette, pA -> iFlags, pA -> iTyp);
}

// DEX_USEDIDENT: Testen, ob Ident in dieser GeoDB verwendet ist --------------
LRESULT ExtDirisWindow::OnQueryIdentUsage (HPROJECT hPr, LPARAM lParam)
{	
	if (!IsValidActiveView())
		return LRESULT(false);
		
	if (!IsValidIdent((LONG)lParam))
		return FALSE;		// so tun, als ob nicht verwendet

	if (NULL == hPr) {
		hPr = DBO().GetIdentParentHandle ((long)lParam, TRUE);
		if (HACTCONNECTION == hPr)
			return FALSE;
	}
	else if (hPr != DBO().GetIdentParentHandle ((long)lParam, TRUE)) {
	// Ident aus anderer Datenquelle (kann beim Import passieren)
		return FALSE;
	}
	return (LRESULT)DBO().Idents().isUsed ((long)lParam);
}

// DEX_USEDMCODE: Testen, ob in dieser GeoDB MCode verwendet ist --------------
LRESULT ExtDirisWindow::OnQueryMCodeUsage (HPROJECT hPr, LPARAM lParam)
{
	return LRESULT(false);		// not implemented yet
}

// DEX_USEDRCODE: Testen, ob in dieser GeoDB RCode verwendet ist --------------
LRESULT ExtDirisWindow::OnQueryRCodeUsage (HPROJECT hPr, LPARAM lParam)
{
	return LRESULT(false);		// not implemented yet
}

// DEX_MODOBJIDENT: Ident eines Objektes �ndern -------------------------------
LRESULT ExtDirisWindow::OnModObjectIdent (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(EC_NOOPEN);
		
MODOBJIDENT *pMOI = (MODOBJIDENT *)lParam;

	TX_ASSERT_POINTER(pMOI, MODOBJIDENT);
	TX_ASSERT(3*sizeof(long) == pMOI -> dwSize || sizeof(MODOBJIDENT) == pMOI -> dwSize);
	TX_ASSERT(IsValidONr(pMOI -> lONr));
	TX_ASSERT(IsValidIdent(pMOI -> lNewIdent));

short iMode = pMOI -> dwSize > 3*sizeof(long) ? pMOI -> iMode : 0;

#if defined(_FORCE_LEGACY_CODE)
	DBO().DB().SetDirty();
#endif // _FORCE_LEGACY_CODE

long lMCodeNew = RetrieveObjNameMCodeIdent (DBO(), pMOI -> lNewIdent);
long lMCodeOld = RetrieveObjNameMCode (DBO(), pMOI -> lONr, true);

	if (DBO().ModIdent (pMOI -> lONr, pMOI -> lNewIdent, -1, iMode)) {
	// evtl. Objektnamen umh�ngen
		if (lMCodeNew != lMCodeNew) {
		char cbBuffer[4096];

			ReadTextMerkmal (TT_Objekt, pMOI -> lONr, lMCodeOld, cbBuffer, sizeof(cbBuffer));
			WriteTextMerkmal (TT_Objekt, pMOI -> lONr, lMCodeOld, NULL);
			WriteTextMerkmal (TT_Objekt, pMOI -> lONr, lMCodeNew, cbBuffer);
		}
	}
	return FALSE;
}

// DEX_MODIFYIDENTVISINFO: ObjektVisInfo modifizieren ----------------------------
LRESULT ExtDirisWindow::OnModObjectVisInfo (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(EC_NOOPEN);
		
HANDLEVISINFO *pHVI = (HANDLEVISINFO *)lParam;
		
	TX_ASSERT_POINTER(pHVI, HANDLEVISINFO);

	if (!IsValidIdent(pHVI -> m_lIdent)) {
	// Ident nicht gegeben
		TX_ASSERT(IsValidONr(pHVI -> m_lONr));
		pHVI -> m_lIdent = DBO().RetrieveIdent (pHVI -> m_lONr);
	}

	TX_ASSERT(IsValidIdent(pHVI -> m_lIdent));

#if defined(_FORCE_LEGACY_CODE)
	DBO().DB().SetDirty();
#endif // _FORCE_LEGACY_CODE
	if (VT_Default != pHVI -> m_iVTyp) {
		return (LRESULT)(EC_OKAY == DBO().ChangeVisInfo (
				pHVI -> m_lIdent, pHVI -> m_iVTyp, 
				*pHVI -> m_pVI, pHVI -> m_pView, -1,
				pHVI -> m_fFlags & DF_ForceImport
			)) ? TRUE : FALSE;
	} else {
		return (LRESULT)(EC_OKAY == DBO().ChangeVisInfo (
				pHVI -> m_lIdent, pHVI -> m_iVTyp, 
				*pHVI -> m_pVI, pHVI -> m_pView,
				((DVISINFO &)pHVI -> m_pVI).m_iDefTypes,
				pHVI -> m_fFlags & DF_ForceImport
			)) ? TRUE : FALSE;
	}
}
		
// DEX_MODIFYVISINFODIALOG: Dialoge zur VisInfoEinstellung -----------------------
LRESULT ExtDirisWindow::OnVisInfoDialog (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(EC_NOOPEN);
		
	return LRESULT(ChangeVisInfoExt ((HANDLEVISINFO *)lParam));
}
		
// DEX_MERGEKOBJECTS: KomplexObjekte zusammenfassen ---------------------------
LRESULT ExtDirisWindow::OnMergeKObjects (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(EC_NOOPEN);
		
MERGEKOBJECT *pM = (MERGEKOBJECT *)lParam;

#if defined(_FORCE_LEGACY_CODE)
	DBO().DB().SetDirty();
#endif // _FORCE_LEGACY_CODE

#if defined(_USE_KOMPLEX_OBJECTS)
	return (LRESULT)DBO().Shapes().MergeKObjects (DBO().DB(),
			pM -> mObj1, pM -> mObj2, 
			pM -> mIdent, pM -> mRCode, 
			pM -> mMerge
		);
#else
	return 0L;
#endif // defined(_USE_KOMPLEX_OBJECTS)
}

// DEX_DELETEOBJFROMKOBJECT: Objekt aus KObjekt herausl�schen ------------------
LRESULT ExtDirisWindow::OnDelObjectFromKObject (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(EC_NOOPEN);
		
DELETEKOBJECT *pK = (DELETEKOBJECT *)lParam;

#if defined(_FORCE_LEGACY_CODE)
	DBO().DB().SetDirty();
#endif // _FORCE_LEGACY_CODE
#if defined(_USE_KOMPLEX_OBJECTS)
	return (LRESULT)DBO().Shapes().DeleteONFromKObject (DBO().DB(), pK -> doKObj, pK -> doObj);
#else
	return 0L;
#endif // defined(_USE_KOMPLEX_OBJECTS)
}

// DEX_FLUSHALLMODIFICATIONS: aktuellen Zustand der GeoDB speichern --------------
LRESULT ExtDirisWindow::OnFlushModifications (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);

	return SaveGeoDB();
}

// DEX_REBUILDVIEW: Sicht neu generieren -------------------------------------
LRESULT ExtDirisWindow::OnRebuildView (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);
		
// Sicht nur neu generieren, wenn derzeit nicht gezeichnet wird
	if (DBO().isDrawing()) {
		GCancelFlag |= GCFAbort;	// Zeichnen abbrechen
//		DEX_PostRebuildSight();		// noch mal versuchen
		return LRESULT(false);
	}

ObjContainer OC = DBO().GetExtend();
LRESULT lResult = (LRESULT)DBO().ProcessMenuEvent (NULL, true);

	if (lResult) {
		LegendToRepaint = true;

	long lCont[4];
	KoOrd dX, dY;

		if (!DBO().ScaleCTF (OC.XMin(), OC.YMin(), &dX, &dY))
			return FALSE;
		lCont[0] = dX;
		lCont[2] = dY;

		if (!DBO().ScaleCTF (OC.XMax(), OC.YMax(), &dX, &dY))
			return FALSE;
		lCont[1] = dX;
		lCont[3] = dY;

		DEX_SetActiveSightContainer(lCont);

		m_pView -> SetShouldRedraw();
		m_pView -> InitWndScrollBars();		// Rollbalken zuschalten
		DEX_ReReadCaption();

		RePaint();
		if (OverViewCFlag && pOverView) 
			pOverView -> RePaint();
	}
	return lResult;
}

// DEX_REPAINTALL: gesamten Bildschirm neu zeichnen ---------------------------
LRESULT ExtDirisWindow::OnRePaintAll (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);

	LegendToRepaint = true;
#if !defined(WIN16)
	m_pView -> SetShouldRedraw();
	m_pView -> RePaint();
	if (lParam) 
		m_pView -> Update();
#else
	RePaint();
	if (OverViewCFlag && pOverView) pOverView -> RePaint();
#endif // WIN16
	return true;
}

// DEX_REPAINTRECT: RechtEck neu zeichnen -------------------------------------
LRESULT ExtDirisWindow::OnRePaintRect (HPROJECT hPr, LPARAM lParam)
{	
	if (!IsValidActiveView())
		return LRESULT(false);

	TX_ASSERT_POINTER((void *)lParam, Rectangle);

	LegendToRepaint = true;
#if !defined(WIN16)
	m_pView -> SetShouldRedraw (false);		// Bitmap nicht vollst�ndig l�schen
	m_pView -> RePaintRect (*(Rectangle *)lParam);
#else
	RePaintRect (*(Rectangle *)lParam);
#endif // WIN16
	return true;
}

// DEX_SELNEWSIGHT: neue Sicht ausw�hlen --------------------------------------
LRESULT ExtDirisWindow::OnSelectView (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);

	TX_ASSERT(TIsValidString((char *)lParam));
			
// Sicht soll umgeschaltet werden
	if (DEXN_SightToSelect ((char *)lParam))
		return false;	// jemand hat was dagegen

	DEX_RemoveAllORWnds();	// alle ORFenster weg, wenn neue Sicht

// Sicht umschalten
bool fResult = DBO().ActivateSight ((char *)lParam);

// Identifikatorbaum von nicht mehr ben�tigten tempor�ren Idents bereinigen
	DBO().RemoveTempIdents();
	CIdentifikator::ReleaseIgnoreTree();	// statische Funktion
	if (fResult) {
		TX_ASSERT(NULL != m_pView);
		m_pView -> SetShouldRedraw();
		DEXN_SightSelected ((char *)lParam);
		DEX_ReReadCaption();
	}
	return fResult;
}

// DEX_DELETEVIEW: Sicht l�schen ---------------------------------------------
LRESULT ExtDirisWindow::OnDeleteView (HPROJECT hPr, LPARAM lParam)
{		
	if (!IsValidActiveView())
		return LRESULT(EC_NOOPEN);
		
	TX_ASSERT(TIsValidString((char *)lParam));

#if defined(_FORCE_LEGACY_CODE)
	DBO().DB().SetDirty();
#endif // _FORCE_LEGACY_CODE
	return LRESULT(DBO().DeleteView (MainMenu(), (char *)lParam));
}
		
// DEX_CREATEOBJEKTINFO: ObjektRechercheFenster erzeugen und anzeigen ---------
LRESULT ExtDirisWindow::OnCreateORWindow (HPROJECT hPr, LPARAM lParam)
{	
#if defined(_DEBUG) && !defined(WIN16)
CREATEOBJEKTINFO *pCOI = (CREATEOBJEKTINFO *)lParam;

	TX_ASSERT_POINTER(pCOI, DWORD);
	if (sizeof(CREATEOBJEKTINFO) == pCOI -> dwSize) {
		TX_ASSERT_POINTER(pCOI, CREATEOBJEKTINFO);

	// entweder keine Objekte oder g�ltiges Feld
		if (NULL != pCOI -> plObjs && 0 != pCOI -> iNumObjs)
			TX_ASSERT(TIsValidAddress(pCOI -> plObjs, pCOI -> iNumObjs*sizeof(long), false));
	}
	else if (sizeof(CREATEOBJEKTINFOEX) == pCOI -> dwSize) {
	CREATEOBJEKTINFOEX *pCOIEx = (CREATEOBJEKTINFOEX *)pCOI;

		TX_ASSERT_POINTER(pCOIEx, CREATEOBJEKTINFOEX);
		TX_ASSERT(NULL == pCOIEx -> m_hWnd || IsWindow(pCOIEx -> m_hWnd));
		TX_ASSERT(NULL == pCOIEx -> m_pCmpProc || TIsValidAddress(pCOIEx -> m_pCmpProc, 1, false));

	// entweder keine Objekte oder g�ltiges Feld
		if (NULL != pCOI -> plObjs && 0 != pCOI -> iNumObjs)
			TX_ASSERT(TIsValidAddress(pCOI -> plObjs, pCOI -> iNumObjs*sizeof(long), false));
	} 
	else if (sizeof(CREATEOBJEKTINFOEX2) == pCOI ->dwSize) {
		TX_ASSERT(sizeof(CREATEOBJEKTINFOEX2) == pCOI -> dwSize);

	CREATEOBJEKTINFOEX2 *pCOIEx2 = (CREATEOBJEKTINFOEX2 *)pCOI;

	// entweder gleich NULL oder ein g�ltiges Interface
		TX_ASSERT(NULL == pCOIEx2 -> m_pIObjProp || TIsValidIUnknown(pCOIEx2 -> m_pIObjProp));

	// entweder keine Objekte oder g�ltiges Feld
		if (NULL != pCOI -> plObjs && 0 != pCOI -> iNumObjs)
			TX_ASSERT(TIsValidAddress(pCOI -> plObjs, pCOI -> iNumObjs*sizeof(long), false));
	}  
	else {
		TX_ASSERT(sizeof(CREATEOBJEKTINFOEX3) == pCOI -> dwSize);

	CREATEOBJEKTINFOEX3 *pCOIEx3 = (CREATEOBJEKTINFOEX3 *)pCOI;

	// entweder keine Objekte oder g�ltiges Feld
		TX_ASSERT(0 == pCOI -> iNumObjs);
		if (NULL != pCOIEx3 -> plObjs && 0 != pCOIEx3 -> lNumObjs) 
			TX_ASSERT(TIsValidAddress(pCOIEx3 -> plObjs, pCOIEx3 -> lNumObjs*sizeof(long), false));

	// entweder gleich NULL oder ein g�ltiges Interface
		TX_ASSERT(NULL == pCOIEx3 -> m_pIObjProp || TIsValidIUnknown(pCOIEx3 -> m_pIObjProp));
	}
	TX_ASSERT(TIsValidString(pCOI -> lpCaption));
#endif // _DEBUG

HWND hWnd = CreateObjektInfo ((CREATEOBJEKTINFO *)lParam);

	TX_ASSERT(IsWindow(hWnd));
	return (LRESULT)(void *)hWnd;
}

// DEX_READHEADER: GeoDB-HeaderEintrag lesen ----------------------------------
LRESULT ExtDirisWindow::OnReadHeader (HPROJECT hPr, LPARAM lParam)
{
	if (HACTPROJECT == hPr && !IsValidActiveProject())
		return LRESULT(EC_NOOPEN);
	if (HACTPROJECT != hPr && !IsValidActiveView())
		return LRESULT(EC_NOOPEN);
		
GEODBHDRENTRY *pHE = (GEODBHDRENTRY *)lParam;

#if defined(_DEBUG)
	TX_ASSERT(TIsValidAddress(pHE, sizeof(GEODBHDRENTRY), true));	// writeable!
	if (sizeof(GEODBHDRENTRY) != pHE -> dwSize) {
		TX_ASSERT(sizeof(GEODBHDRENTRYEX) == pHE -> dwSize);
		TX_ASSERT(0 == (((GEODBHDRENTRYEX *)pHE) -> dwFlags & ~HEADER_SYSTEMRO));
	}
	TX_ASSERT(TIsValidString(pHE -> hdrKey, sizeof(pHE -> hdrKey)));
	TX_ASSERT(TIsValidAddress(pHE -> lphdrText, pHE -> hdrTextLen, true));
#endif // _DEBUG

	return DBO().GetHeaderEntry (hPr, pHE);
}

// DEX_MODIFYHEADER: GeoDB-HeaderEintrag modifizieren/anlegen -----------------
LRESULT ExtDirisWindow::OnModifyHeader (HPROJECT hPr, LPARAM lParam)
{
	if (HACTPROJECT == hPr && !IsValidActiveProject())
		return LRESULT(EC_NOOPEN);
	if (HACTPROJECT != hPr && !IsValidActiveView())
		return LRESULT(EC_NOOPEN);
		
GEODBHDRENTRY *pHE = (GEODBHDRENTRY *)lParam;

#if defined(_DEBUG)
	TX_ASSERT_POINTER(pHE, GEODBHDRENTRY);
	if (sizeof(GEODBHDRENTRY) != pHE -> dwSize) {
		TX_ASSERT(sizeof(GEODBHDRENTRYEX) == pHE -> dwSize);
		TX_ASSERT(0 == (((GEODBHDRENTRYEX *)pHE) -> dwFlags & ~HEADER_SYSTEMRO));
	}
	TX_ASSERT(TIsValidString(pHE -> hdrKey, sizeof(pHE -> hdrKey)));
	TX_ASSERT(TIsValidString(pHE -> lphdrText));
#endif // _DEBUG

	return DBO().SetHeaderEntry (hPr, pHE);
}

// DEX_DELETEHEADER: GeoDB-HeaderEintrag l�schen ------------------------------
LRESULT ExtDirisWindow::OnDeleteHeader (HPROJECT hPr, LPARAM lParam)
{
	if (HACTPROJECT == hPr && !IsValidActiveProject())
		return LRESULT(EC_NOOPEN);
	if (HACTPROJECT != hPr && !IsValidActiveView())
		return LRESULT(EC_NOOPEN);
		
GEODBHDRENTRY *pHE = (GEODBHDRENTRY *)lParam;

#if defined(_DEBUG)
	TX_ASSERT_POINTER(pHE, GEODBHDRENTRY);
	TX_ASSERT(sizeof(GEODBHDRENTRY) == pHE -> dwSize);
	TX_ASSERT(TIsValidString(pHE -> hdrKey, sizeof(pHE -> hdrKey)));
#endif // _DEBUG

	return DBO().DeleteHeaderEntry (hPr, pHE);
}

// DEX_ENUMHEADER: GeoDB-HeaderEintr�ge enumerieren ---------------------------
LRESULT ExtDirisWindow::OnEnumHeader (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);
		
ENUMNOKEY *pENK = (ENUMNOKEY *)lParam;

	TX_ASSERT_POINTER(pENK, ENUMNOKEY);
	TX_ASSERT(TIsValidAddress(pENK -> eFcn, 1, false));

	return LRESULT(DBO().EnumHeaderData (hPr, (ENUMNOKEYCALLBACK)pENK -> eFcn, pENK -> ePtr));
}

// DEX_GETUNIQUEICODE: Unique Identifikator generieren ------------------------
LRESULT ExtDirisWindow::OnGetUniqueICode (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(-1);
		
	return LRESULT(DBO().GetUniqueICode(hPr, lParam ? true : false));
}

// DEX_GETUNIQUEMCODE: Unique MCode generieren --------------------------------
LRESULT ExtDirisWindow::OnGetUniqueMCode (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(-1);
		
	return LRESULT(DBO().GetUniqueMCode(hPr, lParam ? true : false));
}

// DEX_GETUNIQUERCODE: Unique RCode generieren --------------------------------
LRESULT ExtDirisWindow::OnGetUniqueRCode (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(-1);
		
	return LRESULT(DBO().GetUniqueRCode());
}

// DEX_GETUNIQUETEMPON: Unique ObjektNummer (tempor�res Objekt) generieren ----
LRESULT ExtDirisWindow::OnGetUniqueTempONr (HPROJECT hPr, LPARAM lParam)
{	
	if (!IsValidActiveView())
		return LRESULT(-1);
		
	return LRESULT(DBO().GetUniqueTempONr());
}

// DEX_QUERYACTSCALING: aktuelle Bildschirmvergr��erung liefern ---------------
LRESULT ExtDirisWindow::OnQueryActScaling (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);
		
	TX_ASSERT(TIsValidAddress((void *)lParam, sizeof(double), true));

	*(double *)lParam = DBO().M();

return true; 
}
		
// DEX_QUERYACTMASSTAB: aktuellen Ma�stab liefern -----------------------------
LRESULT ExtDirisWindow::OnQueryActMasstab (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);
		
	TX_ASSERT(TIsValidAddress((void *)lParam, sizeof(double), true));

double MF[2];

#if !defined(WIN16)
	DBO().EvalMasstab (m_pView, MF);
#else
	DBO().EvalMasstab (this, MF);
#endif // WIN16

//	*(double *)lParam = (MF[0] == 1.0) ? MF[1] : 1.0;
	*(double *)lParam = MF[1];

return true;
}

// DEX_CHANGEACTIVECOLOR: MarkierungsFarbe �ndern -----------------------------
LRESULT ExtDirisWindow::OnModActiveColor (HPROJECT hPr, LPARAM lParam)
{	
#if defined(_DEBUG)
CHANGEACTIVECOLOR *pCAC = (CHANGEACTIVECOLOR *)lParam;

	TX_ASSERT_POINTER(pCAC, CHANGEACTIVECOLOR);
	TX_ASSERT(sizeof(CHANGEACTIVECOLOR) == pCAC -> dwSize);
	TX_ASSERT(IsWindow(pCAC -> hWnd) && NULL != GetORWindow(pCAC -> hWnd));
	TX_ASSERT(IsValidONr(pCAC -> lONr));
#endif // _DEBUG

	return LRESULT(ChangeActiveColor ((CHANGEACTIVECOLOR *)lParam));
}
		

// Enumerationsfunktionen -----------------------------------------------------
// DEX_ENUMALLSIGHTS: alle Sichten liefern ---------------------------------------
LRESULT ExtDirisWindow::OnEnumViews (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);
		
ENUMNOKEY *pK = (ENUMNOKEY *)lParam;

	TX_ASSERT_POINTER(pK, ENUMNOKEY);
	TX_ASSERT(TIsValidAddress(pK -> eFcn, 1, false));

	return (LRESULT)DBO().EnumSights (pK -> eFcn, pK -> ePtr);
}

// DEX_ENUMSIGHTOBJECTS: alle (Einzel-)Objekte einer Sicht --------------------
LRESULT ExtDirisWindow::OnEnumViewObjects (HPROJECT hPr, LPARAM lParam)
{
	TX_ASSERT(FALSE);		// not supported any more (was never implemented)
	return FALSE;
//	if (!IsValidActiveView())
//		return LRESULT(false);
//		
//ENUMTEXTKEY *pK = (ENUMTEXTKEY *)lParam;
//
//	TX_ASSERT_POINTER(pK, ENUMTEXTKEY);
//	TX_ASSERT(TIsValidAddress(pK -> eFcn, 1, false));
//	TX_ASSERT(TIsValidString(pK -> eKey));
//
//Sicht locSicht (DBO().DB(), pK -> eKey);
//		
//	return (LRESULT)locSicht.EnumObjects (pK -> eFcn, pK -> ePtr);
}

// DEX_ENUMMERKMALE: alle Merkmale eines Objektes enumerieren -----------------
// @msg DEX_ENUMMERKMALE | Mit dieser Message an <tr> ist es m�glich alle 
// Objektmerkmale eines vorgegebenen Objektes zu enumerieren.
// @parm ENUMLONGKEY * | pEnumLongKey | lParam zeigt auf eine Struktur vom Typ
// <t ENUMLONGKEY>.
// @rdesc Diese Message liefert einen <t bool> - Wert, also im Normalfall <t true> 
// und Fehlerfall <t false>. Wird die Enumeration durch die Enumerationsfunktion 
// abgebrochen (indem diese Funktion <t false> an <tr> liefert, so ist der 
// R�ckgabewert der Message ebenfalls <t false>.
// @comm Diese Message wird durch die Funktion <f DEX_EnumObjektMerkmale> 
// ausgel�st.<nl>Durch diese Message werden lediglich die Merkmale enumeriert, 
// die in der Beschreibungs-Datenbasis als Objektmerkmale registriert sind und keine 
// Systemmerkmale sind. Werden alle Merkmale ben�tigt, so mu� die Message
// <m DEX_ENUMMERKMALEEX> eingesetzt werden.<par>Das Feld <e ENUMLONGKEY.eKey> mu�
// vor dem Aufruf der Message mit der Objektnummer des zu behandelnden Objektes 
// belegt werden.
// @xref <f DEX_EnumObjektMerkmale>, <m DEX_ENUMMERKMALEEX>, <t ENUMLONGKEY>
LRESULT ExtDirisWindow::OnEnumObjectFeatures (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);
		
ENUMLONGKEY *pK = (ENUMLONGKEY *)lParam;

	TX_ASSERT_POINTER(pK, ENUMLONGKEY);
	TX_ASSERT(TIsValidAddress(pK -> eFcn, 1, false));
	TX_ASSERT(IsValidONr(pK -> eKey));

	return DBO().EnumMiTextObject(pK -> eKey, pK -> eFcn, pK -> ePtr);
}

// DEX_ENUMMERKMALEIDENT: alle Merkmale eines Identifikators enumerieren ------
// @msg DEX_ENUMMERKMALEIDENT | Mit dieser Message an <tr> ist es m�glich alle 
// Identifikatormerkmale eines vorgegebenen Identifikators zu enumerieren.
// @parm ENUMLONGKEY * | pEnumLongKey | lParam zeigt auf eine Struktur vom Typ
// <t ENUMLONGKEY>.
// @rdesc Diese Message liefert einen <t bool> - Wert, also im Normalfall <t true> 
// und Fehlerfall <t false>. Wird die Enumeration durch die Enumerationsfunktion 
// abgebrochen (indem diese Funktion <t false> an <tr> liefert, so ist der 
// R�ckgabewert der Message ebenfalls <t false>.
// @comm Diese Message wird durch die Funktion <f DEX_EnumIdentMerkmale> 
// ausgel�st.<nl>Durch diese Message werden lediglich die Merkmale enumeriert, die in der 
// Beschreibungs-Datenbasis als Objektmerkmale registriert sind und keine 
// Systemmerkmale sind. Werden alle Merkmale ben�tigt, so mu� die Message
// <m DEX_ENUMMERKMALEIDENTEX> eingesetzt werden.<par>Das Feld <e ENUMLONGKEY.eKey> mu�
// vor dem Aufruf der Message mit dem Identifikator-Code des zu behandelnden 
// Identifikators belegt werden.
// @xref <f DEX_EnumIdentMerkmale>, <m DEX_ENUMMERKMALEIDENTEX>, <t ENUMLONGKEY>
LRESULT ExtDirisWindow::OnEnumIdentFeatures (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);
		
ENUMLONGKEY *pK = (ENUMLONGKEY *)lParam;

	TX_ASSERT_POINTER(pK, ENUMLONGKEY);
	TX_ASSERT(TIsValidAddress(pK -> eFcn, 1, false));
	TX_ASSERT(IsValidIdent(pK -> eKey));

#pragma TODO("Ansichtnamen hierherzaubern!")

	return (LRESULT)DBO().EnumMiTextIdent (NULL, pK -> eKey, pK -> eFcn, pK -> ePtr);
}

// DEX_ENUMMERKMALESICHT: alle Merkmale einer Sicht enumerieren ---------------
// @msg DEX_ENUMMERKMALESICHT | Mit dieser Message an <tr> ist es m�glich alle 
// Sichtmerkmale einer vorgegebenen Ansicht zu enumerieren.
// @parm ENUMTEXTKEY * | pEnumTextKey | lParam zeigt auf eine Struktur vom Typ
// <t ENUMTEXTKEY>.
// @rdesc Diese Message liefert einen <t bool> - Wert, also im Normalfall <t true> 
// und Fehlerfall <t false>. Wird die Enumeration durch die Enumerationsfunktion 
// abgebrochen (indem diese Funktion <t false> an <tr> liefert, so ist der 
// R�ckgabewert der Message ebenfalls <t false>.
// @comm Diese Message wird durch die Funktion <f DEX_EnumSichtMerkmale> 
// ausgel�st.<nl>Durch diese Message werden lediglich die Merkmale enumeriert, 
// die in der Beschreibungs-Datenbasis als Objektmerkmale registriert sind und keine 
// Systemmerkmale sind. Werden alle Merkmale ben�tigt, so mu� die Message
// <m DEX_ENUMMERKMALESICHTEX> eingesetzt werden.<par>Das Feld <e ENUMTEXTKEY.eKey> mu�
// vor dem Aufruf der Message mit dem Namen der zu behandelnden Ansicht 
// belegt werden.
// @xref <f DEX_EnumSichtMerkmale>, <m DEX_ENUMMERKMALESICHTEX>, <t ENUMTEXTKEY>
LRESULT ExtDirisWindow::OnEnumViewFeatures (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);
		
ENUMTEXTKEY *pK = (ENUMTEXTKEY *)lParam;

	TX_ASSERT_POINTER(pK, ENUMTEXTKEY);
	TX_ASSERT(TIsValidAddress(pK -> eFcn, 1, false));
	TX_ASSERT(TIsValidString(pK -> eKey));

	return (LRESULT)DBO().EnumMiTextSicht((LPCSTR)pK -> eKey, (ENUMNOKEYPROC)pK -> eFcn, pK -> ePtr);
}

// DEX_ENUMMERKMALEEX: Alle Merkmale eines Objektes enumerieren -----------------
// @msg DEX_ENUMMERKMALEEX | Mit dieser Message an <tr> ist es m�glich alle Merkmale
// eines Objektes zu enumerieren.
// @parm ENUMLONGKEYEX * | pEnumLongKeyEx | lParam zeigt auf eine Struktur vom Typ
// <t ENUMLONGKEYEX>.
// @rdesc Diese Message liefert einen <t bool> - Wert, also im Normalfall <t true> 
// und Fehlerfall <t false>. Wird die Enumeration durch die Enumerationsfunktion 
// abgebrochen (indem diese Funktion <t false> an <tr> liefert, so ist der 
// R�ckgabewert der Message ebenfalls <t false>.
// @comm Diese Message wird durch die Funktion <f DEX_EnumObjektMerkmaleEx> 
// ausgel�st.<nl>Im Unterschied zur Message <m DEX_ENUMMERKMALE> ist es m�glich 
// alle Merkmale zu enumerieren, die das vorgegebene Objekt besitzt.<par>Das 
// Feld <e ENUMLONGKEYEX.eKey> mu� vor dem Aufruf der Message mit der Objektnummer 
// des zu behandelnden Objektes belegt werden.<par>Das 
// Feld <e ENUMLONGKEYEX.eData> der Struktur <t ENUMLONGKEYEX> kann f�r diese Message einen 
// der folgenden Werte oder deren Kombination annehmen:
// @flag MPSystemFeatures | Es sollen zus�tzliche alle Merkmale enumeriert werden,
// die in der Beschreibungs-Datenbasis als Systemmerkmale gekennzeichnet sind.
// @flag MPAllFeatures | Es sollen alle Merkmale des vorgegebenen Objektes enumeriert
// werden, selbst, unabh�ngig davon, ob diese in der Beschreibungs-Datenbasis 
// als Objektmerkmale definiert sind oder nicht.
// @comm Der an die zu rufende Funktion (<f ENUMLONGKEYEXPROC>) �bergebene 2. Parameter
// <p dwData> kann folgende Werte oder eine Kombination dieser annehmen:
// @flag MPSystemFeatures | Dieser Merkmalscode ist als Systemmerkmal registriert.
// @flag MPObjectFeature | Dieser Merkmalscode ist als Objektmerkmalscode registriert.
// @flag MPViewFeature | Dieser Merkmalscode ist als Identifikatormerkmalscode registriert.
// @flag MPIdentFeature | Dieser Merkmalscode ist als Sichtmerkmalscode registriert.
// @xref <f DEX_EnumObjektMerkmaleEx>, <m DEX_ENUMMERKMALE>, <t ENUMLONGKEYEX>
LRESULT ExtDirisWindow::OnEnumObjectFeaturesEx (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);
		
ENUMLONGKEYEX *pK = (ENUMLONGKEYEX *)lParam;

	TX_ASSERT_POINTER(pK, ENUMLONGKEYEX);
	TX_ASSERT(TIsValidAddress(pK -> eFcn, 1, false));
	TX_ASSERT(IsValidONr(pK -> eKey));

	return DBO().EnumMiTextObjectEx(pK -> eKey, pK -> eData, pK -> eFcn, pK -> ePtr);
}

///////////////////////////////////////////////////////////////////////////////
// DEX_ENUMMERKMALECLASSEX: Alle Merkmale eines Objektes einer Objektklasse enumerieren 
// @msg DEX_ENUMMERKMALECLASSEX | Mit dieser Message an <tr> ist es m�glich alle Merkmale
// eines Merkmale eines Objektes einer Objektklasse zu enumerieren.
// @parm ENUMLONGKEYEX * | pEnumLongKeyEx | lParam zeigt auf eine Struktur vom Typ
// <t ENUMLONGKEYEX>.
// @rdesc Diese Message liefert einen <t bool> - Wert, also im Normalfall <t true> 
// und Fehlerfall <t false>. Wird die Enumeration durch die Enumerationsfunktion 
// abgebrochen (indem diese Funktion <t false> an <tr> liefert, so ist der 
// R�ckgabewert der Message ebenfalls <t false>.
// @comm Diese Message wird durch die Funktion <f DEX_EnumObjektMerkmaleClassEx> 
// ausgel�st.
// @xref <f DEX_EnumObjektMerkmaleClassEx>, <t ENUMLONGKEYEX>
LRESULT ExtDirisWindow::OnEnumObjectFeaturesClassEx (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);
		
ENUMLONGKEYEX *pK = (ENUMLONGKEYEX *)lParam;

	TX_ASSERT_POINTER(pK, ENUMLONGKEYEX);
	TX_ASSERT(TIsValidAddress(pK -> eFcn, 1, false));
	TX_ASSERT(IsValidIdent(pK -> eKey));

	return DBO().EnumMiTextObjectClassEx(pK -> eKey, pK -> eData, pK -> eFcn, pK -> ePtr);
}

// DEX_ENUMMERKMALEIDENTEX: alle Merkmale eines Identifikators enumerieren ------
// @msg DEX_ENUMMERKMALEIDENTEX | Mit dieser Message an <tr> ist es m�glich alle Merkmale
// eines Identifikators zu enumerieren.
// @parm ENUMLONGKEYEX * | pEnumLongKeyEx | lParam zeigt auf eine Struktur vom Typ
// <t ENUMLONGKEYEX>.
// @rdesc Diese Message liefert einen <t bool> - Wert, also im Normalfall <t true> 
// und Fehlerfall <t false>. Wird die Enumeration durch die Enumerationsfunktion 
// abgebrochen (indem diese Funktion <t false> an <tr> liefert, so ist der 
// R�ckgabewert der Message ebenfalls <t false>.
// @comm Diese Message wird durch die Funktion <f DEX_EnumIdentMerkmaleEx> 
// ausgel�st.<nl>Im Unterschied zur Message <m DEX_ENUMMERKMALEIDENT> ist es m�glich 
// alle Merkmale zu enumerieren, die der vorgegebene Identifikator besitzt.<par>Das 
// Feld <e ENUMLONGKEYEX.eKey> mu� vor dem Aufruf der Message mit dem 
// Identifikator-Code des zu behandelnden Objektes belegt werden.<par>Das 
// Feld <e ENUMLONGKEYEX.eData> der Struktur <t ENUMLONGKEYEX> kann f�r diese Message einen der 
// folgenden Werte oder deren Kombination annehmen:
// @flag MPSystemFeatures | Es sollen zus�tzliche alle Merkmale enumeriert werden,
// die in der Beschreibungs-Datenbasis als Systemmerkmale gekennzeichnet sind.
// @flag MPAllFeatures | Es sollen alle Merkmale des vorgegebenen Identifikators
// enumeriert werden, selbst, unabh�ngig davon, ob diese in der 
// Beschreibungs-Datenbasis als Identifikatormerkmale definiert sind 
// oder nicht.
// @comm Der an die zu rufende Funktion (<f ENUMLONGKEYEXPROC>) �bergebene 2. Parameter
// <p dwData> kann folgende Werte oder eine Kombination dieser annehmen:
// @flag MPSystemFeatures | Dieser Merkmalscode ist als Systemmerkmal registriert.
// @flag MPObjectFeature | Dieser Merkmalscode ist als Objektmerkmalscode registriert.
// @flag MPViewFeature | Dieser Merkmalscode ist als Identifikatormerkmalscode registriert.
// @flag MPIdentFeature | Dieser Merkmalscode ist als Sichtmerkmalscode registriert.
// @xref <f DEX_EnumIdentMerkmaleEx>, <m DEX_ENUMMERKMALEIDENT>, <t ENUMLONGKEYEX>
LRESULT ExtDirisWindow::OnEnumIdentFeaturesEx (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);
		
ENUMLONGKEYEX *pK = (ENUMLONGKEYEX *)lParam;


	TX_ASSERT_POINTER(pK, ENUMLONGKEYEX);
	TX_ASSERT(TIsValidAddress(pK -> eFcn, 1, false));
	TX_ASSERT(IsValidIdent(pK -> eKey));

#pragma TODO("Ansichtnamen hierherzaubern!")

	return (LRESULT)DBO().EnumMiTextIdentEx (NULL, pK -> eKey, FEATURETYPE(pK -> eData), pK -> eFcn, pK -> ePtr);
}

// DEX_ENUMMERKMALESICHTEX: alle Merkmale einer Sicht enumerieren ---------------
// @msg DEX_ENUMMERKMALESICHTEX | Mit dieser Message an <tr> ist es m�glich alle Merkmale
// einer Ansicht zu enumerieren.
// @parm ENUMTEXTKEYEX * | pEnumTextKeyEx | lParam zeigt auf eine Struktur vom Typ
// <t ENUMTEXTKEYEX>.
// @rdesc Diese Message liefert einen <t bool> - Wert, also im Normalfall <t true> 
// und Fehlerfall <t false>. Wird die Enumeration durch die Enumerationsfunktion 
// abgebrochen (indem diese Funktion <t false> an <tr> liefert, so ist der 
// R�ckgabewert der Message ebenfalls <t false>.
// @comm Diese Message wird durch die Funktion <f DEX_EnumSichtMerkmaleEx> 
// ausgel�st.<nl>Im Unterschied zur Message <m DEX_ENUMMERKMALESICHT> ist es m�glich 
// alle Merkmale zu enumerieren, die der vorgegebene Identifikator besitzt.<par>Das 
// Feld <e ENUMTEXTKEYEX.eKey> mu� vor dem Aufruf der Message mit dem Namen der 
// zu behandelnden Ansicht belegt werden.<par>Das 
// Feld <e ENUMTEXTKEYEX.eData> der Struktur <t ENUMTEXTKEYEX> kann f�r diese Message einen der 
// folgenden Werte oder deren Kombination annehmen:
// @flag MPSystemFeatures | Es sollen zus�tzliche alle Merkmale enumeriert werden,
// die in der Beschreibungs-Datenbasis als Systemmerkmale gekennzeichnet sind.
// @flag MPAllFeatures | Es sollen alle Merkmale der vorgegebenen Sicht
// enumeriert werden, selbst, unabh�ngig davon, ob diese in der 
// Beschreibungs-Datenbasis als Sichtmerkmale definiert sind oder nicht.
// @comm Der an die zu rufende Funktion (<f ENUMTEXTKEYEXPROC>) �bergebene 2. Parameter
// <p dwData> kann folgende Werte oder eine Kombination dieser annehmen:
// @flag MPSystemFeatures | Dieser Merkmalscode ist als Systemmerkmal registriert.
// @flag MPObjectFeature | Dieser Merkmalscode ist als Objektmerkmalscode registriert.
// @flag MPViewFeature | Dieser Merkmalscode ist als Identifikatormerkmalscode registriert.
// @flag MPIdentFeature | Dieser Merkmalscode ist als Sichtmerkmalscode registriert.
// @xref <f DEX_EnumSichtMerkmaleEx>, <m DEX_ENUMMERKMALESICHT>, <t ENUMTEXTKEYEX>
LRESULT ExtDirisWindow::OnEnumViewFeaturesEx (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);
		
ENUMTEXTKEYEX *pK = (ENUMTEXTKEYEX *)lParam;

	TX_ASSERT_POINTER(pK, ENUMTEXTKEYEX);
	TX_ASSERT(TIsValidAddress(pK -> eFcn, 1, false));
	TX_ASSERT(TIsValidString(pK -> eKey));

	return (LRESULT)DBO().EnumMiTextSichtEx(LPCSTR(pK -> eKey), pK -> eData, (ENUMNOKEYEXPROC)pK -> eFcn, pK -> ePtr);
}

// DEX_ENUMALLMCODES: alle MCodes der GeoDB enumerieren -----------------------
LRESULT ExtDirisWindow::OnEnumFeatureCodes (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);
		
ENUMNOKEY *pK = (ENUMNOKEY *)lParam;

	TX_ASSERT_POINTER(pK, ENUMNOKEY);
	TX_ASSERT(TIsValidAddress(pK -> eFcn, 1, false));

	return (LRESULT)DBO().EnumAllFeatures ((ENUMNOKEYLONGPROC)pK -> eFcn, pK -> ePtr);
}

// DEX_ENUMALLMCODESEX: alles MCodes der GeoDB enumerieren mit Optionen -------
LRESULT ExtDirisWindow::OnEnumFeatureCodesEx (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);
		
ENUMNOKEYEX *pK = (ENUMNOKEYEX *)lParam;

	TX_ASSERT_POINTER(pK, ENUMNOKEY);
	TX_ASSERT(TIsValidAddress(pK -> eFcn, 1, false));

	return (LRESULT)DBO().EnumAllFeaturesEx ((ENUMNOKEYLONGEXPROC)pK -> eFcn, pK -> eData, pK -> ePtr);
}

// DEX_ENUMSELECTEDOBJECTS: alle recherchierten Objekte enumerieren -----------
LRESULT ExtDirisWindow::OnEnumSelObjects (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);
		
ENUMLONGKEY *pK = (ENUMLONGKEY *)lParam;

	TX_ASSERT_POINTER(pK, ENUMLONGKEY);
	TX_ASSERT(TIsValidAddress(pK -> eFcn, 1, false));
// entweder alle ORFenster (eKey == NULL oder g�ltiges ORFenster
	TX_ASSERT(NULL == pK -> eKey || 
	         (IsWindow((HWND)pK -> eKey) && NULL != GetORWindow((HWND)pK -> eKey)));

	return (LRESULT)EnumSelectedObjects (
			(ENUMNOKEYLONGPROC)pK -> eFcn, pK -> ePtr, 
			(HWND)pK -> eKey
		);
}

// DEX_RECHERCHEDOBJECTS: alle Objekte in ORFenstern enumerieren --------------
LRESULT ExtDirisWindow::OnEnumAllORObjects (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);
		
ENUMLONGKEY *pK = (ENUMLONGKEY *)lParam;

	TX_ASSERT_POINTER(pK, ENUMLONGKEY);
	TX_ASSERT(TIsValidAddress(pK -> eFcn, 1, false));
// entweder alle ORFenster (eKey == NULL oder g�ltiges ORFenster
	TX_ASSERT(NULL != pK -> eKey || 
	         (IsWindow((HWND)pK -> eKey) && NULL != GetORWindow((HWND)pK -> eKey)));

	return (LRESULT)EnumAllObjects (
		(ENUMNOKEYLONGPROC)pK -> eFcn, pK -> ePtr,
		(HWND)pK -> eKey);
}

// DEX_ENUMKOMPLOBJECTS: alle Objekte eines KomplexObjektes enumerieren -------
LRESULT ExtDirisWindow::OnEnumKObjectMember (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);
		
ENUMLONGKEY *pK = (ENUMLONGKEY *)lParam;

	TX_ASSERT_POINTER(pK, ENUMLONGKEY);
	TX_ASSERT(TIsValidAddress(pK -> eFcn, 1, false));
	TX_ASSERT(IsValidONr(pK -> eKey));

#if defined(_USE_KOMPLEX_OBJECTS)
	return (LRESULT)DBO().Shapes().EnumKObjects (
			pK -> eKey, pK -> eFcn, pK -> ePtr);
#else
	return FALSE;
#endif // defined(_USE_KOMPLEX_OBJECTS)
}

#if defined(_FORCE_LEGACY_CODE)
// DEX_PROJECTOPEN: Neues Projekt er�ffnen ------------------------------------
LRESULT ExtDirisWindow::OnOpenProject (HPROJECT hPr, LPARAM lParam)
{
TRIAS_OPEN *pTO = (TRIAS_OPEN *)lParam;

	TX_ASSERT_POINTER(pTO, TRIAS_OPEN);
	TX_ASSERT(sizeof(TRIAS_OPEN) == pTO -> dwSize);
	TX_ASSERT(TIsValidString(pTO -> lpProject));
	TX_ASSERT(NULL == pTO -> lpUser || TIsValidString(pTO -> lpUser));
	TX_ASSERT(NULL == pTO -> lpPassWord || TIsValidString(pTO -> lpPassWord));

#if !defined(WIN16)
LRESULT iResult = EC_OKAY;
CREATEVIEW_RESULT rgRes = CreateView (pTO -> lpProject, 
				pTO -> lpUser, pTO -> lpPassWord, pTO -> iMode);
		
	if (CREATEVIEW_RESULT_FAILED == rgRes)
		return EC_NOOPEN;
#else
	if (IsValidActiveView()) {	// evtl. Projekt schlie�en
		if (!(pTO -> iMode & OM_NotCloseOpen)) {
		ErrCode RC;
	
			DBASSERT (CloseDB());
			DELETE (DRO);
			UnLoadLocalExtensions();
		}	
	}

LRESULT iResult = (LRESULT)OpenDB (pTO -> lpProject, 
				   pTO -> lpUser, 
				   pTO -> lpPassWord, 
				   pTO -> iMode);
	if (iResult != EC_OKAY)
		return iResult;		// Fehler
	
	InitProjectMenu();
	ReReadCaption();
	LoadLocalExtensions();
#endif // WIN16

	return LRESULT(EC_OKAY);
}
#endif // defined(_FORCE_LEGACY_CODE)

#if !defined(WIN16)
// DEX_PROJECTOPENEX: Neues Projekt er�ffnen ------------------------------------
LRESULT ExtDirisWindow::OnOpenProjectEx (HPROJECT hPr, LPARAM lParam)
{
#if defined(_FORCE_LEGACY_CODE)
TRIAS_OPENEX *pTO = (TRIAS_OPENEX *)lParam;

	TX_ASSERT_POINTER(pTO, TRIAS_OPENEX);
	TX_ASSERT(sizeof(TRIAS_OPENEX) == pTO -> dwSize);
	TX_ASSERT(TIsValidString(pTO -> pcProject));
	TX_ASSERT(NULL == pTO -> pcUser || TIsValidString(pTO -> pcUser));
	TX_ASSERT(NULL == pTO -> pcPassWord || TIsValidString(pTO -> pcPassWord));

LRESULT iResult = EC_OKAY;
CREATEVIEW_RESULT rgRes = CreateView (pTO -> pcProject, 
				pTO -> pcUser, pTO -> pcPassWord, pTO -> iMode, pTO -> dwMode);
		
	if (CREATEVIEW_RESULT_FAILED == rgRes)
		return EC_NOOPEN;

	return LRESULT(EC_OKAY);
#else
	return LRESULT(EC_OKAY);		// not here any more (FakeMFC)
#endif // defined(_FORCE_LEGACY_CODE)
}
#endif // WIN16

// DEX_PROJECTCLOSE: derzeit ge�ffnetes Projekt abschlie�en -------------------
LRESULT ExtDirisWindow::OnCloseProject (HPROJECT hPr, LPARAM lParam)
{
#if !defined(WIN16)
	return LRESULT(doCloseDocumentNow());
#else
	if (CloseDB (true, HPROJECT(lParam)) != EC_OKAY)
		return LRESULT(false);

	DELETE (DRO);
	UnLoadLocalExtensions();

return LRESULT(true);
#endif // WIN16
}

// DEX_SETATTRIBUTES: Zeichenattribute setzen (intern) ------------------------
LRESULT ExtDirisWindow::OnSetAttributes (HPROJECT hPr, LPARAM lParam)
{	
	if (!IsValidActiveView())
		return LRESULT(0);
	TX_ASSERT(IsValidONr((LONG)lParam));

	return (LRESULT)DBO().PresetAttributes (m_pView, (long)lParam);
}

// DEX_RESETATTRIBUTES:	Zeichenattribute r�cksetzen (intern) ------------------
LRESULT ExtDirisWindow::OnResetAttributes (HPROJECT hPr, LPARAM lParam)
{
RESETATTRDATA *pRAD = (RESETATTRDATA *)lParam;

	TX_ASSERT_POINTER(pRAD, RESETATTRDATA);
	TX_ASSERT(IsValidONr(pRAD -> lONr));
	TX_ASSERT(VI_NotChanged == pRAD -> pVI || VI_OtherType == pRAD -> pVI ||
		  NULL == pRAD -> pVI || TIsValidAddress(pRAD -> pVI, sizeof(VisInfo), false));

	return (LRESULT)DBO().ResetAttributes (pRAD -> lONr, (VisInfo *)pRAD -> pVI);
}

// PBDVerwaltung --------------------------------------------------------------
// DEX_BEGINPBDTRANSACTION: Transaction f�r PBD beginnen ----------------------
LRESULT ExtDirisWindow::OnBeginPBDTransaction (HPROJECT hPr, LPARAM lParam)
{	
	if (!IsValidActiveView())
		return LRESULT(EC_NOOPEN);
		
	return (LRESULT)DBO().BeginTransaction(hPr);
}

// DEX_BREAKPBDTRANSACTION: Transaction f�r PBD abbrechen ---------------------
LRESULT ExtDirisWindow::OnBreakPBDTransaction (HPROJECT hPr, LPARAM lParam)
{	
	if (!IsValidActiveView())
		return LRESULT(EC_NOOPEN);
		
	return (LRESULT)DBO().BreakTransaction(hPr);
}

// DEX_ENDPBDTRANSACTION: Transaction f�r PBD erfolgreich abschlie�en ---------
LRESULT ExtDirisWindow::OnEndPBDTransaction (HPROJECT hPr, LPARAM lParam)
{		
	if (!IsValidActiveView())
		return LRESULT(EC_NOOPEN);
		
	return (LRESULT)DBO().EndTransaction(hPr);
}

// DEX_QUERYPBDVERSION: Version de PBD abfragen -------------------------------
LRESULT ExtDirisWindow::OnQueryPBDVersion (HPROJECT hPr, LPARAM lParam)
{		
	if (!IsValidActiveView())
		return 0L;
		
	return (LRESULT)DBO().GetPBDVersion(hPr);
}

// DEX_QUERYPBDDATA: PBD-Eintrag lesen ----------------------------------------
LRESULT ExtDirisWindow::OnQueryPBDData (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(EC_NOOPEN);
		
#if defined(_DEBUG)
PBDDATA *pPD = (PBDDATA *)lParam;

	TX_ASSERT_POINTER(pPD, DWORD);
	if (sizeof(PBDMERKMAL) == pPD -> dwSize || sizeof(PBDMERKMALEX) == pPD -> dwSize) {
		TX_ASSERT(TIsValidAddress(pPD, pPD -> dwSize, true));
		TX_ASSERT(IsValidMCode(pPD -> pbdCode));
	} else if (sizeof(PBDRELATION) == pPD -> dwSize) {
		TX_ASSERT(TIsValidAddress(pPD, sizeof(PBDRELATION), true));
		TX_ASSERT(IsValidRCode(pPD -> pbdCode));
	} else {
		TX_ASSERT(sizeof(PBDDATA) == pPD -> dwSize);
		TX_ASSERT(TIsValidAddress(pPD, sizeof(PBDDATA), true));
//		TX_ASSERT_POINTER(pPD, PBDDATA);
	}
	TX_ASSERT(NULL == pPD -> pbdKText || TIsValidAddress(pPD -> pbdKText, pPD -> pbdKTextLen, true));
	TX_ASSERT(NULL == pPD -> pbdLText || TIsValidAddress(pPD -> pbdLText, pPD -> pbdLTextLen, true));
#endif // _DEBUG

	return (LRESULT)DBO().GetPBDData (hPr, (PBDDATA *)lParam);
}

// DEX_MODPBDDATA: PBD-Eintrag schreiben/anlegen ------------------------------
LRESULT ExtDirisWindow::OnModPBDData (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(EC_NOOPEN);
		
#if defined(_DEBUG)
PBDDATA *pPD = (PBDDATA *)lParam;

	TX_ASSERT_POINTER(pPD, DWORD);
// #HK980415: jetzt Beschreibbarkeit testen, da ggf. Handle zur�ckgeliefert werden kann
	if (sizeof(PBDMERKMAL) == pPD -> dwSize || sizeof(PBDMERKMALEX) == pPD -> dwSize) {
//		TX_ASSERT_POINTER(pPD, PBDMERKMAL);
		TX_ASSERT(TIsValidAddress(pPD, pPD -> dwSize, true));	
		TX_ASSERT(IsValidMCode(pPD -> pbdCode));
	} else if (sizeof(PBDRELATION) == pPD -> dwSize) {
//		TX_ASSERT_POINTER(pPD, PBDRELATION);
		TX_ASSERT(TIsValidAddress(pPD, sizeof(PBDRELATION), true));	
		TX_ASSERT(IsValidRCode(pPD -> pbdCode));
	} else {
//		TX_ASSERT_POINTER(pPD, PBDDATA);
		TX_ASSERT(sizeof(PBDDATA) == pPD -> dwSize);
		TX_ASSERT(TIsValidAddress(pPD, sizeof(PBDDATA), true));	
	}
	TX_ASSERT(NULL == pPD -> pbdKText || TIsValidString(pPD -> pbdKText));
	TX_ASSERT(NULL == pPD -> pbdLText || TIsValidString(pPD -> pbdLText));
#endif // _DEBUG

	return (LRESULT)DBO().ModPBDData (hPr, (PBDDATA *)lParam);
}

// DEX_DELPBDDATA: L�schen eines PBD-Eintrages --------------------------------
LRESULT ExtDirisWindow::OnDelPBDData (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(EC_NOOPEN);
		
#if defined(_DEBUG)
PBDDATA *pPD = (PBDDATA *)lParam;

	TX_ASSERT_POINTER(pPD, DWORD);
	if (sizeof(PBDMERKMAL) == pPD -> dwSize) {
		TX_ASSERT_POINTER(pPD, PBDMERKMAL);
		TX_ASSERT(IsValidMCode(pPD -> pbdCode));
	} else if (sizeof(PBDMERKMALEX) == pPD -> dwSize) {
		TX_ASSERT_POINTER(pPD, PBDMERKMALEX);
		TX_ASSERT(IsValidMCode(pPD -> pbdCode));
	} else if (sizeof(PBDRELATION) == pPD -> dwSize) {
		TX_ASSERT_POINTER(pPD, PBDRELATION);
		TX_ASSERT(IsValidRCode(pPD -> pbdCode));
	} else {
		TX_ASSERT(sizeof(PBDDATA) == pPD -> dwSize);
		TX_ASSERT_POINTER(pPD, PBDDATA);
	}
#endif // _DEBUG

	return (LRESULT)DBO().DelPBDData (hPr, (PBDDATA *)lParam);
}

// DEX_ENUMPBDDATA: Enumeration eines PBD-EintragTypes ------------------------
LRESULT ExtDirisWindow::OnEnumPBDData (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);
		
ENUMLONGKEY *pK = (ENUMLONGKEY *)lParam;

	TX_ASSERT_POINTER(pK, ENUMLONGKEY);
	TX_ASSERT(TIsValidAddress(pK -> eFcn, 1, false));

	return (LRESULT)DBO().EnumPBDData (hPr, pK -> eKey, pK -> eFcn, pK -> ePtr);
}

// DEX_QUERYDRAWINGSTATUS: Abfrage, ob derzeit gezeichnet wird ----------------
LRESULT ExtDirisWindow::OnQueryDrawingStatus (HPROJECT hPr, LPARAM lParam)
{	
	if (!IsValidActiveView())
		return LRESULT(false);
		
	return LRESULT(DBO().isDrawing());
}

// DEX_QUERYISPRINTING: Abfrage, ob derzeit gedruckt wird ---------------------
LRESULT ExtDirisWindow::OnQueryPrintingStatus (HPROJECT hPr, LPARAM lParam)
{
	return !PrintEFlag; 
}

// DEX_OCTODCEX: Konvertierung von ObjektKoordinaten in BildschirmKoordinaten -
LRESULT ExtDirisWindow::OnOCtoDCEx (HPROJECT hPr, LPARAM lParam)
{
COORDCONVERT *pCC = (COORDCONVERT *)lParam;

#if defined(_DEBUG)
	TX_ASSERT_POINTER(pCC, COORDCONVERT);
	TX_ASSERT_POINTER(pCC -> lpPkt, Punkt);
	TX_ASSERT(TIsValidAddress(pCC -> lpPt, sizeof(Point), true));
#endif // _DEBUG

double dX, dY;

	if (DBO().UnScaleCTF (pCC -> lpPkt[0], pCC -> lpPkt[1], &dX, &dY)) {
	Point Pt = OCtoDC (Punkt(dX, dY));

		memcpy (pCC -> lpPt, &Pt, sizeof (Point));
		return LRESULT(true);
	}
	return LRESULT(false);
}

// DEX_OCTODC: wie oben, jedoch mit kippen der Y-Koordinate -------------------
LRESULT ExtDirisWindow::OnOCtoDC (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LPARAM(false);

COORDCONVERT *pCC = (COORDCONVERT *)lParam;

#if defined(_DEBUG)
	TX_ASSERT_POINTER(pCC, COORDCONVERT);
	TX_ASSERT_POINTER(pCC -> lpPkt, Punkt);
	TX_ASSERT(TIsValidAddress(pCC -> lpPt, sizeof(Point), true));
#endif // _DEBUG

double dX, dY;

	if (DBO().UnScaleCTF (pCC -> lpPkt[0], pCC -> lpPkt[1], &dX, &dY)) {
	Point Pt = OCtoDC (Punkt(dX, dY));
	CoOrd dY = m_pView -> GetOutputHeight();

		Pt.Y() = dY - Pt.Y();
		memcpy (pCC -> lpPt, &Pt, sizeof (Point));
	}
	return LRESULT(true);
}
		
// DEX_DCTOOCEX: Konvertierung von Bildschirmkoordinaten in Objektkoordianten -
LRESULT ExtDirisWindow::OnDCtoOCEx (HPROJECT hPr, LPARAM lParam)
{
COORDCONVERT *pCC = (COORDCONVERT *)lParam;

#if defined(_DEBUG)
	TX_ASSERT_POINTER(pCC, COORDCONVERT);
	TX_ASSERT_POINTER(pCC -> lpPt, Point);
	TX_ASSERT(TIsValidAddress(pCC -> lpPkt, sizeof(Punkt), true));
#endif // _DEBUG

Point Pt = *(Point *)(pCC -> lpPt);
Punkt Pkt = DCtoOC(Pt);
KoOrd lX, lY;

	if (DBO().ScaleCTF (Pkt.GetX(), Pkt.GetY(), &lX, &lY)) {
		pCC -> lpPkt[0] = lX;
		pCC -> lpPkt[1] = lY;
		return LRESULT(TRUE);
	}
	return LRESULT(FALSE);
}

// DEX_DCTOOC: wie oben, jedoch mit kippen der Y-Koordinate -------------------
LRESULT ExtDirisWindow::OnDCtoOC (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LPARAM(false);

COORDCONVERT *pCC = (COORDCONVERT *)lParam;

#if defined(_DEBUG)
	TX_ASSERT_POINTER(pCC, COORDCONVERT);
	TX_ASSERT_POINTER(pCC -> lpPt, Point);
	TX_ASSERT(TIsValidAddress(pCC -> lpPkt, sizeof(Punkt), true));
#endif // _DEBUG

Point Pt = *(Point *)(pCC -> lpPt);
CoOrd dY = m_pView -> GetOutputHeight();

	Pt.Y() = dY - Pt.Y();

Punkt Pkt = DCtoOC(Pt);
KoOrd lX, lY;

	if (DBO().ScaleCTF (Pkt.GetX(), Pkt.GetY(), &lX, &lY)) {
		pCC -> lpPkt[0] = lX;
		pCC -> lpPkt[1] = lY;
		return LRESULT(TRUE);
	}
	return LRESULT(FALSE);
}
		
// DEX_QUERYACTIVETOOL: aktives Werkzeug abfragen -----------------------------
LRESULT ExtDirisWindow::OnQueryActTool (HPROJECT hPr, LPARAM lParam)
{	
#if defined(OLD_TOOLBOX)
	return (LRESULT)(pToolBox ? pToolBox -> iActTool() : -1);
#else
	return g_iActTool;
#endif // OLD_TOOLBOX
}

// DEX_SETACTIVETOOL: aktives Werkzeug setzen ---------------------------------
LRESULT ExtDirisWindow::OnSetActTool (HPROJECT hPr, LPARAM lParam)
{
#if defined(OLD_TOOLBOX)
	if (pToolBox) {
	short iOldTool = pToolBox -> iActTool();

		pToolBox -> SetTool ((short)lParam);
		return LRESULT(iOldTool);
	} 
return LRESULT(-1);
#else
int iActTool = g_iActTool;

	g_iActTool = (int)lParam;
	DEXN_ActiveToolChanged (g_iActTool);
	return iActTool;
#endif // OLD_TOOLBOX
}

// DEX_FINDOBJECT: Objekte unter Mausklick enumerieren ------------------------
LRESULT ExtDirisWindow::OnEnumFoundObjects (HPROJECT hPr, LPARAM lParam)
{	
	if (!IsValidActiveView())
		return LRESULT(EC_NOOPEN);
		
#if defined(_DEBUG)
FINDOBJECT *pFO = (FINDOBJECT *)lParam;

	TX_ASSERT_POINTER(pFO, FINDOBJECT);
	TX_ASSERT(sizeof(FINDOBJECT) == pFO -> dwSize);
	TX_ASSERT(TIsValidAddress(pFO -> eFcn, 1, false));
#endif // _DEBUG

	return LRESULT(DBO().Shapes().FindObjectsFromPointEx ((FINDOBJECT *)lParam));
}

///////////////////////////////////////////////////////////////////////////////
// Relationen 

// DEX_MODRELATION: Relation modifizieren/erzeugen 
LRESULT ExtDirisWindow::OnModRelation (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(EC_NOOPEN);
		
MODRELATION *pMR = (MODRELATION *)lParam;

	TX_ASSERT_POINTER(pMR, MODRELATION);
	TX_ASSERT(sizeof(MODRELATION) == pMR -> dwSize || sizeof(MODRELATIONEX) == pMR -> dwSize);
	TX_ASSERT(IsValidONr(pMR -> lPONr));
	TX_ASSERT(IsValidONr(pMR -> lSONr));
	TX_ASSERT((pMR -> iRTyp & (RTBegleitO|RTBegleitU)) || IsValidRCode(pMR -> lRCode));

bool fUndo = false;

	if (sizeof(MODRELATIONEX) == pMR -> dwSize)
		fUndo = ((MODRELATIONEX *)pMR) -> fUndo;
	return (LRESULT)DBO().ModifyRelation (pMR -> lPONr, pMR -> lSONr, pMR -> lRCode, pMR -> iRTyp, fUndo);
}

// DEX_DELRELATION: Relation l�schen 
LRESULT ExtDirisWindow::OnDelRelation (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(EC_NOOPEN);
		
DELRELATION *pDR = (DELRELATION *)lParam;

	TX_ASSERT_POINTER(pDR, DELRELATION);
	TX_ASSERT(sizeof(DELRELATION) == pDR -> dwSize || sizeof(DELRELATIONEX) == pDR -> dwSize);
	TX_ASSERT(IsValidONr(pDR -> lPONr));
	TX_ASSERT(IsValidONr(pDR -> lSONr));
	TX_ASSERT((pDR -> iRTyp & (RTBegleitO|RTBegleitU)) || IsValidRCode(pDR -> lRCode));

bool fUndo = false;

	if (sizeof(DELRELATIONEX) == pDR -> dwSize)
		fUndo = ((DELRELATIONEX *)pDR) -> fUndo;
	return (LRESULT)DBO().DeleteRelation (pDR -> lPONr, pDR -> lSONr, pDR -> lRCode, pDR -> iRTyp, fUndo);
}

// DEX_ENUMRELATIONS: alle Relationen (RCodes) der GeoDB enumerieren 
LRESULT ExtDirisWindow::OnEnumRelations (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);
		
ENUMNOKEYLONG *pK = (ENUMNOKEYLONG *)lParam;

	TX_ASSERT_POINTER(pK, ENUMNOKEYLONG);
	TX_ASSERT(TIsValidAddress(pK -> eFcn, 1, false));

	return (LRESULT)DBO().EnumRelations (pK -> eFcn, pK -> ePtr);
}


// DEX_ENUMRELATIONOBJS: alle Relationen (RCodes) eines Objektes enumerieren
LRESULT ExtDirisWindow::OnEnumObjectRelations (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(false);
		
#if defined(_DEBUG)
ENUMRELATIONOBJS *pERO = (ENUMRELATIONOBJS *)lParam;

	TX_ASSERT_POINTER(pERO, ENUMRELATIONOBJS);
	TX_ASSERT(sizeof(ENUMRELATIONOBJS) == pERO -> dwSize);
	TX_ASSERT(IsValidONr(pERO -> lONr));
	TX_ASSERT(TIsValidAddress(pERO -> eFcn, 1, false));
//	TX_ASSERT(pERO -> iRTyp & (RTBegleitO|RTBegleitU) || IsValidRCode(pERO -> lRCode));
#endif // _DEBUG

	return (LRESULT)DBO().EnumRelatedObjects ((ENUMRELATIONOBJS *)lParam);
}

// DEX_QUERYIDENTBASE: IdentifikatorZahlenbasis liefern -----------------------
LRESULT ExtDirisWindow::OnQueryIdentBase (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveProject())
		return LRESULT(EC_NOOPEN);
		
//CActDB ActDB (DBO().DB());		// jetzt Member von DBO
#if defined(_USE_LEGACY_CODE)
int iBase = DBO().GetIdBase();

	TX_ASSERT(iBase == 10 || iBase == 16);
	return (LRESULT)iBase;
#else
	return 16;
#endif // defined(_USE_LEGACY_CODE)
}

// DEX_QUERYMCODEBASE: MCode-Zahlenbasis liefern ------------------------------
LRESULT ExtDirisWindow::OnQueryMCodeBase (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveProject())
		return LRESULT(EC_NOOPEN);
		
//CActDB ActDB (DBO().DB());		// jetzt Member von DBO
#if defined(_USE_LEGACY_CODE)
int iBase = DBO().GetMkBase();

	TX_ASSERT(iBase == 10 || iBase == 16);
	return (LRESULT)iBase;
#else
	return 10;
#endif // defined(_USE_LEGACY_CODE)
}

// DEX_QUERYIDENTOBJTYPES: ObjektTypen eines IDents liefern -------------------
LRESULT ExtDirisWindow::OnQueryIdentObjectTypes (HPROJECT hPr, LPARAM lParam)
{
	if (!IsValidActiveView())
		return LRESULT(0);
		
	TX_ASSERT(IsValidIdent((LONG)lParam));

short iOTypes = 0;

	if (!DBO().Idents().FindId (lParam, NULL, &iOTypes))
		iOTypes = 0;		// Fehler
	return LRESULT(iOTypes);
}

// Anlegen neuer Datenbanken --------------------------------------------------
// DEX_CREATENEWGEODB: GeoDB neu erzeugen -------------------------------------
LRESULT ExtDirisWindow::OnCreateGeoDB (HPROJECT hPr, LPARAM lParam)
{
#if defined(_FORCE_LEGACY_CODE)
CREATEDB *pCD = (CREATEDB *)lParam;

#if defined(_DEBUG)
	TX_ASSERT_POINTER(pCD, DWORD);
	if (sizeof(CREATEDBEX) == pCD -> dwSize)
		TX_ASSERT_POINTER(pCD, CREATEDBEX);
	else {
		TX_ASSERT(sizeof(CREATEDB) == pCD -> dwSize);
		TX_ASSERT_POINTER(pCD, CREATEDB);
	}
	TX_ASSERT(TIsValidString(pCD -> m_pName));
	TX_ASSERT(NULL == pCD -> m_pUser || TIsValidString(pCD -> m_pUser));
	TX_ASSERT(NULL == pCD -> m_pPassWd || TIsValidString(pCD -> m_pPassWd));
#endif // _DEBUG

int iMode = pCD -> m_iMode & DBVFlags;
int iTempl = DBD050A;		// default TRiAS1.20 Projekt

	if (iMode & DBVCompFile) {
		if (iMode & DBVCompatible)
			iTempl = DBD050B;
		else
			iTempl = (g_dwTRiASMode & TRIASMODE_GDO) ? DBD050E : DBD050B;
	}
	return (LRESULT)CreateNewDB (pCD, iTempl);
#else
	return EC_OKAY;		// not here (now in FakeMFC)
#endif // defined(_FORCE_LEGACY_CODE)
}
		
// DEX_CREATENEWIDENTSDB: PBD neu erzeugen ------------------------------------
LRESULT ExtDirisWindow::OnCreatePBD (HPROJECT hPr, LPARAM lParam)
{
#if defined(_DEBUG)
CREATEDB *pCD = (CREATEDB *)lParam;

	TX_ASSERT_POINTER(pCD, DWORD);
	if (sizeof(CREATEDBEX) == pCD -> dwSize)
		TX_ASSERT_POINTER(pCD, CREATEDBEX);
	else {
		TX_ASSERT(sizeof(CREATEDB) == pCD -> dwSize);
		TX_ASSERT_POINTER(pCD, CREATEDB);
	}
	TX_ASSERT(NULL == pCD -> m_pName || TIsValidString(pCD -> m_pName));
	TX_ASSERT(NULL == pCD -> m_pUser || TIsValidString(pCD -> m_pUser));
	TX_ASSERT(NULL == pCD -> m_pPassWd || TIsValidString(pCD -> m_pPassWd));
#endif // _DEBUG

	return (LRESULT)CreateNewDB ((CREATEDB *)lParam,
		(((CREATEDB *)lParam) -> m_iMode & DBVFlags) == DBVNormal ? PBD050A : PBD050B);
}

// SystemMeldungen ------------------------------------------------------------
// DEX_SETERROR: Fehlermeldung ausl�sen ---------------------------------------
LRESULT ExtDirisWindow::OnSetError (HPROJECT hPr, LPARAM lParam)
{
ERRORMESSAGE *pEM = (ERRORMESSAGE *)lParam;

	TX_ASSERT_POINTER(pEM, ERRORMESSAGE);

	return (LRESULT)db_error (pEM -> emiErrCode,
				  pEM -> emiRoutine,
				  pEM -> empData);
}
		
// DEX_ERRINSTALL: Fehlerbehandlung festlegen ---------------------------------
LRESULT ExtDirisWindow::OnErrInstall (HPROJECT hPr, LPARAM lParam)
{
ERRINSTALL *pEI = (ERRINSTALL *)lParam;

	TX_ASSERT_POINTER(pEI, ERRINSTALL);
	return (LRESULT)err_install (pEI -> eiRC, pEI -> eiEH, pEI -> eioEH);
}

// DEX_EXTERRINSTALL: Fehelerbehandlung festlegen (erweitert) -----------------
LRESULT ExtDirisWindow::OnExtErrInstall (HPROJECT hPr, LPARAM lParam)
{
EXTERRINSTALL *pEI = (EXTERRINSTALL *)lParam;

	TX_ASSERT_POINTER(pEI, EXTERRINSTALL);
	return (LRESULT)ExtErrInstall (pEI -> eiRC, pEI -> eiEH, pEI -> eioEH, (void *)pEI -> dwData);
}
		
// Erweiterungen Laden/UnLaden ------------------------------------------------
// DEX_LOADEXTENSION: Erweiterung laden ---------------------------------------
LRESULT ExtDirisWindow::OnLoadExtension (HPROJECT hPr, LPARAM lParam)
{	
	TX_ASSERT(TIsValidString((char *)lParam));

	return (LRESULT)(void *)LoadExtension (NULL, (char *)lParam, LEFullLoad);
}

// DEX_LOADEXTENSIONEX: Erweiterung mit Optionen laden ------------------------
LRESULT ExtDirisWindow::OnExtLoadExtension (HPROJECT hPr, LPARAM lParam)
{
LOADEXTENSIONEX *pLE = (LOADEXTENSIONEX *)lParam;

	TX_ASSERT_POINTER(pLE, LOADEXTENSIONEX);
	TX_ASSERT(NULL == pLE -> m_pDesc || TIsValidString(pLE -> m_pDesc));
	TX_ASSERT(TIsValidString(pLE -> m_pName));

	return (LRESULT)(void *)LoadExtension (
				pLE -> m_pDesc, pLE -> m_pName, 
				pLE -> m_iMode, 
//				pLE -> m_fGlobal ? EF_Global : (EXTENSIONFLAG)0
				(EXTENSIONFLAG)pLE -> m_fGlobal
			);
}

// DEX_UNLOADEXTENSION: Erweiterung entladen ----------------------------------
LRESULT ExtDirisWindow::OnUnLoadExtension (HPROJECT hPr, LPARAM lParam)
{
	TX_ASSERT(TIsValidString((char *)lParam));

char *pExtName = m_pEL -> RetrieveExtName ((char *)lParam);
bool iResult = ReUnLoadExtension (pExtName, (char *)lParam);

	DELETE_OBJ (pExtName);

return (LRESULT)iResult;
}

// DEX_UNLOADEXTENSIONEX: Erweiterung mit Optionen entladen -------------------
LRESULT ExtDirisWindow::OnExtUnLoadExtension (HPROJECT hPr, LPARAM lParam)
{
LOADEXTENSIONEX *pLE = (LOADEXTENSIONEX *)lParam;
bool iResult = false;

	TX_ASSERT_POINTER(pLE, LOADEXTENSIONEX);
	TX_ASSERT(NULL == pLE -> m_pDesc || TIsValidString(pLE -> m_pDesc));
	TX_ASSERT(TIsValidString(pLE -> m_pName));

	if (pLE -> m_iMode & LEFullLoad)	// hier FullUnload
		iResult = UnLoadExtension (pLE -> m_pName, true);
	else {		// nur entladen
		if (pLE -> m_pDesc == NULL) {
		char *pExtName = m_pEL -> RetrieveExtName (pLE -> m_pName);

			iResult = ReUnLoadExtension (pExtName, pLE -> m_pName);
			DELETE_OBJ (pExtName);
		} else
			iResult = ReUnLoadExtension (pLE -> m_pDesc, pLE -> m_pName);
	}
	return (LRESULT)iResult;
}
