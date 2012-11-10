// Definitionen: Implementation of CTopicalObjects
// File: TopicalObjects.cpp
// H. Kaiser, W. M�rtl


#include "GeoEditP.h"

#include <registrx.hxx>		// CCurrentUser

#include "TopicalObjects.h"
#include "Strecke.hxx"


#if defined(_DEBUG)
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif // _DEBUG


#if _MSC_VER >= 1100
#include <new>
using std::bad_alloc;
#endif // _MSC_VER >= 1100


///////////////////////////////////////////////////////////////////////////////////////////////
// globale Parameter
extern ResourceFile* pRF;



///////////////////////////////////////////////////////////////////////////////////////////////
// die schon selektierten Objekte einsammeln und in m_TopObjs eintragen
BOOL _GEOEDIT_EXPORT FAR PASCAL SelectedObjects (long lONr, BOOL, void* pvSelObjs)
{
	_ASSERTE (lONr != 0);
	_ASSERTE (lONr != -1);

    if (0 != lONr && -1 != lONr)
    {
    	((CGeoObjs*)pvSelObjs)->AddObject (lONr);
    	return true;
    }
    return false;
}


///////////////////////////////////////////////////////////////////////////////////////////////
// CTopicalObjects

// Konstruktor
CTopicalObjects::CTopicalObjects (void) : m_TopObjs(reinterpret_cast<ITopicalObjects *>(this))
{
    m_dwCookie = 0L;

    m_bMarkVis = false;			// St�tzpunktmarkierungen (noch) nicht sichtbar machen
    m_bIsPaint = false;			// Hintergrund (durch GEOVIEWEVT_PaintingView ausgel�st) wird
    							//  augenblicklich nicht gezeichnet

Window Wnd(__hWndM);				// TRiAS-Hauptfenster
Dimension MWDim = Wnd.GetSize();	// Gr��e (im Point-Format) des Hauptfensters (eigentlich
    								// w�rde TRiAS-ViewFenster ausreichen)
	m_rcHintergrund.left = 0;
	m_rcHintergrund.right = MWDim.Width();
	m_rcHintergrund.bottom = 0;
	m_rcHintergrund.top = MWDim.Height();

CCurrentUser cuExtConfig (KEY_READ, RegistryExtPathEdit);

// Pixelanzahl f�r Markierungsquadrat aus der RegDB entnehmen
ResString UMarkGroesse (ResID (IDS_UMARKGROESSE, pRF), 30);	
ResString OMarkGroesse (ResID (IDS_OMARKGROESSE, pRF), 30);	
DWORD dwUWert, dwOWert;

    if (cuExtConfig.GetDWORD (UMarkGroesse.Addr(), dwUWert))
    	m_iUMarkGr = (int)dwUWert;
    else
    	m_iUMarkGr = iUGr;

    if (cuExtConfig.GetDWORD (OMarkGroesse.Addr(), dwOWert))
    	m_iOMarkGr = (int)dwOWert;
    else
    	m_iOMarkGr = iOGr;

// Vorgabe in der Registry vorerst doch in Pixel (NICHT in Millimeter), da bei den Anwendern
// die Registry-Eintr�ge schon auf Pixel ausgerichtet sind; dessen ungeachtet w�ren Millimeter
// wegen der verschiedenen Bildschirmaufl�sungen sinnvoller; vielleicht gehe ich dann doch noch
// auf Millimeter, wenn ich den schon lange gew�nschten Dialog anbiete (10.06.98)
//Dimension dimDots = GetDotsPerMM (NULL); // Pixel pro Millimeter f�r den Bildschirm

//	m_iUMarkGr *= dimDots.Width();
//	m_iOMarkGr *= dimDots.Width();


// Farbe f�r Markierungsquadrat aus der RegDB entnehmen
ResString resMarkColor (ResID (IDS_MARKCOLOR, pRF), 30);
ResString resMarkColorBegin (ResID (IDS_MARKCOLORBEGIN, pRF), 30);
ResString resMarkColorEnd (ResID (IDS_MARKCOLOREND, pRF), 30);
ResString resMarkBoundThick (ResID (IDS_MARKBOUNDTHICK, pRF), 30);
DWORD dwColor0, dwColor1, dwColor2, dwThickness;

    if (cuExtConfig.GetDWORD (resMarkColor.Addr(), dwColor0))
    	m_FillMC = Color (GetRValue(dwColor0), GetGValue(dwColor0), GetBValue(dwColor0));
    else
    	m_FillMC = Color (GetRValue(ulGW0), GetGValue(ulGW0), GetBValue(ulGW0));

    if (cuExtConfig.GetDWORD (resMarkColorBegin.Addr(), dwColor1))
    	m_FirstMC = Color (GetRValue(dwColor1), GetGValue(dwColor1), GetBValue(dwColor1));
    else
    	m_FirstMC = Color (GetRValue(ulGW1), GetGValue(ulGW1), GetBValue(ulGW1));

    if (cuExtConfig.GetDWORD (resMarkColorEnd.Addr(), dwColor2))
    	m_LastMC = Color (GetRValue(dwColor2), GetGValue(dwColor2), GetBValue(dwColor2));
    else
    	m_LastMC = Color (GetRValue(ulGW2), GetGValue(ulGW2), GetBValue(ulGW2));

    if (cuExtConfig.GetDWORD (resMarkBoundThick.Addr(), dwThickness))
    	m_iThick = (int)dwThickness;
    else
    	m_iThick = iThick;
}


// --------------------------------------------------------------------------------------------
// St�tzpunkte des pIOG-Objektes durch Markierungen optisch sichtbar machen (bVisible == true)
// bzw. diese Markierungen l�schen
HRESULT CTopicalObjects::MarkerVisibility (IObjektGeometrie* pIOG, bool bVisible)
{
    _ASSERTE (pIOG != NULL);

Window Wnd(__hWndM);	// TRiAS-Hauptfenster
CEierUhr Wait (&Wnd);
HRESULT hrRet = S_OK;	// return-Wert dieser Routine
int iMarkGr;
Marker* pMk = NULL;
long lCnt;
KoOrd* plXK; KoOrd* plYK;

    GetMarkerSizeBS (&iMarkGr);
    pIOG->GetCnt (&lCnt);
    pIOG->GetX ((void**)&plXK);
    pIOG->GetY ((void**)&plYK);

short iKontNr;	// f�r Routine IndexTest(); werden
long lInd;		//  hier nicht ausgewertet
IndPos IP = NICHTS;
short iOT;

	pIOG->GetObjTyp (&iOT);

	for (long i = lCnt - 1; i >= 0; i--)
	{
    Point BSPt = BSKoordinaten (plXK[i], plYK[i]);
    			
    	if (bVisible) {			// Markierung setzen

    		if (m_bIsPaint &&	// Nachzeichnen des Hintergrundes
    			(BSPt.X() < m_rcHintergrund.left || m_rcHintergrund.right < BSPt.X() ||
    			 BSPt.Y() < m_rcHintergrund.bottom || m_rcHintergrund.top < BSPt.Y()))
    			continue;	// Markierung nicht im Hintergrundsbereich

    		if (OT_FLAECHE == iOT)
    			pIOG->IndexTest (i, &iKontNr, &lInd, &IP);

    		// Markierungsquadrates des 1. und bei Kanten auch des letzten St�tzpunktes
			// hervorheben (ulGW0, ulGW1 bzw. ulGW2 sind in EditKonst.h definiert)
    		if (OT_KANTE == iOT && i == lCnt-1)
    			pMk = new Marker (m_FillMC, m_LastMC, m_iThick, BSPt, iMarkGr);
    		else if (0 == i || ERSTER == IP)
    			pMk = new Marker (m_FillMC, m_FirstMC, m_iThick, BSPt, iMarkGr);
    		else 
    			pMk = new Marker (m_FillMC, m_FillMC, m_iThick, BSPt, iMarkGr);

    		if (! pMk)
    		{
    			DEX_Error (RC_SelObjects, EC_NOMEMORY);
    			hrRet = E_OUTOFMEMORY;
    			break;
    		}
    		g_pTE->MVWind()->Draw (pMk);
			DELETE_OBJ (pMk);
    	}

    	else	// Markierung l�schen
		{
    	CoOrd hmg = iMarkGr/2 + 1;	// halbe Markergr��e; "+ 1" ist eine Sicherheitszugabe f�r
    								//  das Zeichnen
    	// Markierungsquadrat mit Sicherheitszugabe
    	Rectangle Rec (BSPt.Y()+hmg, BSPt.X()-hmg, BSPt.Y()-hmg, BSPt.X()+hmg);

    		DEX_RePaintRectWait (Rec);
    	}
    }
    return hrRet;

} // MarkerVisibility


// --------------------------------------------------------------------------------------------
// TRiASNotificationSink bei TRiAS wieder abmelden
HRESULT CTopicalObjects::DisconnectFromServer (void)
{
// k�nstliches AddRef, da uns nachfolgendes AtlUnadvise freigeben kann
WUnknown Unk ((ITopicalObjects *)this);

    AtlUnadvise (m_Site, IID_ITRiASNotificationSink, m_dwCookie); 
    
    m_Site.Assign (NULL);		// freigeben von TRiAS
    m_dwCookie = 0L;
    return S_OK;
}



///////////////////////////////////////////////////////////////////////////////////////////////
// *** interface ITopicalObjects 

// Speichern des TRiAS-Kontextes und registrieren beim ConnectionPoint
STDMETHODIMP CTopicalObjects::SetXtensionSite (IUnknown *pISite)
{
    try
    {
    	if (pISite != NULL)
    	{
    		if (0L != m_dwCookie)	// Anmelden
    			_com_issue_error (E_UNEXPECTED);	// darf noch nicht angemeldet sein
    		m_Site = pISite;		// throws_com_error
    		THROW_FAILED_HRESULT(AtlAdvise (m_Site, (ITRiASNotificationSink *)this,
    										IID_ITRiASNotificationSink, &m_dwCookie));
    		THROW_FAILED_HRESULT(InitWithSelectedObjects());
    	}
    	else if (0 != m_dwCookie)	// Abmelden
    		THROW_FAILED_HRESULT(DisconnectFromServer());	// gibt uns u.u. frei

    }
    catch (_com_error& e)
    {
    	return _COM_ERROR (e);
    }
    return S_OK;

} // SetXtensionSite


// --------------------------------------------------------------------------------------------
// die schon (in allen Recherchefenstern) selektierten Objekte einsammeln und in m_TopObjs
// eintragen
STDMETHODIMP CTopicalObjects::InitWithSelectedObjects (void)
{
	m_TopObjs.DeleteObjects();

ENUMLONGKEY ELK;

    ELK.eKey = (DWORD) 0;	// Suchschl�ssel (Fenster-Handle von allen Recherchefenstern)
    ELK.eFcn = (ENUMLONGKEYPROC) SelectedObjects;
    ELK.ePtr = (void*)&m_TopObjs;
    DEX_EnumSelectedObjects (ELK);

    return S_OK;

} // InitWithSelectedObjects


// --------------------------------------------------------------------------------------------
// die "von au�en" vorgebbaren pIEnum-Objekte in m_TopObjs eintragen
STDMETHODIMP CTopicalObjects::InitWithExternalObjects (IEnumObjectsByNumber* pIEnum)
{
    _ASSERTE (pIEnum != NULL);

long lONr = 0;

    for (pIEnum->Reset(); S_OK == pIEnum->Next (1, &lONr, NULL); )
    {
		_ASSERTE (lONr != 0);
		_ASSERTE (lONr != -1);

		RETURN_FAILED_HRESULT (m_TopObjs.AddObject (lONr));
    }

    return S_OK;

} // InitWithExternalObjects


// --------------------------------------------------------------------------------------------
// pIOG-Objekte in m_TopObjs eintragen
STDMETHODIMP CTopicalObjects::AddTopicalObjectGeometry (IUnknown* pIOG)
{
    return m_TopObjs.AddObject ((IObjektGeometrie*)pIOG);
}


// --------------------------------------------------------------------------------------------
// R�ckgabe der ausgew�hlten Objekte
STDMETHODIMP CTopicalObjects::GetEnumTopicalObjects (IEnumObjectsByNumber** ppIEnum)
{
    return m_TopObjs.GetEnumObjectsByNumber (ppIEnum);
}


// --------------------------------------------------------------------------------------------
// R�ckgabe der ausgew�hlten Objekte
// bAll == TRUE:  alle Objekte
// bAll == FALSE: nur die tempor�ren Objekte
STDMETHODIMP CTopicalObjects::GetEnumTopicalObjectsGeometry (BOOL bAll,
															 IEnumObjektGeometrie** ppIEnum)
{
    return m_TopObjs.GetEnumObjektGeometrie (ppIEnum, bAll);
}


// --------------------------------------------------------------------------------------------
// Test, ob sich lONr-Objekt in der m_TopObjs-Liste befindet, dann *pbContain == true
STDMETHODIMP CTopicalObjects::IsTopicalObject (long lONr, BOOL* pbContain)
{
    return m_TopObjs.IsObject (lONr, pbContain);
}


// --------------------------------------------------------------------------------------------
// Test, ob sich pIOG-Objekt in der m_TopObjs-Liste befindet, dann *pbContain == true
STDMETHODIMP CTopicalObjects::IsTopicalObjectGeometry (IUnknown* pIOG, BOOL* pbContain)
{
    return m_TopObjs.IsObject ((IObjektGeometrie*)pIOG, pbContain);
}


// --------------------------------------------------------------------------------------------
// entfernt das lONr-Objekt aus der m_TopObjs-Liste
STDMETHODIMP CTopicalObjects::DeleteTopicalObject (long lONr)
{
    return m_TopObjs.DeleteObject (lONr);
}


// --------------------------------------------------------------------------------------------
// entfernt das pIOG-Objekt aus der m_TopObjs-Liste
STDMETHODIMP CTopicalObjects::DeleteTopicalObjectGeometry (IUnknown* pIOG)
{
    return m_TopObjs.DeleteObject ((IObjektGeometrie*)pIOG);
}


// --------------------------------------------------------------------------------------------
// entfernt Objekte aus der m_TopObjs-Liste
// bAll == TRUE:  alle Objekte
// bAll == FALSE: nur die tempor�ren Objekte
STDMETHODIMP CTopicalObjects::DeleteTopicalObjects (BOOL bAll)
{
    return m_TopObjs.DeleteObjects (bAll);
}


// --------------------------------------------------------------------------------------------
// liefert das kleinste umschreibende Rechteck von Objekten aus der Liste;
// bAll == TRUE:  alle Objekte
// bAll == FALSE: nur die tempor�ren Objekte
STDMETHODIMP CTopicalObjects::GetTopicalObjectsRectangle (BOOL bAll, LONG* plXmin,
													  LONG* plXmax, LONG* plYmin, LONG* plYmax)
{
    return m_TopObjs.GetObjectsRectangle (plXmin, plXmax, plYmin, plYmax, bAll);
}


// --------------------------------------------------------------------------------------------
// Anzahl der ausgew�hlten Objekte zur�ckgeben
STDMETHODIMP CTopicalObjects::GetCount (long* plCnt)
{
    *plCnt = m_TopObjs.Count();
    return S_OK;

} // GetCount


// --------------------------------------------------------------------------------------------
// liefert Type(en) der ausgew�hlten Objekte;
// unter den ausgew�hlten Objekten befindet sich mindestens ein
//   Punktobjekt (Bit 0 gesetzt)
//   Linienobjekt (Bit 1 gesetzt)
//   Fl�chenobjekt (Bit 2 gesetzt)
STDMETHODIMP CTopicalObjects::GetObjTypes (int* piAllOT)
{
    _ASSERTE (piAllOT != NULL);

    *piAllOT = 0;	// R�ckgabewert

WEnumUnknown wEnum;

	RETURN_FAILED_HRESULT (m_TopObjs.GetEnumObjects (wEnum.ppi()));

HRESULT hrRet = S_OK;
short iOT;

    try
    {
	WUnknown Unk;

    	for (wEnum->Reset(); S_OK == wEnum->Next (1, Unk.ppi(), NULL); )
    	{
		WObjektGeometrie wObj (Unk);

    		wObj->GetObjTyp (&iOT);
    		if (OT_PUNKT == iOT)
    			*piAllOT |= OTPunkt;
    		else if (OT_KANTE == iOT)
    			*piAllOT |= OTLinie;
    		else if (OT_FLAECHE == iOT)
    			*piAllOT |= OTFlaeche;
    		else 
    		{
    			_ASSERTE (iOT == OT_PUNKT || iOT == OT_KANTE || iOT == OT_FLAECHE);
    			hrRet = E_UNEXPECTED;	// sonst nur weitermachen
    		}
    	}
    }
    catch (_com_error& e)
    {
    	return _COM_ERROR (e);
    }	

    return hrRet;

} // GetObjTypes


// --------------------------------------------------------------------------------------------
// Gr��e eines Markers in BS-Koordinaten bestimmen
STDMETHODIMP CTopicalObjects::GetMarkerSizeBS (int* piMS)
{
double dQuot = 1.;	// Quotient von Bezugsma�stab und Darstellungsma�stab
    				// (h�ngt vom Zoom-Zustand ab)

    if (!DEX_GetActiveScaling (dQuot))
		dQuot = 1.;

    if (dQuot <= 0.)
    {
    	_ASSERTE (dQuot > 0.);
    	*piMS = m_iUMarkGr;   // um Division durch Null vorzubeugen
    	return S_FALSE;
    }

int iMG = (int) (m_iUMarkGr / dQuot / 2. + 0.5);	// "2" ist ein heuristischer Wert

    if (iMG < m_iUMarkGr) iMG = m_iUMarkGr;	// untere Grenze
    if (iMG > m_iOMarkGr) iMG = m_iOMarkGr;	// obere Grenze

    *piMS = iMG;
    return S_OK;

} // GetMarkerSizeBS


// --------------------------------------------------------------------------------------------
// St�tzpunkte aller ausgew�hlten, d. h. aller in m_TopObjs befindlichen Objekte markieren
STDMETHODIMP CTopicalObjects::VerticesIndicate (void)
{
KoOrd lXmin, lXmax, lYmin, lYmax;	// Koordinaten des wObjGeom-Containers
WEnumUnknown wEnum;

	RETURN_FAILED_HRESULT (m_TopObjs.GetEnumObjects (wEnum.ppi()));

    try
    {
	WUnknown Unk;

    	for (wEnum->Reset(); S_OK == wEnum->Next (1, Unk.ppi(), NULL); )
    	{
		WObjektGeometrie wObj (Unk);

    		wObj->GetCont (&lXmin, &lXmax, &lYmin, &lYmax);

    	Point PLU = BSKoordinaten (lXmin, lYmin);
    	Point PRO = BSKoordinaten (lXmax, lYmax);

	 		// Objektcontainer hat mindestens einen Punkt mit dem Hintergrundsbereich gemeinsam
    		if (!m_bIsPaint ||	// Markierungen erstmalig zeichnen
    			//  bzw. Markierungen im Hintergrundsbereich nachzeichnen
    			(PLU.X() <= m_rcHintergrund.right && m_rcHintergrund.left <= PRO.X() &&
    			PLU.Y() <= m_rcHintergrund.top && m_rcHintergrund.bottom <= PRO.Y()))
    			THROW_FAILED_HRESULT (MarkerVisibility (wObj, true));
    	}
    }
    catch (_com_error& e)
    {
    	return _COM_ERROR (e);
    }

    return S_OK;

} // VerticesIndicate


// --------------------------------------------------------------------------------------------
// St�tzpunktmarkierungen aller in m_TopObjs befindlichen Objekte l�schen
STDMETHODIMP CTopicalObjects::VerticesUnIndicate (void)
{
WEnumUnknown wEnum;

	RETURN_FAILED_HRESULT (m_TopObjs.GetEnumObjects (wEnum.ppi()));

    try
    {
	WUnknown Unk;

    	for (wEnum->Reset(); S_OK == wEnum->Next (1, Unk.ppi(), NULL); )
    	{
		WObjektGeometrie wObj (Unk);

    		THROW_FAILED_HRESULT (MarkerVisibility (wObj, false));
    	}
    }
    catch (_com_error& e)
    {
    	return _COM_ERROR (e);
    }

    return S_OK;

} // VerticesUnIndicate


// --------------------------------------------------------------------------------------------
// Funktion ermittelt die CursorPosition pCP bez. aller ausgew�hlten m_TopObjs-Objekte sowie
// (wenn ppBelowObjs != NULL) die Objekte ppBelowObjs, die unter der Mausspitze liegen;
// au�erdem wird in pbSpezCP angezeigt, ob f�r die CursorPosition einer der Spezialf�lle
// CURSPOS_FIRST_VERTEX, CURSPOS_LAST_VERTEX, CURSPOS_INBORDER_VERTEX bzw. CURSPOS_INBORDER
// zutrifft, da diese Information f�r den Men�aufbau in ObjectModify ben�tigt wird
// R�ckgabewerte der CursorPosition pCP sind: CURSPOS_VERTEX, CURSPOS_LINE und CURSPOS_UNKNOWN
STDMETHODIMP CTopicalObjects::CursorAtTopicalObjects (CursPos* pCP, BOOL* pbSpezCP,
							  long* plGrabX, long* plGrabY, IEnumObjektGeometrie** ppBelowObjs)
{
    m_GrabPkt.X() = 0;					// falls es keinen GrabPunkt gibt
    m_GrabPkt.Y() = 0;
    if (pbSpezCP) *pbSpezCP = false;	// f�r den Fehlerfall
    *pCP = CURSPOS_UNKNOWN;

// Umrechnung des Punktes, auf den der Cursor zeigt, von BS- in DB-Koordinaten
Point Pt;		// Position in BS-Koordinaten und
EPunkt Pkt;		//  in DB-Koordinaten

    if (!GetCursorCoordinates (Pt, Pkt)) return E_FAIL;

    MarkerInDBCoords (Pt);

WEnumUnknown wEnum;

	RETURN_FAILED_HRESULT (m_TopObjs.GetEnumObjects (wEnum.ppi()));

CursPos CP;				// CursorPosition

// nachfolgender Parameter ist f�r den Fall erforderlich, da� bei mehreren wEnum-Objekten
// manchmal *pbSpezCP = true, aber auch manchmal *pbSpezCP = false werden m��te; in diesem
// Fall wird *pbSpezCP = false gesetzt (03.07.98)
bool bSpezCP = true;

    try
    {
    // Objektgeometrie'n, die evtl. zur�ckgegeben werden
	WEnumObjektGeometrie wOutObjs (CLSID_EnumObjektGeometrie);
	WUnknown Unk;

    	for (wEnum->Reset(); S_OK == wEnum->Next (1, Unk.ppi(), NULL); )
    	{
		WObjektGeometrie wObj (Unk);

    		wObj->CursorPositionAtObject (Pkt.X(), Pkt.Y(), m_lMBX/2, m_lMBY/2, m_lEpsilon,
    									  true, &CP, &m_GrabPkt.X(), &m_GrabPkt.Y());

    		if (CURSPOS_VERTEX == CP || CURSPOS_FIRST_VERTEX == CP ||
    			CURSPOS_LAST_VERTEX == CP || CURSPOS_OUTBORDER_VERTEX == CP ||
    			CURSPOS_INBORDER_VERTEX == CP || CURSPOS_LINE == CP ||
    			CURSPOS_OUTBORDER == CP || CURSPOS_INBORDER == CP)
    		{
    			if ((CURSPOS_FIRST_VERTEX != CP && CURSPOS_LAST_VERTEX != CP &&
    				CURSPOS_INBORDER_VERTEX != CP && CURSPOS_INBORDER != CP))
    				bSpezCP = false;
    				

    			if (CURSPOS_VERTEX == CP ||
    				CURSPOS_FIRST_VERTEX == CP || CURSPOS_LAST_VERTEX == CP ||
    				CURSPOS_OUTBORDER_VERTEX == CP || CURSPOS_INBORDER_VERTEX == CP)
   					*pCP = CURSPOS_VERTEX;
    			else if (CURSPOS_LINE == CP ||
    					 CURSPOS_OUTBORDER == CP || CURSPOS_INBORDER == CP)
    			{
    				if (CURSPOS_VERTEX != *pCP)
    					*pCP = CURSPOS_LINE;
    				else
    					continue;
    			}

    			if (plGrabX) *plGrabX = m_GrabPkt.X();
    			if (plGrabY) *plGrabY = m_GrabPkt.Y();

    			if (ppBelowObjs)
					wOutObjs->AddItem (wObj);

    		} // if
    	} // for

    	if (pbSpezCP) *pbSpezCP = bSpezCP;	// 03.07.98

    	if (ppBelowObjs)
    		*ppBelowObjs = wOutObjs.detach();
    } // try

    catch (_com_error& e)
    {
    	return _COM_ERROR (e);
    }

    return S_FALSE;

} // CursorAtTopicalObjects


// --------------------------------------------------------------------------------------------
// Funktion ermittelt die CursorPosition pCP bez. der pIObj-Objekte;
// R�ckgabewerte sind: CURSPOS_OBJECT und CURSPOS_OUTSIDE
STDMETHODIMP CTopicalObjects::CursorInSomeTopObjects (IEnumObjektGeometrie* pIObj,
	 												  BOOL bInBorder, CursPos* pCP)
{
    _ASSERTE (pCP != NULL);

    *pCP = CURSPOS_OUTSIDE;

// Umrechnung des Punktes, auf den der Cursor zeigt, von BS- in DB-Koordinaten
Point Pt;		// Position in BS-Koordinaten und
EPunkt Pkt;		//  in DB-Koordinaten

    if (!GetCursorCoordinates (Pt, Pkt)) return E_FAIL;

    MarkerInDBCoords (Pt);

CursPos CP;		// CursorPosition (CURSPOS_OBJECT bzw. CURSPOS_OUTSIDE)

    try
    {
	WUnknown Unk;

    	for (pIObj->Reset(); S_OK == pIObj->Next (1, Unk.ppi(), NULL); )
    	{
		WObjektGeometrie wObj (Unk);

    		THROW_FAILED_HRESULT (wObj->CursorInObject (Pkt.X(), Pkt.Y(), m_lMBX/2, m_lMBY/2,
    													m_lEpsilon, bInBorder, &CP));

    		if (CURSPOS_OBJECT == CP)
    		{
    			*pCP = CURSPOS_OBJECT;
    			return S_OK;
    		}
    	}
    }
    catch (_com_error& e)
    {
    	return _COM_ERROR (e);
    }

    return S_FALSE;

} // CursorInSomeTopObjects


// --------------------------------------------------------------------------------------------
// Funktion ermittelt die CursorPosition pCP bez. der Marker der pIObj-Objekte;
// R�ckgabewerte sind: CURSPOS_VERTEX und CURSPOS_UNKNOWN
STDMETHODIMP CTopicalObjects::CursorInMarkerSomeTopObjects (IEnumObjektGeometrie* pIObj,
    														CursPos* pCP)
{
    if (NULL == pIObj)
    	return S_FALSE;

    _ASSERTE (pCP != NULL);

    m_GrabPkt.X() = 0;			// falls es keinen GrabPunkt gibt
    m_GrabPkt.Y() = 0;
    *pCP = CURSPOS_UNKNOWN;

// Umrechnung des Punktes, auf den der Cursor zeigt, von BS- in DB-Koordinaten
Point Pt;		// Position in BS-Koordinaten und
EPunkt Pkt;		//  in DB-Koordinaten

    if (!GetCursorCoordinates (Pt, Pkt)) return E_FAIL;

    MarkerInDBCoords (Pt);

BOOL bInMark;			// Cursor nicht/in einem Marker (false/true)
WObjektGeometrie wObj;	// ObjektGeometrie des lONr-Objektes

    try
    {
	WUnknown Unk;

    	for (pIObj->Reset(); S_OK == pIObj->Next (1, Unk.ppi(), NULL); )
    	{
		WObjektGeometrie wObj (Unk);

    		wObj->CursorInMarker (Pkt.X(), Pkt.Y(), m_lMBX/2, m_lMBY/2, &bInMark,
    							  &m_GrabPkt.X(), &m_GrabPkt.Y());

    		if (bInMark)	// Cursor in einem Marker
    		{
    			*pCP = CURSPOS_VERTEX;
    			return S_OK;
    		}
    	}
    }
    catch (_com_error& e)
    {
    	return _COM_ERROR (e);
    }

    return S_FALSE;

} // CursorInMarkerSomeTopObjects


// --------------------------------------------------------------------------------------------
// Funktion ermittelt die CursorPosition pCP bei der Fl�chenteilung;
// bShift: SHIFT-Taste nicht/gedr�ckt (false/true)
// R�ckgabewerte sind: CURSPOS_VERTEX, VERTEX_LINE, CURSPOS_OBJECT und CURSPOS_OUTSIDE
STDMETHODIMP CTopicalObjects::CursorForAreaPartition (IUnknown* pIOG, CursPos* pCP,
    												  long* plGrabX, long* plGrabY)
{
    m_GrabPkt.X() = 0;			// falls es keinen GrabPunkt gibt
    m_GrabPkt.Y() = 0;
    *pCP = CURSPOS_OUTSIDE;

// Umrechnung des Punktes, auf den der Cursor zeigt, von BS- in DB-Koordinaten
Point Pt;		// Position in BS-Koordinaten und
EPunkt Pkt;		//  in DB-Koordinaten

    if (!GetCursorCoordinates (Pt, Pkt)) return E_FAIL;

    MarkerInDBCoords (Pt);

CursPos CP;		// CursorPosition

    ((IObjektGeometrie*)pIOG)->CursorPositionAtObject (Pkt.X(), Pkt.Y(), m_lMBX/2, m_lMBY/2,
    								   m_lEpsilon, false, &CP, &m_GrabPkt.X(), &m_GrabPkt.Y());

    if (plGrabX) *plGrabX = m_GrabPkt.X();
    if (plGrabY) *plGrabY = m_GrabPkt.Y();

    if (CURSPOS_VERTEX == CP ||
    	CURSPOS_FIRST_VERTEX == CP || CURSPOS_LAST_VERTEX == CP ||
    	CURSPOS_OUTBORDER_VERTEX == CP || CURSPOS_INBORDER_VERTEX == CP)
    {
    	*pCP = CURSPOS_VERTEX;
    	return S_OK;
    }

    if (CURSPOS_LINE == CP || CURSPOS_OUTBORDER == CP || CURSPOS_INBORDER == CP)
    {
    	*pCP = CURSPOS_LINE;
    	return S_OK;
    }

    ((IObjektGeometrie*)pIOG)->CursorInObject (Pkt.X(), Pkt.Y(), m_lMBX/2, m_lMBY/2,
    										   m_lEpsilon, false, &CP);

    if (CURSPOS_OBJECT == CP)
    	*pCP = CURSPOS_OBJECT;

    return S_OK;

} // CursorForAreaPartition


// --------------------------------------------------------------------------------------------
// Funktion ermittelt die CursorPosition pCP bez. aller ausgew�hlten m_TopObjs-Objekte
// (CURSPOS_VERTEX) sowie der pIObj-Objekte (CURSPOS_OBJECT und CURSPOS_OUTSIDE);
// R�ckgabewerte sind: CURSPOS_VERTEX, CURSPOS_OBJECT und CURSPOS_OUTSIDE
STDMETHODIMP CTopicalObjects::CursorForIslandAdd (IEnumObjektGeometrie* pIObj, BOOL bInBorder,
    											  CursPos* pCP)
{
	_ASSERTE (pIObj != NULL);
    _ASSERTE (pCP != NULL);

    m_GrabPkt.X() = 0;			// falls es keinen GrabPunkt gibt
    m_GrabPkt.Y() = 0;
    *pCP = CURSPOS_OUTSIDE;

// Umrechnung des Punktes, auf den der Cursor zeigt, von BS- in DB-Koordinaten
Point Pt;		// Position in BS-Koordinaten und
EPunkt Pkt;		//  in DB-Koordinaten

    if (!GetCursorCoordinates (Pt, Pkt)) return E_FAIL;

    MarkerInDBCoords (Pt);

WEnumObjektGeometrie wEnum;

	RETURN_FAILED_HRESULT (m_TopObjs.GetEnumObjektGeometrie (wEnum.ppi()));

CursPos CP;				// CursorPosition (CURSPOS_OBJECT bzw. CURSPOS_OUTSIDE)
BOOL bInMark;			// Cursor nicht/in einem Marker (false/true)
WUnknown Unk;
WObjektGeometrie wObj;


    try
    {
    	for (wEnum->Reset(); S_OK == wEnum->Next (1, Unk.ppi(), NULL); )
		{
			wObj = Unk;
    		wObj->CursorInMarker (Pkt.X(), Pkt.Y(), m_lMBX/2, m_lMBY/2, &bInMark,
    							  &m_GrabPkt.X(), &m_GrabPkt.Y());

    		if (bInMark)	// Cursor in einem Marker
    		{
    			*pCP = CURSPOS_VERTEX;
// Die nachfolgende return-Zeile habe ich aus einem nicht mehr nachvollziehbarem Grund einmal
// herauskommentiert und daf�r die break-Zeile eingef�gt. Dies hat aber zur Folge, da� das Ergebnis "Cursor
// innerhalb einer Markierung" durch "*pCP = CURSPOS_OUTSIDE;" wieder eliminiert werden kann (08.04.99)
				return S_OK;
//    			break;
    		}
    	}

    	for (pIObj->Reset(); S_OK == pIObj->Next (1, Unk.ppi(), NULL); )
		{
			wObj = Unk;
    		THROW_FAILED_HRESULT (wObj->CursorInObject (Pkt.X(), Pkt.Y(), m_lMBX/2, m_lMBY/2,
    													m_lEpsilon, bInBorder, &CP));
    		if (CURSPOS_OBJECT == CP)
    		{
    			if (CURSPOS_VERTEX != *pCP)
    				*pCP = CURSPOS_OBJECT;
    			return S_OK;
    		}
    	}

    	*pCP = CURSPOS_OUTSIDE;
    }

    catch (_com_error& e)
    {
    	return _COM_ERROR (e);
    }

    return S_FALSE;

} // CursorForIslandAdd


// --------------------------------------------------------------------------------------------
// Mausspitze pMPT auf den St�tzpunkt m_GrabPkt ziehen, der in (plGrabX, plGrabY) zur�ckgegeben
// wird, wenn die SHIFT-Taste nicht gedr�ckt wurde.
// Wenn ppBelowObjs != NULL gilt, werden in ppBelowObjs die Objektnummern der Objekte
// zur�ckgegeben, die den GrabPkt als St�tzpunkt besitzen.
// return-Wert der Routine, wenn nicht/gegrabt wurde: S_FALSE / S_OK 
STDMETHODIMP CTopicalObjects::NewVertexWithGrab (POINT* pMPT, IDragObject* pDragObj,
    						  long* plGrabX, long* plGrabY, IEnumObjektGeometrie** ppBelowObjs)
{
    if (GetKeyState (VK_SHIFT) < 0)	//  SHIFT-Taste gedr�ckt
    	return S_FALSE;	// es wird nicht gegrabt, da SHIFT-Taste gedr�ckt ist

    if (m_GrabPkt.X() <= 0 || m_GrabPkt.Y() <= 0)
    	return S_FALSE;		// es kann nicht gegrabt werden, da es keinen GrabPunkt gibt

    if (plGrabX && plGrabY)
    {
    	*plGrabX = m_GrabPkt.X();
    	*plGrabY = m_GrabPkt.Y();

    Point MPt = BSKoordinaten (m_GrabPkt.X(), m_GrabPkt.Y());

	 	*pMPT = (POINT&)MPt;	// gegrabten BS-Punkt zur�ckgeben
    }

    if (pDragObj)	// wird z.B. ein Punktobjekt editiert, ist pDragObj == NULL
    {
    	// Strecke mit ungegrabtem pMPT l�schen
    	pDragObj->SetEndPoint (*pMPT, m_bIsPaint, TRUE);
    	// Strecke mit gegrabtem pMPT neu zeichnen
    	pDragObj->SetEndPoint (*pMPT, m_bIsPaint, TRUE);
    }

    if (ppBelowObjs)
    	GetBelowObjects (ppBelowObjs);

    return S_OK;	// es wurde gegrabt

} // NewVertexWithGrab


// --------------------------------------------------------------------------------------------
// Liefert alle ausgew�hlten Linien- und Fl�chenobjekte, die den GrabPunkt als St�tzpunkt
// besitzen
HRESULT CTopicalObjects::GetBelowObjects (IEnumObjektGeometrie** ppBelowObjs)
{
    _ASSERTE (ppBelowObjs != NULL);

WEnumObjektGeometrie wEnum;

	RETURN_FAILED_HRESULT (m_TopObjs.GetEnumObjektGeometrie (wEnum.ppi()));

WObjektGeometrie wObj;	// ObjektGeometrie eines einzelnen wEnum-Objektes
short iOT;				// Objekttyp des wObj-Objektes
long lCnt;
KoOrd* plXK; KoOrd* plYK;

    try
    {
    // Objektgeometrie'n, die evtl. zur�ckgegeben werden
    WEnumObjektGeometrie wOutObjs (CLSID_EnumObjektGeometrie);
	WUnknown Unk;

    	for (wEnum->Reset(); S_OK == wEnum->Next (1, Unk.ppi(), NULL); )
    	{
			wObj = Unk;

    		wObj->GetObjTyp (&iOT);
	  		if (OT_KANTE != iOT && OT_FLAECHE != iOT)
    			continue;	// nur Linien- bzw. Fl�chenobjekte ber�cksichtigen

    		wObj->GetCnt (&lCnt);
    		wObj->GetX ((void**)&plXK);
    		wObj->GetY ((void**)&plYK);

    		for (long j = 0; j < lCnt; j++)
    			if (plXK[j] == m_GrabPkt.X() && plYK[j] == m_GrabPkt.Y())
    			{
					wOutObjs->AddItem (wObj);
    				break;
    			}
    	}

    	*ppBelowObjs = wOutObjs.detach();
    }

    catch (_com_error& e)
    {
    	return _COM_ERROR (e);
    }

    return S_OK;

} // GetBelowObjects


// --------------------------------------------------------------------------------------------
// Test, ob Grab-Funktion m�glich ist; dann R�ckgabe von S_OK, sonst E_FAIL;
// Grabben ist mit "sich selbst" nur eingeschr�nkt m�glich: bei Linienobjekten zwischen den
// beiden Endpunkten und bei Fl�chenobjekten, nur dann mit einer anderen Kontur, wenn es nicht
// schon einen Ber�hrungspunkt gibt;
// (lStartPktX,lStartPktY) ist der Punkt, bei dem die Objektmodifikation begann;
// (lEndPktX,lEndPktY) ist der Punkt, bei dem die Objektmodifikation abgeschlossen werden soll;
// in pStBelowObjs sind die Objektnummern der Objekte enthalten, die bei Beginn der
// Objektmodifikation, in pAbBelowObjs die Objekte, die beim Abschlu� unter der Mausspitze lagen
// lEpsilon >= 0 wird bei St�tzpunktHinzuf�gen f�r den Test auf N�he zu einer Strecke
// ben�tigt; deshalb mu� bei St�tzpunktVerschieben lEpsilon < 0 sein
STDMETHODIMP CTopicalObjects::IsGrabAllowable (long lStartPktX, long lStartPktY, long lEndPktX,
											 long lEndPktY, IEnumObjektGeometrie* pStBelowObjs,
											 IEnumObjektGeometrie* pAbBelowObjs, long lEpsilon)
{
    _ASSERTE (pStBelowObjs != NULL);
    _ASSERTE (pAbBelowObjs != NULL);

long lStONr;	// eine Objektnummer der pStBelowObjs-Objekte
long lActONr;	// eine Objektnummer der pAbBelowObjs-Objekte
short iKIndS;	// Konturindex f�r Punkt (lStartPktX,lStartPktY)
short iKIndE;	// Konturindex f�r Punkt (lEndPktX,lEndPktY)

    try
    {
    // neue IObjektGeometrie erzeugen und initialisieren
	WUnknown Unk;

    	for (pStBelowObjs->Reset(); S_OK == pStBelowObjs->Next (1, Unk.ppi(), NULL); )
    	{
		WObjektGeometrie wObj (Unk);

			wObj->GetONr (&lStONr);

	    	for (pAbBelowObjs->Reset(); S_OK == pAbBelowObjs->Next (1, Unk.ppi(), NULL); )
    		{
			WObjektGeometrie wActObj (Unk);

				wActObj->GetONr (&lActONr);

    			if (lStONr != lActONr) continue;

    		// Grabben mit "sich selbst" ist eingeschr�nkt m�glich
    		int iOT = DEX_GetObjectType (lStONr);

    			if (OT_KANTE != iOT && OT_FLAECHE != iOT) return E_FAIL;

    			// bei einer Linie ist das Grabben zwischen den beiden Endpunkte m�glich
    			if (OT_KANTE == iOT)
    			{
    				if (! GrabToClosedLine (wObj, lStartPktX, lStartPktY, lEndPktX, lEndPktY))
    					return E_FAIL;
    			}

    			// bei einer Fl�che ist das Angrabben an eine andere Kontur dieser Fl�che einmal
    			// m�glich
    			else
    			{
    			bool bSt = KonturIndex (lStartPktX, lStartPktY, wObj, lEpsilon, iKIndS);
    			bool bEnd = KonturIndex (lEndPktX, lEndPktY, wObj, lEpsilon, iKIndE);

    				if (bSt && bEnd)
    				{
    					if (iKIndS == iKIndE)
    						return E_FAIL;	// Angrabben an die gleiche Kontur ist nicht erlaubt

    					// Test, ob zwischen der iKIndS- und der iKIndE-Kontur schon EINE
    					// Ber�hrung existiert
    					if (IsAlreadyContact (wObj, iKIndS, iKIndE))
    						return E_FAIL;	// ein zweites Angrabben ist nicht mehr m�glich
    				}
    			}
    		} // for
    	} // for
    }
    catch (_com_error& e)
    {
    	return _COM_ERROR (e);
    }

    return S_OK;

} // IsGrabAllowable


// --------------------------------------------------------------------------------------------
// Gr��e eines Markers von BS- in Datenbankkoordinaten umrechnen
void CTopicalObjects::MarkerInDBCoords (Point Pt)
{
int iMarkGr;

    GetMarkerSizeBS (&iMarkGr);

// linker oberer Eckpunkt bzw. rechter unterer Eckpunkt eines gedachten Markers um die aktuelle
// CursorPosition Pt (in BS-Koordinaten)
Point P1 (Pt.X() - iMarkGr/2, Pt.Y() + iMarkGr/2);
Point P2 (Pt.X() + iMarkGr/2, Pt.Y() - iMarkGr/2);
    									
EPunkt PLO = DBKoordinaten (P1);	// dto. in DB-Koordinaten
EPunkt PRU = DBKoordinaten (P2);

    m_lMBX = PRU.X() - PLO.X();	// Gr��e eines Markers (in DB-Koordinaten) in x- bzw.
    if (m_lMBX < 2) m_lMBX = 2; 
    m_lMBY = PLO.Y() - PRU.Y();	//  y-Richtung
    if (m_lMBY < 2) m_lMBY = 2; 
//	m_lEpsilon = (m_lMBX + m_lMBY) / 6;
	m_lEpsilon = (m_lMBX + m_lMBY) / 4;	// #WM030509
    if (m_lEpsilon < 1) m_lEpsilon = 1; 

} // MarkerInDBCoords


// --------------------------------------------------------------------------------------------
// St�tzpunktmarkierungen nach Zeichnen eines Hintergrundbereiches nachzeichnen
STDMETHODIMP CTopicalObjects::MarkerTracing (void)
{
    if (m_bMarkVis)
    {
    	if (m_TopObjs.Count() > 0)	// mindestens 1 ausgew�hltes Objekt
    		VerticesIndicate();		// Markierungen erneut zeichnen

    	m_bIsPaint = false;	// Hintergrund wurde gezeichnet (darf nicht vor VerticesIndicate()
    						// gesetzt werden !!!)
    	return S_OK;
    }
    	
    m_bIsPaint = false;	// Hintergrund wurde gezeichnet

// .... hier kommt noch etwas hin ....

    return S_OK;

} // MarkerTracing


// --------------------------------------------------------------------------------------------
// St�tzpunktmarkierungen des lONr-Objektes anzeigen (bVisible == true) oder l�schen
// (bVisible == false), wenn eine EditierWerkzeug aktiviert ist;
// return-Werte sind:
//  S_OK      im fehlerfreien Fall
//  S_FALSE   es ist kein EditierWerkzeug aktiviert
STDMETHODIMP CTopicalObjects::MarkerUpToDate (long lONr, bool bVisible)
{
    if (m_bMarkVis)
    {
    	try
    	{
    	WObjektGeometrie wObjGeom;	// leeres Objekt anlegen

    		// wObjGeom f�llen
    		THROW_FAILED_HRESULT (CreateInterfaceOG (wObjGeom.ppi(), lONr));
    		THROW_FAILED_HRESULT (MarkerVisibility (wObjGeom, bVisible));
    	}
    	catch (_com_error& e)
    	{
    		return _COM_ERROR (e);
    	}	

    	return S_OK;
    }

    return S_FALSE;

} // MarkerUpToDate


// --------------------------------------------------------------------------------------------
// Test, ob das Grabben bei einem Linienobjekt zwischen den beiden Endpunkten erfolgt
// (return-Wert: true) oder nicht (false)
bool CTopicalObjects::GrabToClosedLine (IObjektGeometrie* pIOG, KoOrd lStartPktX,
    									KoOrd lStartPktY, KoOrd lEndPktX, KoOrd lEndPktY)
{
    _ASSERTE (pIOG != NULL);

short iOT;

    pIOG->GetObjTyp (&iOT);

    if (OT_KANTE != iOT) return false;

long lCnt;
KoOrd* plXK; KoOrd* plYK;

    pIOG->GetCnt (&lCnt);
    pIOG->GetX ((void**)&plXK);
    pIOG->GetY ((void**)&plYK);

    if (lStartPktX == plXK[0] && lStartPktY == plYK[0] &&
    	lEndPktX == plXK[lCnt-1] && lEndPktY == plYK[lCnt-1])
    	return true;	// Anfangspunkt wird auf Endpunkt gezogen

    if (lStartPktX == plXK[lCnt-1] && lStartPktY == plYK[lCnt-1] &&
    	lEndPktX == plXK[0] && lEndPktY == plYK[0])
    	return true;	// Endpunkt wird auf Anfangspunkt gezogen

    return false;	// alle anderen F�lle erlauben kein Grab

} // GrabToClosedLine


// --------------------------------------------------------------------------------------------
// Index der Fl�chenkontur in iKInd zur�ckgeben, in deren lEpsilon-N�he der Punkt (x,y) liegt;
// ist lONr keine Fl�che bzw. liegt (x,y) nicht in der lEpsilon-N�he, wird false zur�ckgebene,
// sonst true
bool CTopicalObjects::KonturIndex (KoOrd x, KoOrd y, IObjektGeometrie* pIOG, long lEpsilon,
    							   short& iKInd)
{
    _ASSERTE (pIOG != NULL);

short iObjTyp;
    
    pIOG->GetObjTyp (&iObjTyp);
    if (iObjTyp != OT_FLAECHE) return false;	// keine Fl�che		

long lInd;		// Index des Punktes (x,y) innerhalb von wObj

    if (lEpsilon < 0)	// St�tzpunktindex bei St�tzpunktVerschieben
    {
    	if (pIOG->GetVertexIndex (x, y, &lInd) != S_OK)
    		return false;
    }
    else				// Streckenindex bei St�tzpunktHinzuf�gen
    {
    	if (pIOG->GetLineIndex (x, y, lEpsilon, &lInd) != S_OK)
    		return false;
    }

long lIndex;	// f�r Routine IndexTest(); werden
IndPos IP;		//  hier nicht ausgewertet

    pIOG->IndexTest (lInd, &iKInd, &lIndex, &IP);

    return true;

} // KonturIndex


// --------------------------------------------------------------------------------------------
// Test, ob sich die beiden Konturen mit den Indizes iKInd1 und iKInd2 schon einmal ber�hren;
// dann R�ckgabe von true, sonst false
bool CTopicalObjects::IsAlreadyContact (IObjektGeometrie* pIOG, int iKInd1, int iKInd2)
{
    _ASSERTE (pIOG != NULL);

short iObjTyp;
    
    pIOG->GetObjTyp (&iObjTyp);

   	_ASSERTE (iObjTyp == OT_FLAECHE);		// keine Fl�che		

KoOrd* plXK; KoOrd* plYK;
short iKCnt;				// Anzahl der Konturen von pIOG 
long* plCnt;				// Anzahl der St�tzpunkte in den Konturen

    pIOG->GetX ((void**)&plXK);
    pIOG->GetY ((void**)&plYK);
    pIOG->GetKCnt (&iKCnt);
    pIOG->GetLPCnt (&plCnt);

    _ASSERTE (iKInd1 <= iKCnt);
    _ASSERTE (iKInd2 <= iKCnt);

long lFirstInd1 = 0;	// 1. Index der Kontur iKInd1
long lFirstInd2 = 0;	// 1. Index der Kontur iKInd2
int i = 0;

    do
    {
    	if (i < iKInd1) lFirstInd1 += plCnt[i];
    	if (i < iKInd2) lFirstInd2 += plCnt[i];
    	i++;
    }
    while (i < iKInd1 || i < iKInd2);

long lKL1 = plCnt[iKInd1];	// L�nge der Kontur iKInd1
long lKL2 = plCnt[iKInd2];	// L�nge der Kontur iKInd2

    for (long i1 = lFirstInd1; i1 < lFirstInd1 + lKL1 - 1; i1++)
    	for (long i2 = lFirstInd2; i2 < lFirstInd2 + lKL2 - 1; i2++)
    		if (plXK[i1] == plXK[i2] && plYK[i1] == plYK[i2])
    			return true;	// eine Ber�hrung

    return false;

} // IsAlreadyContact



///////////////////////////////////////////////////////////////////////////////////////////////
// *** interface ITRiASNotificationSink: Events von TRiAS abfangen

STDMETHODIMP CTopicalObjects::ServerEvent (SERVEREVT se)
{
    switch (se) {
    case SERVEREVT_ServerToClose:		// das letzte vom Tage
    // Verbindung beim ConnectionPoint abmelden
    	if (0 != m_dwCookie) 
    		DisconnectFromServer();
    	break;
    }
    return S_OK;
}

// --------------------------------------------------------------------------------------------
STDMETHODIMP CTopicalObjects::ProjectEvent (long hPr, PROJECTEVT pe, VARIANT vProj)
{
    ATLTRACE("CTopicalObjects::ProjectEvent not implemented");
	return S_OK;
}


// --------------------------------------------------------------------------------------------
STDMETHODIMP CTopicalObjects::GeoViewEvent (long hPr, GEOVIEWEVT ve, VARIANT vData)
{
    switch (ve)
    {
    	case GEOVIEWEVT_PaintingView:	// DEX_ERASEBKGND
    		m_bIsPaint = true;		// Hintergrund wird gezeichnet
    		break;

    	case GEOVIEWEVT_ViewPainted:	// DEX_PAINTTOPLAYER
    		DEX_GetExposedArea (m_rcHintergrund);	// Hintergrundbereich bestimmen
    		MarkerTracing();		// hier kommt u.a. m_bIsPaint = false
    		break;
    }

    return S_OK;	// immer weiterleiten
}


// --------------------------------------------------------------------------------------------
STDMETHODIMP CTopicalObjects::GeoClassEvent (long hPr, GEOCLASSEVT ce, long ulIdent)
{
    ATLTRACE("CTopicalObjects::GeoClassEvent not implemented");
	return S_OK;
}

// --------------------------------------------------------------------------------------------
STDMETHODIMP CTopicalObjects::GeoObjectEvent (long hPr, GEOOBJECTEVT oe, long lONr)
{
    switch (oe)
	{
		case GEOOBJECTEVT_ObjectSelected:
		{
    		m_TopObjs.AddObject (lONr);

		HRESULT hr = MarkerUpToDate (lONr);

    		if (FAILED(hr))
			    ATLTRACE("failure in CTopicalObjects::GeoObjectEvent");
    		break;
		}

		case GEOOBJECTEVT_ObjectUnSelected:
		{
    		m_TopObjs.RemoveObject (lONr);

		HRESULT hr = MarkerUpToDate (lONr, false);

    		if (FAILED(hr))
			    ATLTRACE("failure in CTopicalObjects::GeoObjectEvent");
    		break;
		}

		case GEOOBJECTEVT_ObjectDeleted:
    		break;

		case GEOOBJECTEVT_DeletingObject:
    		m_TopObjs.DeleteObject (lONr);
    		break;

		case GEOOBJECTEVT_GeometryChanged:		// Objektgeometrie wurde ver�ndert
    		m_TopObjs.ChangeObject (lONr);
    		break;
    }

    return S_OK;	// immer weiterleiten
}

// --------------------------------------------------------------------------------------------
STDMETHODIMP CTopicalObjects::GeoFeatureEvent (long hPr, GEOFEATUREEVT fe, long ulMCode)
{
    ATLTRACE("CTopicalObjects::GeoFeatureEvent not implemented");
	return S_OK;
}

// --------------------------------------------------------------------------------------------
STDMETHODIMP CTopicalObjects::GeoRelationEvent (long hPr, GEORELATIONEVT re, long ulRCode)
{
    ATLTRACE("CTopicalObjects::GeoRelationEvent not implemented");
	return S_OK;
}

// --------------------------------------------------------------------------------------------
STDMETHODIMP CTopicalObjects::ObjectWindowEvent (OBJWNDEVT oe, long hORWnd)
{
    switch (oe)
	{
		case OBJWNDEVT_WindowCreated:
    		break;

		case OBJWNDEVT_WindowDestroyed:
    		break;

		case OBJWNDEVT_GotFocus:
    		break;

		case OBJWNDEVT_LostFocus:
    		break;

		default:
    		_ASSERTE (false);
    		break;
    }
    return S_OK;
}


///////////////////////////////////////////////////////////////////////////////////////////////
// Liste von IObjektGeometrien

// liefert Enumerator mit allen derzeit gespeicherten ObjektGeometrie'n
HRESULT CGeoObjs::GetEnumObjects (IEnumUnknown **ppIEnum)
{
	try {
	WEnumObjektGeometrie Enum (CLSID_EnumObjektGeometrie);
	
		for (CObjectMap::iterator it = m_Objs.begin(); 
    		 it != m_Objs.end(); ++it)
		{
    		Enum -> AddItem ((*it).second.GetObject());
		}

	WEnumUnknown EnumUnk(Enum);

		*ppIEnum = EnumUnk.detach();

	} catch (_com_error &e) {
		return _COM_ERROR(e);
	}
	return S_OK;
}


// --------------------------------------------------------------------------------------------
// liefert Enumerator mit den Objektnummern aller derzeit gespeicherten ObjektGeometrie'n
HRESULT CGeoObjs::GetEnumObjectsByNumber (IEnumObjectsByNumber** ppIEnum)
{
    try
    {
    WEnumObjectsByNumber wObjNr (CLSID_EnumObjectsByNumber);

    	for (CObjectMap::iterator it = m_Objs.begin(); it != m_Objs.end(); ++it) {
			if (0 != (*it).first)	// Objektnummer
    			wObjNr->AddItem ((*it).first);
		}
    	*ppIEnum = wObjNr.detach();

    }
    catch (_com_error& e)
    {
    	return _COM_ERROR (e);
    }

    return S_OK;

} // GetEnumObjectsByNumber


// --------------------------------------------------------------------------------------------
// liefert Enumerator mit den derzeit gespeicherten ObjektGeometrie'n
HRESULT CGeoObjs::GetEnumObjektGeometrie (IEnumObjektGeometrie** ppIEnum, bool bAll)
{
    try
    {
    WEnumObjektGeometrie wOGeom (CLSID_EnumObjektGeometrie);

    	for (CObjectMap::iterator it = m_Objs.begin(); it != m_Objs.end(); ++it)
		{
			if ((*it).second.GetObject() &&	// Objektgeometrie
				(bAll || (*it).second.GetTemporary()))
   				wOGeom->AddItem ((*it).second.GetObject());
		}
    	*ppIEnum = wOGeom.detach();

    }
    catch (_com_error& e)
    {
    	return _COM_ERROR (e);
    }

    return S_OK;

} // GetEnumObjektGeometrie


// --------------------------------------------------------------------------------------------
// Test, ob lONr-Objekt in der Liste enthalten ist, wenn ja, dann pbContain == true
HRESULT CGeoObjs::IsObject (long lONr, BOOL* pbContain)
{
CObjectMap::iterator it = m_Objs.find (lONr);

    (it != m_Objs.end()) ? (*pbContain = true) : (*pbContain = false);
    return S_OK;
}


// --------------------------------------------------------------------------------------------
// Test, ob pIOG-Objekt in der Liste enthalten ist, wenn ja, dann pbContain == true
HRESULT CGeoObjs::IsObject (IObjektGeometrie *pIOG, BOOL* pbContain)
{
CObjectMap::iterator it = m_Objs.find (reinterpret_cast<LONG>(pIOG));

    (it != m_Objs.end()) ? (*pbContain = true) : (*pbContain = false);
    return S_OK;
}


// --------------------------------------------------------------------------------------------
// f�gt ein neues Objekte zur Liste hinzu (bzw. erh�ht Z�hler)
HRESULT CGeoObjs::AddObject (LONG lONr)
{
// testen, ob Objekt bereits vertreten ist, wenn nicht hinzuf�gen
CObjectMap::iterator it = m_Objs.find (lONr);

    if (it == m_Objs.end()) {
    	try {
    	pair<CObjectMap::iterator, bool> p =
    		 m_Objs.insert (lONr, CTopicalObject(lONr));	// throws_com_error
    	
    		it = p.first;		// zeigt auf neues Element 

    	} catch (_com_error& e) {
    		return _COM_ERROR (e);
    	} catch (bad_alloc) {
    		return E_OUTOFMEMORY;
    	}
    }

// Z�hler erh�hen
    (*it).second.Select();
    return S_OK;
}


// --------------------------------------------------------------------------------------------
// f�gt ein neues Objekte zur Liste hinzu (bzw. erh�ht Z�hler)
HRESULT CGeoObjs::AddObject (IObjektGeometrie *pIOG)
{
ulong uuu = reinterpret_cast<LONG>(pIOG);
CObjectMap::iterator it;

    try {
    pair<CObjectMap::iterator, bool> p =
    	 m_Objs.insert (reinterpret_cast<LONG>(pIOG), CTopicalObject(pIOG));	// throws_com_error
    
    	it = p.first;			// zeigt auf neues Element 
		_ASSERTE(p.second);

    } catch (_com_error& e) {
    	return _COM_ERROR (e);
    } catch (bad_alloc) {
    	return E_OUTOFMEMORY;
    }

// Z�hler erh�hen
    (*it).second.Select();
    return S_OK;
}


// --------------------------------------------------------------------------------------------
// erniedrigt Z�hler eines Objektes und entfernt dieses aus der Liste, wenn der Z�hler auf 0
// gegangen ist
HRESULT CGeoObjs::RemoveObject (LONG lONr)
{
// testen, ob Objekt �berhaupt vertreten ist, wenn nicht, aufh�ren
CObjectMap::iterator it = m_Objs.find (lONr);

    if (it == m_Objs.end())
    	return E_FAIL;

// wenns der letzte war, dann S_OK liefern, ansonsten S_FALSE
    if ((*it).second.UnSelect() > 0)
    	return S_FALSE;
    
    m_Objs.erase (it);		// aus Liste herausnehmen
    return S_OK;
}


// --------------------------------------------------------------------------------------------
// erniedrigt Z�hler eines Objektes und entfernt dieses aus der Liste, wenn der Z�hler auf 0
// gegangen ist
HRESULT CGeoObjs::RemoveObject (IObjektGeometrie *pIOG)
{
// testen, ob Objekt �berhaupt vertreten ist, wenn nicht, aufh�ren
CObjectMap::iterator it = m_Objs.find (reinterpret_cast<LONG>(pIOG));

    if (it == m_Objs.end())
    	return E_FAIL;

// wenns der letzte war, dann S_OK liefern, ansonsten S_FALSE
    if ((*it).second.UnSelect() > 0)
    	return S_FALSE;
    
    m_Objs.erase (it);		// aus Liste herausnehmen
    return S_OK;
}


// --------------------------------------------------------------------------------------------
// entfernt ein Objekt aus der Liste, unabh�ngig davon, ob der Z�hler bereits 0 ist oder nicht
HRESULT CGeoObjs::DeleteObject (LONG lONr)
{
// testen, ob Objekt �berhaupt vertreten ist, wenn nicht, aufh�ren
CObjectMap::iterator it = m_Objs.find (lONr);

    if (it == m_Objs.end())
    	return E_FAIL;

    m_Objs.erase (it);		// in jedem Fall aus Liste herausnehmen
    return S_OK;
}


// --------------------------------------------------------------------------------------------
HRESULT CGeoObjs::DeleteObject (IObjektGeometrie *pIOG)
{
// testen, ob Objekt �berhaupt vertreten ist, wenn nicht, aufh�ren
CObjectMap::iterator it = m_Objs.find (reinterpret_cast<LONG>(pIOG));

    if (it == m_Objs.end())
    	return E_FAIL;

    m_Objs.erase (it);		// in jedem Fall aus Liste herausnehmen
    return S_OK;
}


// --------------------------------------------------------------------------------------------
// entfernt Objekte aus der Liste;
// bAll == TRUE:  alle Objekte
// bAll == FALSE: nur die tempor�ren Objekte
HRESULT CGeoObjs::DeleteObjects (bool bAll)
{
bool bDel = false;	// es wurde (noch) kein Objekt aus der Liste herausgenommen

	// alle Objekte aus der Liste herausnehmen
	if (bAll)
		while (m_Objs.size() > 0)
		{
		CObjectMap::iterator it = m_Objs.begin();

    		m_Objs.erase (it);	// Objekt aus Liste herausnehmen
			bDel = true;		// es wurde mindestens ein Objekt herausgenommen
		}

	// nur die tempor�ren Objekte aus der Liste herausnehmen
	else
	{
	long lSize = m_Objs.size();
	CObjectMap::iterator it = m_Objs.begin();

		while (lSize > 0)
		{
			if ((*it).second.GetTemporary())
			{
	    		m_Objs.erase (it);
				bDel = true;
			}
			else
				++it;
			lSize--;
		}
	}

	if (bDel)
		return S_OK;
	return S_FALSE;
}


// --------------------------------------------------------------------------------------------
// liefert das kleinste umschreibende Rechteck von Objekten aus der Liste
HRESULT CGeoObjs::GetObjectsRectangle (KoOrd* plXmin, KoOrd* plXmax, KoOrd* plYmin,
									   KoOrd* plYmax, bool bAll)
{
	_ASSERTE (plXmin != NULL);
	_ASSERTE (plXmax != NULL);
	_ASSERTE (plYmin != NULL);
	_ASSERTE (plYmax != NULL);

KoOrd lXmin, lXmax, lYmin, lYmax;	// einzelnes Rechteck

	*plXmin = MAXKOORD;
	*plXmax = -1;
	*plYmin = MAXKOORD;
	*plYmax = -1;

    for (CObjectMap::iterator it = m_Objs.begin(); it != m_Objs.end(); ++it)
	{
		if ((*it).second.GetObject() &&	// Objektgeometrie
			(bAll || (*it).second.GetTemporary()))
		{
		WObjektGeometrie wObj = (*it).second.GetObject();

   			wObj->GetCont (&lXmin, &lXmax, &lYmin, &lYmax);
			*plXmin = min (lXmin, *plXmin);
			*plXmax = max (lXmax, *plXmax);
			*plYmin = min (lYmin, *plYmin);
			*plYmax = max (lYmax, *plYmax);
		}
	}

	if (*plXmax >= 0)
		return S_OK;

	*plXmin = 0;
	*plXmax = 0;
	*plYmin = 0;
	*plYmax = 0;

	return S_FALSE;		// keine passenden Objekte vorhanden
}


// --------------------------------------------------------------------------------------------
// Objektgeometrie aus TRiAS neu einlesen
HRESULT CGeoObjs::ChangeObject (LONG lONr)
{
// testen, ob Objekt �berhaupt vertreten ist, wenn nicht, aufh�ren
CObjectMap::iterator it = m_Objs.find (lONr);

    if (it == m_Objs.end())
    	return E_FAIL;

    // Geometrie von TRiAS neu holen	
    try
    {
    WInitObjektGeometrie wIObj ((*it).second.GetObject());

    	THROW_FAILED_HRESULT (wIObj->InitObjGeometry (lONr));
    }
    catch (_com_error& e)
    {
    	return _COM_ERROR (e);
    }

    return S_OK;

} // ChangeObject
