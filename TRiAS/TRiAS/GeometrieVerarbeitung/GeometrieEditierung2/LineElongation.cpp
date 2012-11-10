// Definitionen: Linienobjekt verl�ngern
// File: LineElongation.cpp
// W. M�rtl


#include "GeoEditP.h"

#include "LineElongation.h"


#if defined(_DEBUG)
#undef THIS_FILE
static char BASED_CODE THIS_FILE[] = __FILE__;
#endif



///////////////////////////////////////////////////////////////////////////////////////////////
// globale Parameter
extern ResourceFile* pRF;



///////////////////////////////////////////////////////////////////////////////////////////////
// Konstruktor
CLineElongation::CLineElongation (void)
{
    m_pVWnd = g_pTE->MVWind();	// TRiAS-ViewFenster
    m_LeftButtonSem = false;	// linke Maustaste bzw.
    m_RightButtonSem = false;	// rechte Maustaste noch nicht gedr�ckt
    m_NewCP = CURSPOS_UNKNOWN;
    m_OldCP = CURSPOS_UNKNOWN;
    m_iGrabCnt = 0;				// Anzahl der hintereinander gegrabten Punkte
    m_pGrabPktX = NULL;			// die in m_iGrabCnt gez�hlten GrabPunkte
    m_pGrabPktY = NULL;
    m_bIsPaint = false;			// Hintergrund (durch GEOVIEWEVT_PaintingView bzw.
    							// GEOVIEWEVT_ViewPainted ausgel�st) wird nicht gezeichnet

    m_pCT = new CoordTransX();	// KoordinatenTransformation

    if (! m_pCT)
    {
    	DEX_Error (RC_LineElongation, EC_NOMEMORY);
    	return;
    }
}


// --------------------------------------------------------------------------------------------
// Destruktor
CLineElongation::~CLineElongation (void)
{
	DELETE_OBJ (m_pCT);
	DELETE_VEC (m_pGrabPktX);
	DELETE_VEC (m_pGrabPktY);
    m_wDragObj.Assign (NULL);
}



///////////////////////////////////////////////////////////////////////////////////////////////
// Verbindung zur CObjectModify-Klasse �ber das Interface IModifyClassSite herstellen;
// es wird also von der Klasse CLineElongation KEINE (!!) direkte Verbindung zu TRiAS �ber
// Interface ITriasExtension hergestellt
STDMETHODIMP CLineElongation::SetModifyClassSite (IEditExtensionSite* pIEdExSite,
    											  IModifyClassSite*)
{
    try
    {
    	if (pIEdExSite != NULL)
    	{
    		THROW_FAILED_HRESULT (pIEdExSite->CreateInterfaceTO (m_wTopObjs.ppi()));
    		m_wEdExSite = pIEdExSite;
    		m_wEdExSite->SetCursor (CURSFORM_CROSS, TRUE);

    	WEnumObjektGeometrie wGrabObjs (CLSID_EnumObjektGeometrie);

    		m_wGrabObjs = wGrabObjs;
    	}
    	else
    	{
    		m_wEdExSite->SetCursor (CURSFORM_PFEIL, TRUE);
    		m_wTopObjs.Assign (NULL);	// freigeben
    		m_wEdExSite.Assign (NULL);	// freigeben
    	}
    }
    catch (_com_error& e)
    {
    	return _COM_ERROR (e);
    }

    return S_OK;

} // SetModifyClassSite


// --------------------------------------------------------------------------------------------
// Verl�ngerung der pModObjs-Linienobjekte ab dem St�tzpunkt (lRMX,lRMY)
STDMETHODIMP CLineElongation::LineElongation (IEnumObjektGeometrie* pModObjs, long lRMX,
											  long lRMY)
{
    m_lElongX = lRMX;
    m_lElongY = lRMY;
    pModObjs->GetCount (&m_ulModCnt);

    _ASSERTE (m_ulModCnt >= 1);

    m_LastPt = BSKoordinaten (lRMX, lRMY);	// BS-Punkt, bei dem Linienverl�ngerung beginnt
    m_LastPkt.X() = lRMX;
    m_LastPkt.Y() = lRMY;

    try
    {
		m_wModObjs = pModObjs;		// mit implizitem QueryInterface

    // Verbindung zum CDragMultiLine-Objekt �ber dessen Interface IDragObject herstellen
    WDragObject wDragObj (CLSID_DragMultiLine);	// throws_com_error

    	m_wDragObj.Assign (NULL);
    	m_wDragObj = wDragObj;
    	m_wDragObj->AddStartPoint ((POINT&)m_LastPt);
    	m_wDragObj->ConstructDragLines();
    }

    catch (_com_error& e)
    {
    	return _COM_ERROR (e);
    }

    SetStartingLength();	// Gesamtl�nge initialisieren

// mit dem St�tzpunkt, bei dem die rechte Maustaste gedr�ckt wurde, die Linienverl�ngerung
// beginnen
HRESULT hr = CreateInterfaceOG (m_wObj.ppi(), lRMX, lRMY, OT_KANTE);

    if (FAILED(hr)) return hr;

    return S_OK;

} // LineElongation


// --------------------------------------------------------------------------------------------
STDMETHODIMP CLineElongation::AreaPartition (long, POINT)
{
    ATLTRACENOTIMPL("CLineElongation::AreaPartition");
}


// --------------------------------------------------------------------------------------------
STDMETHODIMP CLineElongation::IslandAddition (IEnumObjektGeometrie*)
{
    ATLTRACENOTIMPL("CLineElongation::IslandAddition");
}


// --------------------------------------------------------------------------------------------
STDMETHODIMP CLineElongation::Rectangularity (long, int, long, double, double, double,
    										  IEnumObjectsByNumber**)
{
    ATLTRACENOTIMPL("CLineElongation::Rectangularity");
}


// --------------------------------------------------------------------------------------------
STDMETHODIMP CLineElongation::MakeCommonBorder (IEnumObjektGeometrie*, long, long)
{
    ATLTRACENOTIMPL("CLineElongation::MakeCommonBorder");
}


// --------------------------------------------------------------------------------------------
// Interface ITRiASNotificationSink: TRiAS-Notification's abfangen
STDMETHODIMP CLineElongation::ServerEvent (SERVEREVT se)
{
    ATLTRACE("CLineElongation::ServerEvent not implemented");
	return S_OK;
}


// --------------------------------------------------------------------------------------------
STDMETHODIMP CLineElongation::ProjectEvent (long hPr, PROJECTEVT pe, VARIANT vProj)
{
    ATLTRACE("CLineElongation::ProjectEvent not implemented");
	return S_OK;
}


// --------------------------------------------------------------------------------------------
// TRiAS-Notification's abfangen, die f�r die aktuelle Sicht verschickt werden
STDMETHODIMP CLineElongation::GeoViewEvent (long hPr, GEOVIEWEVT ve, VARIANT vData)
{
    switch (ve)
    {
    	case GEOVIEWEVT_PaintingView:	// kommt vor dem Zeichnen des Hintergrundes
    									// (entspr. DEX_ERASEBKGND)
    		m_bIsPaint = true;		// Hintergrund wird gezeichnet
    		break;

    	case GEOVIEWEVT_ViewPainted:	// kommt nach dem Zeichnen des Hintergrundes
    									// (entspr. DEX_PAINTTOPLAYER)
    		m_bIsPaint = false;		// Hintergrund wurde gezeichnet
    		break;

		case GEOVIEWEVT_ScrollingHorz:
			if (m_wDragObj.IsValid() &&	// es befindet sich ein DragLineObject im Aufbau
				SUCCEEDED (VariantChangeType (&vData, &vData, NULL, VT_I4)))
			{
			long lOffset = V_I4 (&vData);

				m_wDragObj->EditWithScrolling (lOffset, true);
				m_LastPt.X() += lOffset;
			}
    		break;

		case GEOVIEWEVT_ScrollingVert:
			if (m_wDragObj.IsValid() &&
				SUCCEEDED (VariantChangeType (&vData, &vData, NULL, VT_I4)))
			{
			long lOffset = V_I4 (&vData);

				m_wDragObj->EditWithScrolling (lOffset, false);
				m_LastPt.Y() -= lOffset;
			}
			break;
    }

    return S_OK;	// immer weiterleiten

} // GeoViewEvent


// --------------------------------------------------------------------------------------------
STDMETHODIMP CLineElongation::GeoClassEvent (long hPr, GEOCLASSEVT ce, long ulIdent)
{
    ATLTRACE("CLineElongation::GeoClassEvent not implemented");
	return S_OK;
}


// --------------------------------------------------------------------------------------------
STDMETHODIMP CLineElongation::GeoObjectEvent (long hPr, GEOOBJECTEVT oe, long lONr)
{
    ATLTRACE("CLineElongation::GeoObjectEvent not implemented");
	return S_OK;
}


// --------------------------------------------------------------------------------------------
STDMETHODIMP CLineElongation::GeoFeatureEvent (long hPr, GEOFEATUREEVT fe, long ulMCode)
{
    ATLTRACE("CLineElongation::GeoFeatureEvent not implemented");
	return S_OK;
}


// --------------------------------------------------------------------------------------------
STDMETHODIMP CLineElongation::GeoRelationEvent (long hPr, GEORELATIONEVT re, long ulRCode)
{
    ATLTRACE("CLineElongation::GeoRelationEvent not implemented");
	return S_OK;
}


// --------------------------------------------------------------------------------------------
STDMETHODIMP CLineElongation::ObjectWindowEvent (OBJWNDEVT oe, long hORWnd)
{
    ATLTRACE("CLineElongation::ObjectWindowEvent not implemented");
	return S_OK;
}


// --------------------------------------------------------------------------------------------
// Interface ITRiASSysNotificationSink: WindowsNotification's abfangen
STDMETHODIMP CLineElongation::WindowsMessage (long hWnd, long uiMsg, long wParam, long lParam)
{
    switch (uiMsg)
    {
    	case WM_KEYDOWN:
    		KeyDown (wParam);
			break;
    	
    	case WM_KEYUP:
    		KeyUp (wParam);
			break;

    	case WM_MOUSEMOVE:
    		MouseMove (lParam);
			break;

    	case WM_LBUTTONDOWN:
    		LeftMouseDown (lParam);
    		break;

    	case WM_LBUTTONUP:
    		LeftMouseUp();
			break;

    	case WM_RBUTTONDOWN:
    		RightMouseDown (lParam);
    		break;

    	case WM_RBUTTONUP:
    		RightMouseUp();
			break;

		case WM_LBUTTONDBLCLK:
    		LeftDoubleClick();
    }

    return S_OK;	// immer weiterleiten

} // WindowsMessage


// --------------------------------------------------------------------------------------------
// eine Taste der Tastatur wurde gedr�ckt
HRESULT CLineElongation::KeyDown (WPARAM wParam)
{
    if (VK_SHIFT == wParam)		// SHIFT-Taste gedr�ckt, um Grabben auszuschalten
    	return m_wEdExSite->SetCursor (CURSFORM_CROSS, TRUE);
    return S_OK;

} // KeyDown


// --------------------------------------------------------------------------------------------
// eine Taste der Tastatur wurde losgelassen
HRESULT CLineElongation::KeyUp (WPARAM wParam)
{
    if (VK_SHIFT == wParam)		// SHIFT-Taste losgelassen, um Grabben wieder zu erm�glichen
    {
    CursForm CF;	// aktuelle CursorForm

    	m_wEdExSite->GetCursor (&CF);

    	if (CURSFORM_CROSS == CF &&			// Cursor hat noch CROSS-Form
    		CURSPOS_VERTEX == m_NewCP &&	// Cursor in einer St�tzpunktmarkierung und
    		S_OK == IsGrabAllowableForLineElongation (m_lMSpX, m_lMSpY))	// Grabben erlaubt
    		return m_wEdExSite->SetCursor (CURSFORM_FANGEN, TRUE);	// CursorForm f�r Grabben
    }

    return S_OK;
    
} // KeyUp


// --------------------------------------------------------------------------------------------
// Maus wurde bewegt
HRESULT CLineElongation::MouseMove (LPARAM lParam)
{
    if (m_LeftButtonSem || m_RightButtonSem)	// wenn linke oder rechte Maustaste gedr�ckt
    	return S_FALSE;							// ist, dann keine weitere Bearbeitung

    if (m_wDragObj.IsValid())
    {
    Point Pt = BSPoint (lParam);	// BS-Punkt der Mausspitze
	BOOL bTopIsPaint;				// wird in CTopicalObjects der Hintergrund gezeichnet?

    	m_wTopObjs->IsPaint (&bTopIsPaint);
    	m_wDragObj->SetEndPoint ((POINT&)Pt, m_bIsPaint || bTopIsPaint, TRUE);

    	AktuelleWerteAnzeigen (Pt);	// aktuelle L�nge in Statuszeile anzeigen
    }

HRESULT hr = m_wTopObjs->CursorAtTopicalObjects (&m_NewCP, NULL, &m_lMSpX, &m_lMSpY, NULL);

    if (FAILED(hr)) return hr;

    if (m_NewCP == m_OldCP) return S_OK;

    m_OldCP = m_NewCP;	// bisherige CursorPosition retten

    if (CURSPOS_VERTEX == m_NewCP &&		// Cursor in einer St�tzpunktmarkierung,
    	(GetKeyState (VK_SHIFT) >= 0) &&	//  SHIFT-Taste nicht gedr�ckt, d.h. Grabben
    	S_OK == IsGrabAllowableForLineElongation (m_lMSpX, m_lMSpY))	// Grabben erlaubt
    	return m_wEdExSite->SetCursor (CURSFORM_FANGEN, TRUE);	// CursorForm f�r Grabben

    return m_wEdExSite->SetCursor (CURSFORM_CROSS, TRUE);

} // MouseMove


// --------------------------------------------------------------------------------------------
// linke Maustaste wurde gedr�ckt
void CLineElongation::LeftMouseDown (LPARAM lParam)
{
    m_LeftButtonSem = true;			// linke Maustaste wurde gedr�ckt
    m_LastPt = BSPoint (lParam);	// BS-Punkt, bei dem linke Maustaste gedr�ckt wurde
    m_LastPkt = DBKoordinaten (m_LastPt);

    // eigentlich reicht ein MouseTrap(TRUE) nach dem ERSTEN LeftMouseDown()
    m_pVWnd->MouseTrap (TRUE);

} // LeftMouseDown


// --------------------------------------------------------------------------------------------
// linke Maustaste wurde losgelassen
HRESULT CLineElongation::LeftMouseUp (void)
{
    if (!m_LeftButtonSem)	// linke Maustaste wurde nicht gedr�ckt
    	return S_FALSE;

    m_LeftButtonSem = false;		// linke Maustaste wurde losgelassen

HRESULT hr = CompletingSegment();

    if (FAILED (hr))
    {
    	m_wDragObj->DragTerminate();
    	m_wDragObj.Assign (NULL);
    	return hr;
    }

    // Verbindung zum CDragMultiLine-Objekt �ber dessen Interface IDragObject herstellen
    try
    {
    WDragObject wDragObj (CLSID_DragMultiLine);	// throws_com_error

    	m_wDragObj.Assign (NULL);
    	m_wDragObj = wDragObj;
    	m_wDragObj->AddStartPoint ((POINT&)m_LastPt);
    	m_wDragObj->ConstructDragLines();
    }
    catch (_com_error& e)
    {
    	return _COM_ERROR (e);
    }

    return S_OK;

} // LeftMouseUp


// --------------------------------------------------------------------------------------------
// rechte Maustaste wurde gedr�ckt
void CLineElongation::RightMouseDown (LPARAM lParam)
{
    m_RightButtonSem = true;		// rechte Maustaste wurde gedr�ckt
    m_LastPt = BSPoint (lParam);	// BS-Punkt, bei dem rechte Maustaste gedr�ckt wurde
    m_LastPkt = DBKoordinaten (m_LastPt);

} // RightMouseDown


// --------------------------------------------------------------------------------------------
// rechte Maustaste wurde losgelassen
HRESULT CLineElongation::RightMouseUp (void)
{
    if (!m_RightButtonSem)	// rechte Maustaste wurde nicht gedr�ckt
    	return S_FALSE;

    m_RightButtonSem = false;		// rechte Maustaste wurde losgelassen

    if (m_wDragObj.IsValid())
	{
		m_wDragObj->DragTerminate();
		m_wDragObj.Assign (NULL);
	}

    m_pVWnd->MouseTrap (FALSE);

HRESULT hr = CompletingSegment();

    if (FAILED (hr))
    	return hr;

int iCloseCnt = 0;		// Anzahl und
KoOrd* plCloseX = NULL;	//  Koordinaten der Endpunkte der zu verl�ngernden
KoOrd* plCloseY = NULL;	//  Linienobjekte
ulong ulIdent;			// Objektklassenschl�ssel f�r PropertyPage "CEditBaseDlg"

    SetClosePoints (iCloseCnt, &plCloseX, &plCloseY);
    SetObjectClassKey (m_wModObjs, ulIdent);

    // nach dem Hintergrundzeichnen nach einer m�glichen Fehlermeldung wird wieder der
    // vorhergehende Cursor eingeschaltet; da das auch der GrabCursor sein kann, wird hier
    // einfach vorgebeugt
    m_wEdExSite->SetCursor (CURSFORM_CROSS, TRUE);

ResString resCapt (ResID (IDS_CAPTLINEELONG, pRF), 40);
ulong ulCnt = 1;		// Anzahl der WObjektGeometrie'n
int iResult;			// Resultat der DialogBedienung

    m_wEdExSite->ShowEditDialog (resCapt.Addr(), g_cbGeoEditLineElongat, ulCnt,
    						(IUnknown**)&m_wObj, &m_iGrabCnt, m_pGrabPktX, m_pGrabPktY,
    						m_hrComBorder, m_lComONr, iCloseCnt, plCloseX, plCloseY, &iResult);

    // m_wObj w�rde erst durch den Destruktor ~CLineElongation zerlegt werden; damit aber
    // die Linienverl�ngerung mehrfach erfolgen kann, ohne das zwischendurch ~CLineElongation
    // gerufen wird, erfolgt hier bei OK bzw. Cancel ein zwangsweises Zerlegen von m_wObj
    if (IDOK == iResult || IDCANCEL == iResult)
    {
    	if (IDOK == iResult) ElongateLines (ulIdent);

	 	DELETE_VEC (plCloseX);
	 	DELETE_VEC (plCloseY);

    	m_wObj.Assign (NULL);

/* K�nnen die nachfolgenden Zeilen wegen des am 24.02.99 in CGeoEditExtension::WindowsNotification
   (GeoEdit.cpp) eingef�gten "case WM_MOUSEMOVE:" jetzt wegfallen ????????
	CursForm CF;	// wieder Erl�uterung der aktuellen CursorForm in Statuszeile

		m_wEdExSite->GetCursor (&CF);
   		m_wEdExSite->SetCursor (CF, TRUE);
*/
		// �ber eine PostMessage wird CObjectModify mitgeteilt, da� das CLineElongation-Objekt
		// wieder zerlegt werden kann
		PostMessage (__hWndM, WM_WM_OBJMODIFYEND, 0, 0);
    }
    else if (IDB_CONTINUE == iResult)
    {
    	// Hintergrund nach Zerlegen des Dialogs sofort zeichnen, weil sonst ZUERST die neue
    	// DragLine gezeichnet wird, die dann durch das sp�tere Hintergrundzeichnen gel�scht
    	// wird
    	m_pVWnd->Update();

    HRESULT hr = ContinueButtonAction();

    	if (FAILED (hr)) return hr;
    }

    return S_OK;

} // RightMouseUp


// --------------------------------------------------------------------------------------------
// Doppelklick auf linke Maustaste
HRESULT CLineElongation::LeftDoubleClick (void)
{
// Zeichenoperation beenden
    if (m_wDragObj.IsValid())
	{
		m_wDragObj->DragTerminate();
		m_wDragObj.Assign (NULL);
	}

    m_pVWnd->MouseTrap (FALSE);

// die Linienverl�ngerung durchf�hren und die verl�ngerten Objekte abspeichern 
HRESULT hrRet = CompletingSegment();

    if (FAILED (hrRet)) return hrRet;

ulong ulIdent = (ulong)-1;	// Objektklassenschl�ssel f�r ElongateLines()

	SetObjectClassKey (m_wModObjs, ulIdent);

	hrRet = ElongateLines (ulIdent);

// Bereich neu zeichnen
int iMarkGr;	// Markergr��e
Rectangle Rec;	// umschlie�endes Rechteck des aktuell editierten Objektes

	m_wTopObjs->GetMarkerSizeBS (&iMarkGr);
    m_wObj->RectangleToDraw2 ((RECT*)&Rec, iMarkGr);
	m_wObj.Assign (NULL);
    DEX_RePaintRectWait (Rec);
    m_pVWnd->Update();		// sofort zeichnen

/* K�nnen die nachfolgenden Zeilen wegen des am 24.02.99 in CGeoEditExtension::WindowsNotification
   (GeoEdit.cpp) eingef�gten "case WM_MOUSEMOVE:" jetzt wegfallen ????????
CursForm CF;	// wieder Erl�uterung der aktuellen CursorForm in Statuszeile

    m_wEdExSite->GetCursor (&CF);
   	m_wEdExSite->SetCursor (CF, TRUE);
*/
	// �ber eine PostMessage wird CObjectModify mitgeteilt, da� das CLineElongation-Objekt
	// wieder zerlegt werden kann
	PostMessage (__hWndM, WM_WM_OBJMODIFYEND, 0, 0);

	return hrRet;

} // LeftDoubleClick


// --------------------------------------------------------------------------------------------
// Test, ob Grab-Funktion m�glich ist; dann R�ckgabe von S_OK, sonst E_FAIL;
// mit den Linien, die verl�ngert werden sollen, ist das Angrabben nur an dem "anderen" Endpunkt
// m�glich
HRESULT CLineElongation::IsGrabAllowableForLineElongation (KoOrd lEndPktX, KoOrd lEndPktY)
{
long lCnt;				// Parameter des lONr-Objektes
KoOrd* plXK; KoOrd* plYK;
short iOT;
WUnknown Unk;

    try
    {
		for (m_wModObjs->Reset(); S_OK == m_wModObjs->Next (1, Unk.ppi(), NULL); )
		{
		WObjektGeometrie wObj (Unk);

			wObj->GetObjTyp (&iOT);
    		if (OT_KANTE != iOT) continue;

    		wObj->GetCnt (&lCnt);
    		wObj->GetX ((void**)&plXK);
    		wObj->GetY ((void**)&plYK);

    		// die Verl�ngerung erfolgt am Anfang der wObj-Linie
    		if (m_lElongX == plXK[0] && m_lElongY == plYK[0])
    		{
    			for (long j = 0; j < lCnt-1; j++)
    				if (lEndPktX == plXK[j] && lEndPktY == plYK[j])
    					return E_FAIL;
    		}
    		else	// die Verl�ngerung erfolgt am Ende der wObj-Linie
    		{
    			for (long j = 1; j < lCnt; j++)
    				if (lEndPktX == plXK[j] && lEndPktY == plYK[j])
    					return E_FAIL;
    		}
    	} // for
    }
    catch (_com_error& e)
    {
    	return _COM_ERROR (e);
    }

    return S_OK;

} // IsGrabAllowableForLineElongation


// --------------------------------------------------------------------------------------------
// Linienverl�ngerung editieren
HRESULT CLineElongation::CompletingSegment (void)
{
// m_LastPkt evtl. durch Grabben noch modifizieren und alle Linien- bzw. Fl�chenobjekte der
// ausgew�hlten Objekte in wActGrabObjs einsammeln, die den (falls vorhanden) GrabPunkt als
// St�tzpunkt besitzen
WEnumObjektGeometrie wActGrabObjs;
HRESULT hrRet = m_wTopObjs->NewVertexWithGrab ((POINT*)&m_LastPt, m_wDragObj, &m_LastPkt.X(),
											   &m_LastPkt.Y(), wActGrabObjs.ppi());

    if (S_OK != hrRet)	// es wurde nicht gegrabt
    {
    	m_iGrabCnt = 0;
    	m_hrComBorder = S_FALSE;
    }

    else				// es wurde gegrabt
    {
    	if (0 == m_iGrabCnt)	// der 1. von mehreren hintereinander editierten GrabPunkten
    	{
	 		DELETE_VEC (m_pGrabPktX);
	 		DELETE_VEC (m_pGrabPktY);
    		m_pGrabPktX = new KoOrd [iComCnt];	// iComCnt ist in EditKonst.h definiert
    		m_pGrabPktY = new KoOrd [iComCnt];
    		if (!m_pGrabPktX || !m_pGrabPktY)
    		{
	 			DELETE_VEC (m_pGrabPktX);
    			DEX_Error (RC_LineElongation, EC_NOMEMORY);
    			return false;
    		}
    	}

    	m_lComONr = 0;	// Objektnummer des Objektes, von dem die gemeinsamen St�tzpunkte bei
    					// CommonBorder �bernommen werden k�nnen

    	m_hrComBorder = IsCommonBorderAllowable (m_iGrabCnt, wActGrabObjs, m_wGrabObjs,
    											 m_lComONr);

		if (0 != m_lComONr && -1 != m_lComONr)
		{
		int iOT = DEX_GetObjectType (m_lComONr);

			if (OT_FLAECHE == iOT && m_iGrabCnt > 3)
			{
				m_pGrabPktX[0] = m_pGrabPktX[1];
				m_pGrabPktY[0] = m_pGrabPktY[1];
				m_pGrabPktX[1] = m_pGrabPktX[2];
				m_pGrabPktY[1] = m_pGrabPktY[2];
				m_iGrabCnt--;
			}
			else if (OT_KANTE == iOT && m_iGrabCnt > 2)
			{
				m_pGrabPktX[0] = m_pGrabPktX[1];
				m_pGrabPktY[0] = m_pGrabPktY[1];
				m_iGrabCnt--;
			}
		}

		_ASSERTE (m_iGrabCnt <= iComCnt);

    	m_pGrabPktX[m_iGrabCnt-1] = m_LastPkt.X();
    	m_pGrabPktY[m_iGrabCnt-1] = m_LastPkt.Y();
    }

    // weitere St�tzpunkte wurden editiert
    _ASSERTE (m_wObj.IsValid());

HRESULT hr = m_wObj->AddPunkt (m_LastPkt.X(), m_LastPkt.Y(), -1, -1);

    if (FAILED (hr)) return hr;

    if (S_OK == hrRet)	// es wurde gegrabt, deshalb Korrektur von m_AktLaenge
    {
    long lCnt;					// Gesamtanzahl der St�tzpunkte und 
    KoOrd* plXK; KoOrd* plYK;	// x- bzw. y-Koordinaten der editierten Linie

    	m_wObj->GetCnt (&lCnt);
    	m_wObj->GetX ((void**)&plXK);
    	m_wObj->GetY ((void**)&plYK);

    DoublePair DEP;	// Punkt, auf den gegrabt wurde (im ASC-Format)
    DoublePair DAP;	// der vorhergehende Punkt

    	m_pCT->UnScale (m_LastPkt.X(), m_LastPkt.Y(), &DEP.X(), &DEP.Y());
    	m_pCT->UnScale (plXK[lCnt-2], plYK[lCnt-2], &DAP.X(), &DAP.Y());

    	m_dAktLaenge = m_pCT->CoordTransDistance (&DAP, &DEP);
    }

    m_dAktGesLaenge += m_dAktLaenge;

    return S_OK;

} // CompletingSegment


// --------------------------------------------------------------------------------------------
// ContinueButton in der PropertySheet gedr�ckt
HRESULT CLineElongation::ContinueButtonAction (void)
{
// Das Dr�cken eines Buttons bzw. die Korrektur des letzten Koordinatenpaars durch den Anwender
// kann den Punkt, an dem fortgesetzt werden soll, ver�ndern. Deshalb ist dieser Punkt neu zu
// ermitteln. Au�erdem ist die Gesamtl�nge neu zu berechnen.
long lCnt;
KoOrd* plXK; KoOrd* plYK;

    m_wObj->GetCnt (&lCnt);
    m_wObj->GetX ((void**)&plXK);
    m_wObj->GetY ((void**)&plYK);

    SetStartingLength();	// Gesamtl�nge neu berechnen

DoublePair DAP, DEP;		// St�tzpunkte im ASC-Format

    for (long j = 0; j < lCnt-1; j++)
    {
    	m_pCT->UnScale (plXK[j], plYK[j], &DAP.X(), &DAP.Y());
    	m_pCT->UnScale (plXK[j+1], plYK[j+1], &DEP.X(), &DEP.Y());
    	m_dAktGesLaenge += m_pCT->CoordTransDistance (&DAP, &DEP);
    }

    m_LastPt = BSKoordinaten (plXK[lCnt-1], plYK[lCnt-1]);
    m_LastPkt.X() = plXK[lCnt-1];
    m_LastPkt.Y() = plYK[lCnt-1];

    try
    {
    WDragObject wDragObj (CLSID_DragMultiLine);	// throws_com_error

    	m_wDragObj.Assign (NULL);
    	m_wDragObj = wDragObj;
    	m_wDragObj->AddStartPoint ((POINT&)m_LastPt);
    	m_wDragObj->ConstructDragLines();
    }
    catch (_com_error& e)
    {
    	return _COM_ERROR (e);
    }

    m_pVWnd->MouseTrap (TRUE);

    return S_OK;

} // ContinueButtonAction


// --------------------------------------------------------------------------------------------
// Koordinaten der Endpunkte bereitstellen (wird f�r Close- und ContinueButton ben�tigt)
HRESULT CLineElongation::SetClosePoints (int& iCloseCnt, KoOrd** pplCloseX,
    									 KoOrd** pplCloseY)
{
    _ASSERTE (m_ulModCnt > 0);

    *pplCloseX = new KoOrd[m_ulModCnt];
    *pplCloseY = new KoOrd[m_ulModCnt];

    if (!*pplCloseX || !*pplCloseY)
    {
	 	DELETE_VEC (*pplCloseX);
    	DEX_Error (RC_LineElongation, EC_NOMEMORY);
    	return E_OUTOFMEMORY;
    }

    iCloseCnt = 0;

long lCnt;				// Parameter des lONr-Objektes
KoOrd* plXK; KoOrd* plYK;
short iOT;
WUnknown Unk;

    try
    {
		for (m_wModObjs->Reset(); S_OK == m_wModObjs->Next (1, Unk.ppi(), NULL); )
		{
		WObjektGeometrie wObj (Unk);

			wObj->GetObjTyp (&iOT);
    		if (OT_KANTE != iOT) continue;

    		wObj->GetCnt (&lCnt);
    		wObj->GetX ((void**)&plXK);
    		wObj->GetY ((void**)&plYK);

    		// die Verl�ngerung erfolgt am Anfang der wObj-Linie
    		if (m_lElongX == plXK[0] && m_lElongY == plYK[0])
    		{
    			(*pplCloseX)[iCloseCnt] = plXK[lCnt-1];
    			(*pplCloseY)[iCloseCnt] = plYK[lCnt-1];
    		}
    		else	// die Verl�ngerung erfolgt am Ende der wObj-Linie
    		{
    			(*pplCloseX)[iCloseCnt] = plXK[0];
    			(*pplCloseY)[iCloseCnt] = plYK[0];
    		}
    		iCloseCnt++;
    	} // for
    }
    catch (_com_error& e)
    {
    	return _COM_ERROR (e);
    }

    return S_OK;

} // SetClosePoints


// --------------------------------------------------------------------------------------------
// die Linienverl�ngerung durchf�hren und die verl�ngerten Objekte abspeichern 
HRESULT CLineElongation::ElongateLines (ulong ulIdent)
{
long lVlCnt;		// Parameter der Linienverl�ngerung
KoOrd* plVlX; KoOrd* plVlY;

    m_wObj->GetCnt (&lVlCnt);
    m_wObj->GetX ((void**)&plVlX);
    m_wObj->GetY ((void**)&plVlY);

long lCnt;				// Parameter des lONr-Objektes
KoOrd* plXK; KoOrd* plYK;
short iOT;
WUnknown Unk;

    try
    {
		for (m_wModObjs->Reset(); S_OK == m_wModObjs->Next (1, Unk.ppi(), NULL); )
		{
		WObjektGeometrie wObj (Unk);

			wObj->GetObjTyp (&iOT);
    		if (OT_KANTE != iOT) continue;

    		wObj->GetCnt (&lCnt);
    		wObj->GetX ((void**)&plXK);
    		wObj->GetY ((void**)&plYK);

    		// am Anfang der wObj-Linie anf�gen
    		if (m_lElongX == plXK[0] && m_lElongY == plYK[0])
    		{
    			if (m_lElongX == plVlX[0] && m_lElongY == plVlY[0])
    				m_wObj->OrientDreh (-1);
    			wObj->AddPunkt (plVlX, plVlY, lVlCnt, 0, -1);
    		}
    		else	// am Ende der wObj-Linie anf�gen
    		{
    			if (m_lElongX == plXK[lCnt-1] && m_lElongY == plYK[lCnt-1])
    			{
    				if (m_lElongX != plVlX[0] || m_lElongY != plVlY[0])
    					m_wObj->OrientDreh (-1);
    				wObj->AddPunkt (plVlX, plVlY, lVlCnt, -1, -1);
    			}
    			else
				{
					_ASSERTE (m_lElongX == plXK[lCnt-1]);
					_ASSERTE (m_lElongY == plYK[lCnt-1]);
				}
    		}

    		StoreElongatedLine (wObj, ulIdent);
    	} // for
    }
    catch (_com_error& e)
    {
    	return _COM_ERROR (e);
    }

    return S_OK;

} // ElongateLines


// --------------------------------------------------------------------------------------------
// eine verl�ngerte Linie abspeichern 
HRESULT CLineElongation::StoreElongatedLine (IObjektGeometrie* pIOG, ulong ulIdent)
{
ulong ulNewIdent = DEX_GetLastIdent();

#if _TRiAS_VER < 0x0300
	if (0 == DEX_GetROMode())					// Datenbank nicht schreibgesch�tzt (R/W-Modus)
#else
	if (0 == DEX_GetROModeIdent (ulNewIdent))	// Objektklasse nicht schreibgesch�tzt
#endif // _TRiAS_VER < 0x0300

    	// OGModObject:     Geometrie des Objektes ersetzen
    	// OGForceGeometry: auch au�erhalb des aktuellen Projekt-Containers speichern
    	// OGAskWhenError:  im Fehlerfall wird Anwender vor dem Abspeichern noch einmal gefragt
    	// OGAddToView:     (evtl. ver�nderten) Identifikator zur Sicht hinzuf�gen
    	pIOG->SetFlags (OGModObject | OGForceGeometry | OGAskWhenError | OGAddToView);
    else
    	// OGTempObject:	tempor�res Objekt
    	pIOG->SetFlags (OGTempObject);

    if (ulIdent != ulNewIdent)
    	pIOG->SetIdent (ulNewIdent);

#if _TRiAS_VER < 0x0300
    return pIOG->GeometrieAnTRiAS (true, NULL);
#else
INT_PTR hPr = reinterpret_cast<INT_PTR>(DEX_GetObjectsProject (ulNewIdent));

    return pIOG->GeometrieAnTRiASEx (hPr, true, NULL);
#endif // _TRiAS_VER < 0x0300

} // StoreElongatedLine


// --------------------------------------------------------------------------------------------
// Gesamtl�nge initialisieren; wenn nur eine Linie verl�ngert werden soll, dann noch die
// bisherige L�nge hinzurechnen
HRESULT CLineElongation::SetStartingLength (void)
{
    m_dAktGesLaenge = 0.0;

    if (m_ulModCnt > 1) return S_FALSE;

    m_wModObjs->Reset();

WUnknown Unk;
HRESULT hrRet = m_wModObjs->Next (1, Unk.ppi(), NULL);

	if (S_OK != hrRet) return hrRet;

WObjektGeometrie wObj;	// ObjektGeometrie des lONr-Objektes
long lCnt;				// Parameter des lONr-Objektes
KoOrd* plXK; KoOrd* plYK;

    try
    {
		wObj = Unk;
    }
    catch (_com_error& e)
    {
    	return _COM_ERROR (e);
    }

    wObj->GetCnt (&lCnt);
    wObj->GetX ((void**)&plXK);
    wObj->GetY ((void**)&plYK);

DoublePair DAP, DEP;	// St�tzpunkte im ASC-Format

    for (long j = 0; j < lCnt-1; j++)
    {
    	m_pCT->UnScale (plXK[j], plYK[j], &DAP.X(), &DAP.Y());
    	m_pCT->UnScale (plXK[j+1], plYK[j+1], &DEP.X(), &DEP.Y());
    	m_dAktGesLaenge += m_pCT->CoordTransDistance (&DAP, &DEP);
    }

    return S_OK;

} // SetStartingLength


// --------------------------------------------------------------------------------------------
// aktuelle L�nge in Statuszeile anzeigen
bool CLineElongation::AktuelleWerteAnzeigen (Point Pt)
{
string sOutBuff = ResString (ResID (IDS_AKTSTRECKE, pRF), 40);
char pcKonvBuff [40] = { '\0' };			// Konvertierungspuffer
DoublePair DEP = BSInASCKoord (Pt, m_pCT);	// aktueller Punkt an der Mausspitze

    // L�nge der aktuell editierten Strecke ermitteln
    m_pCT->UnScale (m_LastPkt, &m_DAP.X(), &m_DAP.Y());
    m_dAktLaenge = m_pCT->CoordTransDistance (&m_DAP, &DEP);

    DtoA (pcKonvBuff, "%1.0f", m_dAktLaenge);
    sOutBuff += pcKonvBuff;
    sOutBuff += " m";		// "Meter" anf�gen

    sOutBuff += ResString (ResID (IDS_GESAMTLAENGE, pRF), 40);
    DtoA (pcKonvBuff, "%1.0f", m_dAktGesLaenge + m_dAktLaenge);
    sOutBuff += pcKonvBuff;
    sOutBuff += " m";

    // wenn mehrere Linienobjekte gleichzeitig verl�ngert werden sollen, kann die
    // urspr�ngliche L�nge nicht automatisch hinzugenommen werden
    if (m_ulModCnt > 1)
    	sOutBuff += ResString (ResID (IDS_URSPRLAENGE, pRF), 40);

    DEX_SetMessageStringNoKickIdle (sOutBuff.c_str());
    return true;

} // AktuelleWerteAnzeigen
