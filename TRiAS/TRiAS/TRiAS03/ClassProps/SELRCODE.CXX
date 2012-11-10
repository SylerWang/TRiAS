// Auswahl aller Objekte verschiedener Objektklassen --------------------------
// File: SELRCODE.CXX

#include "featurep.hxx"
#include "feature.h"

#include <eieruhr.hxx>

#include "enumonr.hxx"
#include "selrelst.hxx"
#include "selidpbd.hxx"
#include "selrcode.hxx"

// Konstruktor/Destruktor/Initialisierung -------------------------------------
#pragma warning (disable: 4355)

CSelectRCodeDlg :: CSelectRCodeDlg (ResID uiDlg, LPCSTR pcCaption, DWORD dwFlags)
		 : CPropertyPage (uiDlg, pcCaption),
		   m_dwFlags(dwFlags)
{
	m_pRCodes = NULL;	// ListViewCtrl's
	m_pIdents = NULL;

	m_lRCode = NULL;
	m_iRTyp = 0;
	m_pEnum = NULL;
}

#pragma warning (default: 4355)

CSelectRCodeDlg :: ~CSelectRCodeDlg (void)
{
	DELETE (m_pRCodes);
	DELETE (m_pIdents);

	RELEASE(m_pEnum);
}

CSelectRCodeDlg *CSelectRCodeDlg :: CreateInstance (
		UINT uiDlg, LPCSTR pcCaption, DWORD dwFlags, ResourceFile &rRF)
{
	try {
	CSelectRCodeDlg *pDlg = NULL;
	
		pDlg = new CSelectRCodeDlg (ResID (uiDlg, &rRF), pcCaption, dwFlags);
		if (pDlg == NULL || !pDlg -> FInit(rRF)) {
			DELETE (pDlg);
			return NULL;
		}
		return pDlg;
	} catch (...) {
		return NULL;
	}
}

bool CSelectRCodeDlg :: FInit (ResourceFile &rRF)
{
// RelationsListBox f�llen
	m_pRCodes = new CSelPBDRelationList (this, IDC_LISTRELATIONS, rRF);
	if (NULL == m_pRCodes) return false;

// IdentifikatorListBox f�llen
	m_pIdents = new CSelPBDIdentList (this, IDC_LISTIDENTS, rRF);
	if (NULL == m_pIdents) return false;

return true;
}

// Der wohl wichtigste Unterschied zu einem normalen Dialogfenster besteht
// darin, da� alle Controls dieser Dialogseite explizit im WindowInit()-Event-
// handler initialisiert werden m�ssen (s.u.). Alle inhaltlichen Initialisierungen
// k�nnen erst danach erfolgen (und nicht wie gewohnt im Konstruktor)
void CSelectRCodeDlg :: WindowInit (Event)
{
CEierUhr Wait (this);		// das kann eine Weile dauern

// ListViewCtrl initialisieren
	if (NULL == m_pRCodes || !m_pRCodes -> InitControl()) return;
	if (NULL == m_pIdents || !m_pIdents -> InitControl()) return;

	AdjustOK();
}

///////////////////////////////////////////////////////////////////////////////
// EventHandler ---------------------------------------------------------------
void CSelectRCodeDlg :: ButtonClick (ControlEvt)
{
}

void CSelectRCodeDlg :: OnItemChanged (NotifyEvt e)
{
	if (((NM_LISTVIEW *)e.GetNotifyInfo()) -> uChanged & LVIF_STATE)
		AdjustOK();
}

int CSelectRCodeDlg :: OnSetActive (NotifyEvt)
{
	AdjustOK();
	return 0;
}

// Der Dialog wurde mit Cancel geschlossen ------------------------------------
void CSelectRCodeDlg :: OnCancel (NotifyEvt)
{
	// hier evtl. Aufr�umarbeiten durchf�hren
}

int CSelectRCodeDlg :: OnWizNext (NotifyEvt)
{
	if (PrepareResult())	// Ergebnisse zwischenspeichern
		return 0;

return -1;
}

// Finish wurde gedr�ckt ------------------------------------------------------
int CSelectRCodeDlg :: OnWizFinish (NotifyEvt)
{
bool fR = PrepareResult();	// Ergebnisse zwischenspeichern

// wir sind die letzten, also R�ckkehrwert aus PropertySheet setzen
CPropertySheet *pSheet = GetPropertySheet();

	if (NULL != pSheet)
		pSheet -> EndDialog(1);	

return fR ? 0 : -1;
}

void CSelectRCodeDlg :: OnClick (NotifyEvt e)
{
UINT uiResID = e.GetControlID();
CListViewCtrl *pLVC = NULL;

	if (IDC_LISTIDENTS == uiResID) 
		pLVC = m_pIdents;
	else if (IDC_LISTRELATIONS == uiResID)
		pLVC = m_pRCodes;
	else
		return;		// nicht f�r uns

NMHDR *pNMHdr = e.GetNotifyInfo();
POINT pt;

	GetCursorPos (&pt);
	ScreenToClient (pNMHdr -> hwndFrom, &pt);
	pt.x = 1;	// ganz am linken Rand testen

UINT uiFlags = 0L;
int iIndex = pLVC -> HitTest ((Point &)pt, &uiFlags);

	if (uiFlags & LVHT_ONITEM && 0 <= iIndex) {
		pLVC -> SetItemState (iIndex, LVIS_SELECTED|LVIS_FOCUSED, 
					      LVIS_SELECTED|LVIS_FOCUSED);
		pLVC -> Update (iIndex);
	}
}

///////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen, um Objekte aufzusammeln -----------------------------------

// �bergibt dem Dialog die Objekte, die verarbeitet werden sollen -------------
HRESULT CSelectRCodeDlg :: SetEnumLONG (IEnum<LONG> *pInEnum, 
					IPropertyTemplate *pITempl)
{
	if (NULL == pInEnum) 	// wir brauchen eine Eingabe
		return ResultFromScode (E_NOTIMPL);

HRESULT hr;

// das neue Objekt ist entweder ein Komplexobjekt oder das erste
// in der �bergebenen Liste 
LONG lKONr = 0;

	if (RTGleich == m_iRTyp) 
		hr = CreateHierObject (pInEnum, lKONr);
	else if (RTKomplexO == m_iRTyp)
		hr = CreateKomplexObject (pInEnum, lKONr);
	if (FAILED(hr)) return hr;

// Enumerator anlegen, in dem die ErgebnisKomplexObjekte gespeichert werden
	if (NULL == m_pEnum) {
	// das ist das erste neue Objekt
		m_pEnum = CEnumObjectNumbers::CreateInstance();
		if (NULL == m_pEnum) return ResultFromScode(E_OUTOFMEMORY);
	}

// neuem Objekt die gew�nschte Objekteigenschaft verpassen
	if (NULL != pITempl) 
		pITempl -> ApplyTemplate (lKONr);

// neues Objekt speichern
	hr = m_pEnum -> AddObject (lKONr);
	if (FAILED(hr)) return hr;

return NOERROR;
}

// bilden eines Komplexobjektes aus allen Objekten des �bergebenen Enumerators 
HRESULT CSelectRCodeDlg :: CreateKomplexObject (IEnum<LONG> *pInEnum, LONG &rlKONr)
{
LONG lONr = 0, lKONr = 0;
HRESULT hr;
MERGEKOBJECT MKO;

	MKO.mIdent = m_lIdent;
	MKO.mRCode = m_lRCode;
	MKO.mMerge = true;

	for (pInEnum -> Reset(); 
	     S_OK == pInEnum -> Next (1, &lONr, NULL); /**/)
	{
		if (0 == lKONr) {		// erstes ObjektPaar
			MKO.mObj1 = lONr;
			hr = pInEnum -> Next (1, &lONr, NULL);
			if (S_OK != GetScode(hr)) 
				return ResultFromScode(E_UNEXPECTED);
		} else
			MKO.mObj1 = lKONr;	// alle weiteren Objekte
		
		MKO.mObj2 = lONr;

	LONG lNewONr = DEX_ModKomplexObj(MKO);

		if (0 == lKONr)
			lKONr = lNewONr;
		else if (lKONr != lNewONr)
			return ResultFromScode (E_UNEXPECTED);
	}
	rlKONr = lKONr;		// Resultat liefern

// jetzt noch (f�r alle F�lle) Ident registrieren
ADDNEWIDENT ANI;

	ANI.newIdent = m_lIdent;	// neuer Identifikator
	ANI.iFlags = ANI_AddToView;	// Identifikator ist tempor�r
	ANI.iTyp = 0;			// ObjTyp f�r diesen Ident
	DEX_RegNewIdent (ANI);

return NOERROR;
}

// fa�t alle Objekte des Enumerators mit einer gleichrangigen Relation zusammen
HRESULT CSelectRCodeDlg :: CreateHierObject (IEnum<LONG> *pInEnum, LONG &rlKONr)
{
LONG lONr = 0, lKONr = 0;
HRESULT hr;
MODRELATION MR;

	INITSTRUCT (MR, MODRELATION);
	MR.lRCode = m_lRCode;
	MR.iRTyp = m_iRTyp;

// alle �bergebenen Objekte mit Relation zusammenfassen
	for (pInEnum -> Reset(); 
	     S_OK == pInEnum -> Next (1, &lONr, NULL); /**/)
	{
		if (0 == lKONr) {		// erstes ObjektPaar
			MR.lPONr = lONr;
			hr = pInEnum -> Next (1, &lONr, NULL);
			if (S_OK != GetScode(hr)) 
				return ResultFromScode(E_UNEXPECTED);
		} else
			MR.lPONr = lKONr;	// alle weiteren Objekte
	
		MR.lSONr = lONr;
	
	LONG lNewONr = DEX_ModifyRelation (MR);	// Relation anlegen

		if (0 == lKONr)
			lKONr = lNewONr;
		else if (lKONr != lNewONr)
			return ResultFromScode (E_UNEXPECTED);
	}
	rlKONr = lKONr;		// Resultat liefern

return NOERROR;
}

// Fragt den Dialog nach seinen Daten (liefert gebildete Komplexobjekte) ------
HRESULT CSelectRCodeDlg :: GetEnumLONG (IEnum<LONG> **ppOutEnum)
{
	if (NULL == ppOutEnum || NULL == m_pEnum) 
		return ResultFromScode (E_POINTER);

HRESULT hr = m_pEnum -> QueryInterface (IID_IEnumLONG, (LPVOID *)ppOutEnum);

	RELEASE(m_pEnum);	// wird nicht mehr ben�tigt

return hr;
}

///////////////////////////////////////////////////////////////////////////////
// HilfsRoutinen --------------------------------------------------------------
void CSelectRCodeDlg :: AdjustOK (bool fDisableNext)
{
CPropertySheet *pSheet = GetPropertySheet();

	if (NULL == pSheet || NULL == m_pRCodes || NULL == m_pIdents) 
		return;

DWORD dwBttns = 0;
int iCnt = GetSelectedCount();

	if (!(m_dwFlags & ADDPAGES_FIRSTPAGE))
		dwBttns |= PSWIZB_BACK;

// IdentList daktivieren, wenn gleichrangige Relation ausgew�hlt wurde
LONG lRCode;
short iRTyp;
bool fHasIdent = true;

	if (GetSelectedRCode (lRCode, iRTyp) && RTKomplexO == iRTyp) {
		m_pIdents -> Enable();
		fHasIdent = m_pIdents -> GetSelectedCount() > 0;
	} else 
		m_pIdents -> Disable();

	if (0 < iCnt && fHasIdent && !fDisableNext) {
		if (m_dwFlags & ADDPAGES_LASTPAGE)
			dwBttns |= PSWIZB_FINISH;
		else
			dwBttns |= PSWIZB_NEXT;
	}

	pSheet -> SetWizardButtons (dwBttns);
}

// Ergebnisdaten aus Controls lesen und zwischenspeichern ---------------------
bool CSelectRCodeDlg :: PrepareResult (void)
{
int iCnt = GetSelectedCount();

	if (0 == iCnt) return true;

// Daten aus Page lesen und speichern
	if (GetSelectedRCode (m_lRCode, m_iRTyp)) {
		if (RTKomplexO == m_iRTyp && GetSelectedIdent (m_lIdent))
			return true;
	}

return false;
}

///////////////////////////////////////////////////////////////////////////////
// AbfrageRoutinen ------------------------------------------------------------
bool CSelectRCodeDlg :: GetSelectedRCode (long &rlRCode, short &riRTyp)
{
	if (m_pRCodes) 
		return m_pRCodes -> GetSelectedRCode (rlRCode, riRTyp);
		
return false;
}

int CSelectRCodeDlg :: GetSelectedCount (void)
{
	if (m_pRCodes) 
		return m_pRCodes -> GetSelectedCount();
		
return 0;
}

bool CSelectRCodeDlg :: GetSelectedIdent (long &rlIdent)
{
	if (m_pIdents) 
		return m_pIdents -> GetSelectedIdent (rlIdent);
		
return false;
}

