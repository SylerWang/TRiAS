// Definition des Interface f�r die Erweiterung "Puffer um GeoObjekte"
// File: BUFFEXT.CXX


#include "bufferp.hxx"

#include <resstrg.h>		// IDS_UIFORMAT

#include "objgext.hxx"		// CreateInterfaceOG (mu� NACH ctfxmfc.h stehen !!!)
#include "datbank.hxx"		// MerkmaleKopieren()
#include "FormatString.hxx"	// Format()

#include "buffer.hxx"		// BufferExtension


#if defined(_DEBUG)
#undef THIS_FILE
static char BASED_CODE THIS_FILE[] = __FILE__;
#endif



// --------------------------------------------------------------------------------------------
// IExtendBuffer-Methoden
// echter Puffer um lONr-Objekt mit den Eingabeparametern
// dWidth		Pufferbreite (in Metern mit Kommastelle)
// iPuffAnzahl	Pufferanzahl (Standard: 1)
// bRing		ringf�rmiger Puffer / volle Fl�che
// bForm		tempor�re / permanente Abspeicherung
// ulBIdent		BasisIdentifikator, aus dem die Identifikatoren der Pufferobjekte abgeleitet
//				werden
// In ppEnumOut werden die Objektnummern der erzeugten Puffer zur�ckgegeben.
STDMETHODIMP_ (HRESULT) BufferExtension :: RealBuffering_ONr (LONG lONr, double dWidth,
	   short iPuffAnzahl, PuffBau bPBau, SpForm sfSForm, ULONG ulBIdent, IEnumLONG** ppEnumOut)
{
	if (ppEnumOut == NULL) return E_POINTER;

	_ASSERTE (lONr != 0);
	_ASSERTE (lONr != -1);

bool bTyp = true;					// echter Puffer
bool bFortAnz = false;				// keine Fortschrittsanzeige
ErrInstall EI (WC_MESSAGE_BUFF);	// keine Anzeige der Fehlermeldung WC_MESSAGE_BUFF

	if (! m_pCT)
	{
		m_pCT = new CoordTransX();	// Klasse f�r KoordinatenTransformation
		if (! m_pCT)
		{                                                                      
			DEX_Error (RC_Bufferext, EC_NOMEMORY);
			return E_OUTOFMEMORY;
		}
	}

	return Pufferbildung_ONr (lONr, dWidth, iPuffAnzahl, bPBau, sfSForm, bTyp, ulBIdent,
							  bFortAnz, ppEnumOut);
}


// --------------------------------------------------------------------------------------------
// echter Puffer um pIOG-Objektes
STDMETHODIMP_ (HRESULT) BufferExtension :: RealBuffering_Geom (IObjektGeometrie* pIOG,
	   double dWidth, short iPuffAnzahl, SpForm sfSForm, ULONG ulBIdent, IEnumLONG** ppEnumOut)
{
	if (NULL == ppEnumOut) return E_POINTER;

	_ASSERTE (pIOG != NULL);

bool bTyp = true;					// echter Puffer
bool bFortAnz = false;				// keine Fortschrittsanzeige
ErrInstall EI (WC_MESSAGE_BUFF);	// keine Anzeige der Fehlermeldung WC_MESSAGE_BUFF

PuffBau bPBau = PBAU_VOLL;	// nur vor�bergehend !!!!!!!!!!!!!!!!!!!!!!

	if (! m_pCT)
	{
		m_pCT = new CoordTransX();	// Klasse f�r KoordinatenTransformation
		if (! m_pCT)
		{                                                                      
			DEX_Error (RC_Bufferext, EC_NOMEMORY);
			return E_OUTOFMEMORY;
		}
	}

	return Pufferbildung_Geom (pIOG, dWidth, iPuffAnzahl, bPBau, sfSForm, bTyp, ulBIdent,
							   bFortAnz, ppEnumOut);
}


// --------------------------------------------------------------------------------------------
// kreisf�rmiger Puffer um Mittelpunkt des Objektcontainers
STDMETHODIMP_ (HRESULT) BufferExtension :: CircularBuffering_ONr (LONG lONr, double dWidth,
	   short iPuffAnzahl, PuffBau bPBau, SpForm sfSForm, ULONG ulBIdent, IEnumLONG** ppEnumOut)
{
	if (ppEnumOut == NULL) return E_POINTER;

	_ASSERTE (lONr != 0);
	_ASSERTE (lONr != -1);

bool bTyp = false;					// Kreis um Containermittelpunkt
bool bFortAnz = false;				// keine Fortschrittsanzeige
ErrInstall EI (WC_MESSAGE_BUFF);	// keine Anzeige der Fehlermeldung WC_MESSAGE_BUFF

	if (! m_pCT)
	{
		m_pCT = new CoordTransX();	// Klasse f�r KoordinatenTransformation
		if (! m_pCT)
		{                                                                      
			DEX_Error (RC_Bufferext, EC_NOMEMORY);
			return E_OUTOFMEMORY;
		}
	}

	return Pufferbildung_ONr (lONr, dWidth, iPuffAnzahl, bPBau, sfSForm, bTyp, ulBIdent,
							  bFortAnz, ppEnumOut);
}


// --------------------------------------------------------------------------------------------
STDMETHODIMP_ (HRESULT) BufferExtension :: CircularBuffering_Geom (IObjektGeometrie* pIOG,
	   double dWidth, short iPuffAnzahl, SpForm sfSForm, ULONG ulBIdent, IEnumLONG** ppEnumOut)
{
	return E_NOTIMPL;
}


// --------------------------------------------------------------------------------------------
// einzelner echter Puffer um lONr-Objekt
STDMETHODIMP_ (HRESULT) BufferExtension :: WorkingBuffer_ONr (LONG lONr, double dWidth,
				  PuffBau bPBau, BuffSide bsSide, ConvexMode cmMode, double dPrec, LONG* plONr)
{
WObjektGeometrie wObj;		// ObjektGeometrie des lONr-Objektes

	try
	{
	WInitObjektGeometrie wIObj (CLSID_ObjektGeometrie);	// throws_com_error

		THROW_FAILED_HRESULT (wIObj->InitObjGeometry (lONr));

		wObj = wIObj;
	}
	catch (_com_error& e)
	{
		return _COM_ERROR (e);
	}

	if (! m_pCT)
	{
		m_pCT = new CoordTransX();	// Klasse f�r KoordinatenTransformation
		if (! m_pCT)
		{                                                                      
			DEX_Error (RC_Bufferext, EC_NOMEMORY);
			return E_OUTOFMEMORY;
		}
	}

WObjektGeometrie wBuffer;		// ObjektGeometrie des Puffers
HRESULT hr = WorkingBuffer_Geom (wObj, dWidth, bPBau, bsSide, cmMode, dPrec, wBuffer.ppi());

	if (FAILED (hr)) return hr;

ulong ulIdent = DEX_GetObjIdentEx (lONr);

	wBuffer->SetIdent (ulIdent);
	// OGNewObject:     permanentes Objekt in Datenbank aufnehmen
	// OGForceGeometry: auch au�erhalb des aktuellen Projekt-Containers speichern
	wBuffer->SetFlags (OGNewObject | OGForceGeometry);
#if _TRiAS_VER < 0x0300
	hr = wBuffer->GeometrieAnTRiAS (true, NULL);
#else
INT_PTR hPr = reinterpret_cast<INT_PTR>(DEX_GetObjectsProject (ulIdent));

	hr = wBuffer->GeometrieAnTRiASEx (hPr, true, NULL);
#endif // _TRiAS_VER < 0x0300


	if (SUCCEEDED(hr))
	{
		wBuffer->GetONr (plONr);

	string sUIText;
	ResString resText (ResID (IDS_UIFORMAT, pRF), 20);

		Format (sUIText, (char*)resText.Addr(), lONr, (long)dWidth);
		MerkmaleKopieren (lONr, *plONr, sUIText);

	long plOrigObjNr[1] = { lONr };

		ParentsUniqueIdents (*plONr, plOrigObjNr, 1);
	}
	else
		DEX_Error (RC_Bufferext, EC_NOBUFFER);

	return hr;

} // WorkingBuffer_ONr


// --------------------------------------------------------------------------------------------
// echter Puffer um pInObj-Objekt, das nicht in der DB existieren mu� und damit keine
// Objektnummer besitzen mu�; das Ergebnisobjekt pOutObj wird ebenfalls nicht in die DB
// gespeichert
// dWidth   Breite des Puffers (in Meter) (ist pInObj eine Fl�che, wird f�r dWidth < 0 den
//          Puffer nach innen gebildet)
// bsSide   die Seite, bei der der Puffer gebildet werden soll; m�glich sind 
//			BUFF_LEFT	linksseitiger Puffer
//			BUFF_RIGHT	rechtsseitiger Puffer
//			BUFF_BOTH	beidseitiger Puffer
// cmMode   Ausformung der konvexen Ecken; m�glich sind 
//			BUFF_ARC	quasi-kreisf�rmig (n-Eck)
//			BUFF_KITE	Drachenviereck
//			BUFF_TIP	spitz
//			BUFF_PLAIN	abgeflacht
// dPrec    L�nge der Kanten des n-Ecks (in Meter)  
STDMETHODIMP_ (HRESULT) BufferExtension :: WorkingBuffer_Geom (IObjektGeometrie* pInObj,
							  double dWidth, PuffBau bPBau, BuffSide bsSide, ConvexMode cmMode,
							  double dPrec, IObjektGeometrie** ppOutObj)
{
	_ASSERTE (pInObj != NULL);

	if (! m_pCT)
	{
		m_pCT = new CoordTransX();	// Klasse f�r KoordinatenTransformation
		if (! m_pCT)
		{                                                                      
			DEX_Error (RC_Bufferext, EC_NOMEMORY);
			return E_OUTOFMEMORY;
		}
	}

short iOT;
KoOrd* plXK; KoOrd* plYK;

	pInObj->GetObjTyp (&iOT);
	pInObj->GetX ((void**)&plXK);
	pInObj->GetY ((void**)&plYK);

EFlaeche* pBuFl = NULL;	// Puffer

	switch (iOT)
	{
		case OT_PUNKT:
		{
			pBuFl = PointBuffering (plXK[0], plYK[0], dWidth, dPrec);
			break;
		}

		case OT_KANTE:
		{
		long lCnt;

			pInObj->GetCnt (&lCnt);
			pBuFl = LineBuffering (plXK, plYK, lCnt, dWidth, bsSide, cmMode, dPrec);
			break;
		}

		case OT_FLAECHE:
		{
		long* plCnt;

			pInObj->GetLPCnt (&plCnt);
			pBuFl = AreaBuffering (plXK, plYK, plCnt[0], dWidth, bsSide, cmMode, dPrec);
			break;
		}

		default:	// Objekt weder Punkt, Linie noch Fl�che
			_ASSERTE (false);
			DEX_Error (RC_Bufferext, EC_NOGEOOBJEKT);
			return E_INVALIDARG;
	} // switch
	
	if (NULL == pBuFl) return E_FAIL;


HRESULT hr = S_OK;
int iKCnt = pBuFl->KantenAnz();

	for (int i = 0; i < iKCnt; i++)
	{
	long lKAiCnt = pBuFl->KA(i).ASP();	// St�tzpunktanzahl der i-ten pBuFl-Kontur
	KoOrd* plX = new KoOrd[lKAiCnt];
	KoOrd* plY = new KoOrd[lKAiCnt];

		if (!plX || !plY)
		{
			DELETE_VEC (plX);
			DEX_Error (RC_Bufferext, EC_NOMEMORY);
			return E_OUTOFMEMORY;
		}

		for (long j = 0; j < lKAiCnt; j++)
		{
			plX[j] = pBuFl->KA(i).SP(j).X();
			plY[j] = pBuFl->KA(i).SP(j).Y();
		}

		if (0 == i)
			hr = CreateInterfaceOG (ppOutObj, plX, plY, lKAiCnt, OT_FLAECHE);
		else
			hr = (*ppOutObj)->AddKante (plX, plY, lKAiCnt, -1);

		DELETE_VEC (plX);
		DELETE_VEC (plY);
	}

	DELETE_OBJ (pBuFl);
	return hr;

} // WorkingBuffer_Geom
