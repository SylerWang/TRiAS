// Definitionen: Innenkontur hinzuf�gen
// File: IslandAdd.cpp
// W. M�rtl


#include "GeoEditP.h"

#include "IslandAdd.h"



#if defined(_DEBUG)
#undef THIS_FILE
static char BASED_CODE THIS_FILE[] = __FILE__;
#endif



///////////////////////////////////////////////////////////////////////////////////////////////
// globale Parameter
extern ResourceFile* pRF;



///////////////////////////////////////////////////////////////////////////////////////////////
// Konstruktor
CIslandAdd::CIslandAdd (void)
{
    m_pVWnd = g_pTE->MVWind();	// TRiAS-ViewFenster
    m_NewCP = CURSPOS_UNKNOWN;
    m_OldCP = CURSPOS_UNKNOWN;
    m_LeftButtonSem = false;	// linke Maustaste bzw.
    m_RightButtonSem = false;	// rechte Maustaste noch nicht gedr�ckt
    m_iGrabCnt = 0;				// Anzahl der hintereinander gegrabten Punkte
    m_pGrabPktX = NULL;			// die in m_iGrabCnt gez�hlten GrabPunkte
    m_pGrabPktY = NULL;
    m_bIsPaint = false;			// Hintergrund (durch GEOVIEWEVT_PaintingView bzw.
    							// GEOVIEWEVT_ViewPainted ausgel�st) wird nicht gezeichnet

    m_pCT = new CoordTransX();	// KoordinatenTransformation

    if (! m_pCT)
    {
    	DEX_Error (RC_IslandAdd, EC_NOMEMORY);
    	return;
    }
}


// --------------------------------------------------------------------------------------------
// Destruktor
CIslandAdd::~CIslandAdd (void)
{
  	DELETE_OBJ (m_pCT);
	DELETE_VEC (m_pGrabPktX);
	DELETE_VEC (m_pGrabPktY);
    m_wDragObj.Assign (NULL);
}



///////////////////////////////////////////////////////////////////////////////////////////////
// Verbindung zur CObjectModify-Klasse �ber das Interface IModifyClassSite herstellen;
// es wird also von der Klasse CIslandAdd KEINE (!!) direkte Verbindung zu TRiAS �ber Interface
// ITriasExtension hergestellt
STDMETHODIMP CIslandAdd::SetModifyClassSite (IEditExtensionSite* pIEdExSite,
    										 IModifyClassSite*)
{
    try
    {
    	if (pIEdExSite != NULL)
    	{
    		THROW_FAILED_HRESULT (pIEdExSite->CreateInterfaceTO (m_wTopObjs.ppi()));

    		m_wEdExSite = pIEdExSite;
    		// die nachfolgende Zeile ist erforderlich, damit nach dem Zerlegen des Men�s, in
    		// dem diese Routine aufgerufen wurde, nicht der STERN- oder TRENNER-Cursor
    		// angezeigt wird (bei Aufruf des Men�s hat der Cursor diese Form)
    		m_wEdExSite->SetCursor (CURSFORM_PFEIL, TRUE);

    	WEnumObjektGeometrie wGrabObjs (CLSID_EnumObjektGeometrie);

    		m_wGrabObjs = wGrabObjs;
    	}
    	else
    	{
    		// Cursor wieder auf die Standard-Form "PFEIL" zur�cksetzen
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
STDMETHODIMP CIslandAdd::LineElongation (IEnumObjektGeometrie*, long, long)
{
    ATLTRACENOTIMPL("CIslandAdd::LineElongation");
}


// --------------------------------------------------------------------------------------------
STDMETHODIMP CIslandAdd::AreaPartition (long, POINT)
{
    ATLTRACENOTIMPL("CIslandAdd::AreaPartition");
}


// --------------------------------------------------------------------------------------------
// die pBelowObjs-Objekte sind die Fl�chenobjekte, die bei Aufruf dieser Routine unter der
// Mausspitze lagen
STDMETHODIMP CIslandAdd::IslandAddition (IEnumObjektGeometrie* pBelowObjs)
{
	try
	{
		m_wBelowObjs = pBelowObjs;		// mit implizitem QueryInterface
	}
    catch (_com_error& e)
    {
    	return _COM_ERROR (e);
    }

    return S_OK;

} // IslandAddition


// --------------------------------------------------------------------------------------------
STDMETHODIMP CIslandAdd::Rectangularity (long, int, long, double, double, double,
    									 IEnumObjectsByNumber**)
{
    ATLTRACENOTIMPL("CIslandAdd::Rectangularity");
}


// --------------------------------------------------------------------------------------------
STDMETHODIMP CIslandAdd::MakeCommonBorder (IEnumObjektGeometrie*, long, long)
{
    ATLTRACENOTIMPL("CIslandAdd::MakeCommonBorder");
}


// --------------------------------------------------------------------------------------------
// Interface ITRiASNotificationSink: TRiAS-Notification's abfangen
STDMETHODIMP CIslandAdd::ServerEvent (SERVEREVT se)
{
    ATLTRACE("CIslandAdd::ServerEvent not implemented");
	return S_OK;
}


// --------------------------------------------------------------------------------------------
STDMETHODIMP CIslandAdd::ProjectEvent (long hPr, PROJECTEVT pe, VARIANT vProj)
{
    ATLTRACE("CIslandAdd::ProjectEvent not implemented");
	return S_OK;
}


// --------------------------------------------------------------------------------------------
// TRiAS-Notification's abfangen, die f�r die aktuelle Sicht verschickt werden
STDMETHODIMP CIslandAdd::GeoViewEvent (long hPr, GEOVIEWEVT ve, VARIANT vData)
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
			if (m_wDragObj.IsValid() &&			// es befindet sich ein DragLineObject im Aufbau
				SUCCEEDED (VariantChangeType (&vData, &vData, NULL, VT_I4)))
			{
			long lOffset = V_I4 (&vData);

				m_wDragObj->EditWithScrolling (lOffset, true);
				m_FirstPt.X() += lOffset;
				m_LastPt.X() += lOffset;
			}
    		break;

		case GEOVIEWEVT_ScrollingVert:
			if (m_wDragObj.IsValid() &&
				SUCCEEDED (VariantChangeType (&vData, &vData, NULL, VT_I4)))
			{
			long lOffset = V_I4 (&vData);

				m_wDragObj->EditWithScrolling (lOffset, false);
				m_FirstPt.Y() -= lOffset;
				m_LastPt.Y() -= lOffset;
			}
			break;
    }

    return S_OK;	// immer weiterleiten

} // GeoViewEvent


// --------------------------------------------------------------------------------------------
STDMETHODIMP CIslandAdd::GeoClassEvent (long hPr, GEOCLASSEVT ce, long ulIdent)
{
    ATLTRACE("CIslandAdd::GeoClassEvent not implemented");
	return S_OK;
}


// --------------------------------------------------------------------------------------------
STDMETHODIMP CIslandAdd::GeoObjectEvent (long hPr, GEOOBJECTEVT oe, long lONr)
{
    ATLTRACE("CIslandAdd::GeoObjectEvent not implemented");
	return S_OK;
}


// --------------------------------------------------------------------------------------------
STDMETHODIMP CIslandAdd::GeoFeatureEvent (long hPr, GEOFEATUREEVT fe, long ulMCode)
{
    ATLTRACE("CIslandAdd::GeoFeatureEvent not implemented");
	return S_OK;
}


// --------------------------------------------------------------------------------------------
STDMETHODIMP CIslandAdd::GeoRelationEvent (long hPr, GEORELATIONEVT re, long ulRCode)
{
    ATLTRACE("CIslandAdd::GeoRelationEvent not implemented");
	return S_OK;
}


// --------------------------------------------------------------------------------------------
STDMETHODIMP CIslandAdd::ObjectWindowEvent (OBJWNDEVT oe, long hORWnd)
{
    ATLTRACE("CIslandAdd::ObjectWindowEvent not implemented");
	return S_OK;
}


// --------------------------------------------------------------------------------------------
// Interface ITRiASSysNotificationSink: WindowsNotification's abfangen
STDMETHODIMP CIslandAdd::WindowsMessage (long hWnd, long uiMsg, long wParam, long lParam)
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
    		MouseMove ((HWND)hWnd, lParam);
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
HRESULT CIslandAdd::KeyDown (WPARAM wParam)
{
    if (VK_SHIFT == wParam)		// SHIFT-Taste gedr�ckt, um Grabben auszuschalten
    {
    CursForm CF;	// aktuelle CursorForm

    	m_wEdExSite->GetCursor (&CF);										  

    	if (CURSFORM_FANGEN == CF)	// Cursor hat FANGEN-Form
    	{
    	HRESULT hr;

    		if (! m_wIsland.IsValid())	// noch nicht mit Inselaufbau begonnen
    			hr = m_wTopObjs->CursorInSomeTopObjects (m_wBelowObjs, true, &m_NewCP);
    		else				// mit Inselaufbau schon begonnen
    			hr = m_wTopObjs->CursorInSomeTopObjects (m_wAndArea, true, &m_NewCP);

    		if (FAILED(hr)) return hr;

    		if (m_NewCP == m_OldCP) return S_OK;
    		m_OldCP = m_NewCP;				// CursorPosition retten

    		if (CURSPOS_OBJECT == m_NewCP)	// Cursor innerhalb eines ausgew�hlten Objektes
    			return m_wEdExSite->SetCursor (CURSFORM_CROSS, TRUE);	// CursorForm f�r Editierung
    		return m_wEdExSite->SetCursor (CURSFORM_PFEIL, TRUE);		// Normalform
    	}
    }

    return S_OK;

} // KeyDown


// --------------------------------------------------------------------------------------------
// eine Taste der Tastatur wurde losgelassen
HRESULT CIslandAdd::KeyUp (WPARAM wParam)
{
    if (VK_SHIFT == wParam)		// SHIFT-Taste losgelassen, um Grabben wieder zu erm�glichen
    {
    CursForm CF;	// aktuelle CursorForm

    	m_wEdExSite->GetCursor (&CF);

    	if (CURSFORM_PFEIL == CF || CURSFORM_CROSS == CF)
    	{
    	// Cursor kann beim KeyUp() innerhalb einer St�tzpunktmarkierung stehen, was aber durch
    	// das KeyDown() nicht abgetestet wurde; deshalb hier erneut eine Testung der
    	// CursorPosition
    	HRESULT hr;

    		if (! m_wIsland.IsValid())	// noch nicht mit Inselaufbau begonnen
    		{
    			if (S_OK != IsGrabAllowableForIslandAdd (m_wBelowObjs))	// Grabben nicht erlaubt
    				return S_FALSE;
    			hr = m_wTopObjs->CursorForIslandAdd (m_wBelowObjs, true, &m_NewCP);
    		}
    		else				// mit Inselaufbau schon begonnen
    		{
    			// als Parameter f�r IsGrabAllowableForIslandAdd() wird bewu�t m_wModObjs und
    			// nicht m_wAndArea verwendet, da m_wModObjs-Inseln bei m_wAndArea zur
    			// Au�enkontur geh�ren k�nnen
    			if (S_OK != IsGrabAllowableForIslandAdd (m_wModObjs))	// Grabben nicht erlaubt
    				return S_FALSE;
    			hr = m_wTopObjs->CursorForIslandAdd (m_wAndArea, true, &m_NewCP);
    		}

    		if (FAILED(hr)) return hr;

    		if (m_NewCP == m_OldCP) return S_OK;
    		m_OldCP = m_NewCP;		// CursorPosition retten

    		if (CURSPOS_VERTEX == m_NewCP)	// Cursor in einer St�tzpunktmarkierung
    			return m_wEdExSite->SetCursor (CURSFORM_FANGEN, TRUE);
    	}
    }

    return S_OK;
    
} // KeyUp


// --------------------------------------------------------------------------------------------
// Maus wurde bewegt
HRESULT CIslandAdd::MouseMove (HWND hWnd, LPARAM lParam)
{
	if (m_LeftButtonSem || m_RightButtonSem)	// wenn linke oder rechte Maustaste gedr�ckt
	 	return S_FALSE;							// ist, dann keine weitere Bearbeitung

    if (m_wDragObj.IsValid())
    {
    Point SPt = BSPoint (lParam);	// BS-Punkt der Mausspitze
	BOOL bTopIsPaint;	// wird in CTopicalObjects der Hintergrund gezeichnet?

    	m_wTopObjs->IsPaint (&bTopIsPaint);

    	// Hilfslinie, die auf dem Bildschirm die editierte Fl�che immer gleich zuzieht,
    	// einmalig l�schen
    	if (!m_bIsPaint && !bTopIsPaint && m_bCloseLineDelete)
    	{
    		DrawLine (m_FirstPt, m_LastPt, m_pVWnd);
    		m_bCloseLineDelete = false;
    	}

    	m_wDragObj->SetEndPoint ((POINT&)SPt, m_bIsPaint || bTopIsPaint, TRUE);

    	AktuelleWerteAnzeigen (SPt);	// aktuelle Werte in Statuszeile anzeigen
    }

HRESULT hr;

    if (! m_wIsland.IsValid())	// noch nicht mit Inselaufbau begonnen
    {
    	if (GetKeyState (VK_SHIFT) >= 0 &&	//  SHIFT-Taste nicht gedr�ckt, d.h. Grabben
    		S_OK == IsGrabAllowableForIslandAdd (m_wBelowObjs))	// Grabben erlaubt
    		hr = m_wTopObjs->CursorForIslandAdd (m_wBelowObjs, true, &m_NewCP);
    	else
    		hr = m_wTopObjs->CursorInSomeTopObjects (m_wBelowObjs, true, &m_NewCP);
    }

    else			// mit Inselaufbau schon begonnen
    {
    	// als Parameter f�r IsGrabAllowableForIslandAdd() wird bewu�t m_wModObjs und nicht
    	// m_wAndArea verwendet, da m_wModObjs-Inseln bei m_wAndArea zur Au�enkontur geh�ren
    	// k�nnen
    	if (GetKeyState (VK_SHIFT) >= 0 &&	//  SHIFT-Taste nicht gedr�ckt, d.h. Grabben
    		S_OK == IsGrabAllowableForIslandAdd (m_wModObjs))	// Grabben erlaubt
    		hr = m_wTopObjs->CursorForIslandAdd (m_wAndArea, true, &m_NewCP);
    	else
    		hr = m_wTopObjs->CursorInSomeTopObjects (m_wAndArea, true, &m_NewCP);
    }

    if (FAILED(hr)) return hr;

    if (m_NewCP == m_OldCP) return S_OK;
    m_OldCP = m_NewCP;				// CursorPosition retten

    if (CURSPOS_VERTEX == m_NewCP)	// Cursor in einer St�tzpunktmarkierung
    	return m_wEdExSite->SetCursor (CURSFORM_FANGEN, TRUE);
    if (CURSPOS_OBJECT == m_NewCP)	// Cursor innerhalb eines zul�ssigen Bereiches
    	return m_wEdExSite->SetCursor (CURSFORM_CROSS, TRUE);	// CursorForm f�r Editierung
    return m_wEdExSite->SetCursor (CURSFORM_PFEIL, TRUE);		// Normalform

} // MouseMove


// --------------------------------------------------------------------------------------------
// linke Maustaste wurde f�r Hinzuf�gen einer neuen Insel gedr�ckt
HRESULT CIslandAdd::LeftMouseDown (LPARAM lParam)
{
    if (CURSPOS_VERTEX == m_NewCP || CURSPOS_OBJECT == m_NewCP)
    {
    	m_LeftButtonSem = true;			// linke Maustaste wurde gedr�ckt
    	m_LastPt = BSPoint (lParam);	// BS-Punkt, bei dem linke Maustaste gedr�ckt wurde
    	m_LastPkt = DBKoordinaten (m_LastPt);

    	if (! m_wModObjs.IsValid())
    	{
    		BuildModObjects();
    		m_pVWnd->MouseTrap (TRUE);
    	}

    	return S_OK;
    }

    // akustisches Signal, wenn Punkt au�erhalb der m_wAndArea-Fl�che, innerhalb derer die
    // Insel nur gebildet werden kann, liegt und somit nicht verwendet werden kann
    MessageBeep (MB_ICONEXCLAMATION);
    return S_FALSE;

} // LeftMouseDown


// --------------------------------------------------------------------------------------------
// linke Maustaste wurde f�r Hinzuf�gen einer neuen Insel losgelassen
HRESULT CIslandAdd::LeftMouseUp (void)
{
    if (!m_LeftButtonSem)	// linke Maustaste wurde nicht gedr�ckt
    	return S_FALSE;

    m_LeftButtonSem = false;		// linke Maustaste wurde losgelassen

HRESULT hr = NewIslandObject();

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
    	m_wDragObj->AddStartPoint ((POINT&)m_FirstPt);
    	if (m_lInSize > 1)
    		m_wDragObj->AddStartPoint ((POINT&)m_LastPt);
    	m_wDragObj->ConstructDragLines();
    }
    catch (_com_error& e)
    {
    	return _COM_ERROR (e);
    }

    // wenn die aktuell editierte Kontur zusammen mit dem soeben hinzugekommenen Punkt aus
    // wenigstens 3 St�tzpunkten besteht, dann die Hilfslinie, die diesen letzten Punkt mit dem
    // ersten Punkt dieser Kontur verbindet, beim n�chsten MouseMove() l�schen
    if (m_lInSize >= 3)
    	m_bCloseLineDelete = true;
    else
    	m_bCloseLineDelete = false;

    return S_OK;

} // LeftMouseUp


// --------------------------------------------------------------------------------------------
// rechte Maustaste wurde f�r Hinzuf�gen einer neuen Insel gedr�ckt
void CIslandAdd::RightMouseDown (LPARAM lParam)
{
    if (CURSPOS_VERTEX == m_NewCP || CURSPOS_OBJECT == m_NewCP)
    {
    	m_RightButtonSem = true;		// rechte Maustaste wurde gedr�ckt
    	m_LastPt = BSPoint (lParam);	// BS-Punkt, bei dem rechte Maustaste gedr�ckt wurde
    	m_LastPkt = DBKoordinaten (m_LastPt);

    	if (! m_wModObjs.IsValid()) BuildModObjects();
    }

    else
    // akustisches Signal, wenn Punkt au�erhalb der m_wAndArea-Fl�che, innerhalb derer die
    // Insel nur gebildet werden kann, liegt und somit nicht verwendet werden kann
    MessageBeep (MB_ICONEXCLAMATION);

} // RightMouseDown


// --------------------------------------------------------------------------------------------
// rechte Maustaste wurde f�r Hinzuf�gen einer neuen Insel losgelassen
HRESULT CIslandAdd::RightMouseUp (void)
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

HRESULT hr = NewIslandObject();

    if (FAILED (hr)) return hr;

ulong ulIdent = (ulong)-1;	// Objektklassenschl�ssel f�r PropertyPage "CEditBaseDlg"

    SetObjectClassKey (m_wModObjs, ulIdent);

    // nach dem Hintergrundzeichnen nach einer m�glichen Fehlermeldung wird wieder der
    // vorhergehende Cursor eingeschaltet; da das auch der GrabCursor sein kann, wird hier
    // einfach vorgebeugt
    m_wEdExSite->SetCursor (CURSFORM_CROSS, TRUE);

ResString resCapt (ResID (IDS_CAPTISLANDADD, pRF), 40);
ulong ulCnt = 1;	// Anzahl der IObjektGeometrie'n
int iResult;		// Resultat der DialogBedienung

    m_wEdExSite->ShowEditDialog (resCapt.Addr(), g_cbGeoEditIslandAdd, ulCnt,
    							 (IUnknown**)&m_wIsland, &m_iGrabCnt, m_pGrabPktX, m_pGrabPktY,
    							 m_hrComBorder, m_lComONr, 0, NULL, NULL, &iResult);

    // m_wIsland w�rde erst durch den Destruktor ~CIslandAdd zerlegt werden; damit aber mehrere
    // Inseln editiert werden k�nnen, ohne das zwischendurch ~CIslandAdd gerufen wird, erfolgt
    // hier bei OK bzw. Cancel ein zwangsweises Zerlegen von m_wIsland
    if (IDOK == iResult || IDCANCEL == iResult)
    {
    	if (IDOK == iResult)
    		AddIsland (ulIdent);

		// Durchschnittsfl�che der m_wModObjs-Fl�chen wieder l�schen, wenn sie denn angelegt
		// worden ist; die nachfolgenden Zeilen waren schon einmal aus einem unbekannten Grund
		// heraus kommentiert, sie werden aber doch gebraucht (15.07.99)
		if (m_ulModCnt > 1 && m_lAndONr > 0)
		{
			DEX_DeleteObject (m_lAndONr);
			m_lAndONr = 0;
    		m_wAndArea.Assign (NULL);
		}
    	m_wIsland.Assign (NULL);

/* K�nnen die nachfolgenden Zeilen wegen des am 24.02.99 in CGeoEditExtension::WindowsNotification
   (GeoEdit.cpp) eingef�gten "case WM_MOUSEMOVE:" jetzt wegfallen ????????
	CursForm CF;	// wieder Erl�uterung der aktuellen CursorForm in Statuszeile

		m_wEdExSite->GetCursor (&CF);
   		m_wEdExSite->SetCursor (CF, TRUE);
*/
		// �ber eine PostMessage wird CObjectModify mitgeteilt, da� das CIslandAdd-Objekt
		// wieder zerlegt werden kann
		PostMessage (__hWndM, WM_WM_OBJMODIFYEND, 0, 0);
    	return S_OK;
    }
    else if (IDB_CONTINUE == iResult)
    {
    	// Hintergrund nach Zerlegen des Dialogs sofort zeichnen, weil sonst ZUERST die neuen
    	// DragLine's gezeichnet werden, die dann durch das sp�tere Hintergrundzeichnen
    	// gel�scht werden; beim L�schen dieser DragLine's (durch invertiertes Zeichnen)
    	// w�hrend MouseMove() blieben sie dann unsch�nerweise stehen
    	m_pVWnd->Update();
    	hr = ContinueButtonAction();
    	if (FAILED (hr)) return hr;
    }
    else if (IDB_ISLAND == iResult)
    	IslandButtonAction (ulIdent);

    // Hilfslinie beim n�chsten MouseMove() l�schen (s. a. LeftMouseUp);
    // da der DeleteButton (mehrmals) gedr�ckt worden sein konnte, wird m_lInSize aktualisiert
    if (m_wIsland.IsValid())
    {
    	m_wIsland->GetCnt (&m_lInSize);

    	if (m_lInSize >= 3)
    		m_bCloseLineDelete = true;
    	else
    		m_bCloseLineDelete = false;
    }

    return S_OK;

} // RightMouseUp


// --------------------------------------------------------------------------------------------
// Doppelklick auf linke Maustaste
HRESULT CIslandAdd::LeftDoubleClick (void)
{
// Zeichenoperation beenden
    if (m_wDragObj.IsValid())
	{
		m_wDragObj->DragTerminate();
		m_wDragObj.Assign (NULL);
	}

    m_pVWnd->MouseTrap (FALSE);

// edititiertes Objekt (Fl�che OHNE Innenkontur) (evtl.) noch schlie�en
KoOrd* plXK; KoOrd* plYK;
long lCnt;

	m_wIsland->GetX ((void**)&plXK);
	m_wIsland->GetY ((void**)&plYK);
	m_wIsland->GetCnt (&lCnt);

	if (lCnt >= 2 &&
		(plXK[0] != plXK[lCnt-1] ||	// Objekt ist noch nicht
		plYK[0] != plYK[lCnt-1]))	//  zugezogen
		m_wIsland->AddPunkt (plXK[0], plYK[0], -1, 0);	// zuziehen

// neue Innenkontur zu den m_wModObjs-Fl�chen hinzuf�gen
ulong ulIdent = (ulong)-1;	// Objektklassenschl�ssel f�r AddIsland()

    SetObjectClassKey (m_wModObjs, ulIdent);

HRESULT hrRet = AddIsland (ulIdent);

// Bereich neu zeichnen
Rectangle Rec;	// umschlie�endes Rechteck des aktuell editierten Objektes

    m_wIsland->RectangleToDraw ((RECT*)&Rec);
    DEX_RePaintRectWait (Rec);
    m_pVWnd->Update();		// sofort zeichnen
   	m_wIsland.Assign (NULL);

/* K�nnen die nachfolgenden Zeilen wegen des am 24.02.99 in CGeoEditExtension::WindowsNotification
   (GeoEdit.cpp) eingef�gten "case WM_MOUSEMOVE:" jetzt wegfallen ????????
CursForm CF;	// wieder Erl�uterung der aktuellen CursorForm in Statuszeile

    m_wEdExSite->GetCursor (&CF);
   	m_wEdExSite->SetCursor (CF, TRUE);
*/
	// �ber eine PostMessage wird CObjectModify mitgeteilt, da� das CIslandAdd-Objekt wieder
	// zerlegt werden kann
	PostMessage (__hWndM, WM_WM_OBJMODIFYEND, 0, 0);

	return hrRet;

} // LeftDoubleClick


// --------------------------------------------------------------------------------------------
// die m_wModObjs-Fl�chenobjekte, zu denen eine Innenkontur hinzugef�gt werden soll, sind eine
// Untermenge von pBelowObjs und werden mit dem 1. LeftMouseDown() bzw. RightMouseDown()
// ermittelt; diese Unterscheidung ist notwendig, da IslandAddition() �ber ein Men� gerufen
// werden kann, das an einem gemeinsamen Konturabschnitt zweier sich nicht �berlappender
// Fl�chen gebildet wurde; beide Fl�chen sind somit pBelowObjs-Objekte, aber logischerweise
// gibt es keine Innenkontur, die gleichzeitig in diesen beiden Fl�chen liegen kann
HRESULT CIslandAdd::BuildModObjects (void)
{
    if (m_wModObjs.IsValid())
    	return S_FALSE;		// es ist schon alles erledigt

    _ASSERTE (m_wBelowObjs.IsValid());

HRESULT hrRet = m_wTopObjs->NewVertexWithGrab ((POINT*)&m_LastPt, NULL, &m_LastPkt.X(),
											   &m_LastPkt.Y(), NULL);

Posit posLage;
WUnknown Unk;
short iOT;

    try
    {
    WEnumObjektGeometrie wModObjs (CLSID_EnumObjektGeometrie);

		for (m_wBelowObjs->Reset(); S_OK == m_wBelowObjs->Next (1, Unk.ppi(), NULL); )
		{
		WObjektGeometrie wObj (Unk);

			wObj->GetObjTyp (&iOT);
    		if (OT_FLAECHE != iOT) continue;

    		wObj->Position (m_LastPkt.X(), m_LastPkt.Y(), false, &posLage);
    		if (INNERH == posLage || KONTUR == posLage)
    			wModObjs->AddItem (wObj);	// Inselbeginn innerhalb des wObj-Objektes
    	}

    	wModObjs->GetCount(&m_ulModCnt);
    	m_wModObjs = wModObjs;
    }
    catch (_com_error& e)
    {
    	return _COM_ERROR (e);
    }

    BuildAndArea();		// Durchschnittsfl�che aller wModObjs-Fl�chen ermitteln

    return S_OK;

} // BuildModObjects


// --------------------------------------------------------------------------------------------
// Durchschnittsfl�che m_wAndArea aller wModObjs-Fl�chen ermitteln (wird f�r Anzeige des
// CROSS-Cursors ben�tigt)
HRESULT CIslandAdd::BuildAndArea (void)
{
ulong ulIdent;			// Objektklassenschl�ssel f�r Durchschnittsfl�che m_wAndArea
WObjektGeometrie wObj;	// ObjektGeometrie des lAndONr-Objektes
WUnknown Unk;

	m_lAndONr = 0;

    try
    {
    WEnumObjektGeometrie wAndArea (CLSID_EnumObjektGeometrie);

    	if (1 == m_ulModCnt)		// Insel nur f�r 1 Fl�che
    	{
    		m_wModObjs->Reset();

    	HRESULT hr = m_wModObjs->Next (1, Unk.ppi(), NULL);

    		if (S_OK != hr) return hr;	// 05.03.99
			wObj = Unk;
    	}

    	else if (m_ulModCnt > 1)	// Insel f�r mehrere Fl�chen
    	{
    	WUnknown wObjOper;

    		// IExtendObjOper-Interface zuschalten
    		THROW_FAILED_HRESULT (m_wEdExSite->ObjOperInterface (wObjOper.ppi()));

    	WEnumLONG welAndArea (CLSID_EnumObjectsByNumber);
//    	WEnumObjektGeometrie welAndArea (CLSID_EnumObjektGeometrie);    noch nicht !!!!!!
		long lAndONr;	// Objektnummer f�r Durchschnittsfl�che m_wAndArea

//			wObj->GetONr (&lAndONr);
//    		ulIdent = DEX_GetUnknownIdentEx (DEX_GetObjectProject (lAndONr));

		WEnumLONG wModObjs (CLSID_EnumObjectsByNumber);
		long lONr;
		WUnknown Unk;

			for (m_wModObjs->Reset(); S_OK == m_wModObjs->Next (1, Unk.ppi(), NULL); )
			{
			WObjektGeometrie wObj (Unk);

				wObj->GetONr (&lONr);

				_ASSERTE (lONr != 0);
				_ASSERTE (lONr != -1);

	    		((IEnum<LONG>*)(IEnumLONG*)wModObjs)->AddItem (lONr);
    		}

			// ulIdent ist eigentlich beliebig, da die Durchschnittsfl�chen nur tempor�r
			// erzeugt werden
    		ulIdent = DEX_GetUnknownIdentEx (DEX_GetObjectProject (lONr));

    		((WExtendObjOper)wObjOper)->AndArea (wModObjs, ulIdent, SFORM_TEMP,
												 welAndArea.ppi());

    	ulong ulAndCnt;	// Anzahl der Durchschnittsfl�chen

    		if (welAndArea.IsValid())
    			ulAndCnt = ((IEnum<LONG>*)(IEnumLONG*)welAndArea)->Count();
    		else
    		{
    		ResString resText (ResID (IDS_OBJOPERERR, pRF), 250);
    		ResString resCapt (ResID (IDS_LONGCLASSNAME, pRF), 50);
    			
    			MessageBox (__hWndM, resText.Addr(), resCapt.Addr(),
							MB_ICONEXCLAMATION | MB_OK);
    			return E_UNEXPECTED;	// keine Durchschnittsfl�che gebildet
    		}

    		if (1 == ulAndCnt)	// nur eine Durchschnittsfl�che
    		{
    			welAndArea->Reset();

    		HRESULT hr = welAndArea->Next (1, &lAndONr, NULL);

		      	if (S_OK != hr) return hr;	// 05.03.99

    		WInitObjektGeometrie wIObj (CLSID_ObjektGeometrie);

   				THROW_FAILED_HRESULT (wIObj->InitObjGeometry (lAndONr));
   				wObj = wIObj;
  			}

    		// wenn es mehrere Durchschnittsfl�chen gibt, dann diejenige suchen, innerhalb
    		// derer der Punkt m_LastPkt liegt
    		else if (ulAndCnt > 1)
    		{
    		Posit posLage;
    		WInitObjektGeometrie wIObj (CLSID_ObjektGeometrie);
    		HRESULT hr;

    			for (welAndArea->Reset(); S_OK == (hr = welAndArea->Next (1, &lAndONr, NULL)); )
    			{
    				THROW_FAILED_HRESULT (wIObj->InitObjGeometry (lAndONr));

    				wObj = wIObj;
//				for (welAndArea->Reset(); S_OK == (hr = welAndArea->Next (1, Unk.ppi(), NULL)); )
//				{
//	    		WObjektGeometrie wObj (Unk);	// ObjektGeometrie einer Durchschnittsfl�che

    				wObj->Position (m_LastPkt.X(), m_LastPkt.Y(), false, &posLage);
    				if (INNERH == posLage || KONTUR == posLage)
					{
						m_lAndONr = lAndONr;
    					break;
					}
    			}

    			_ASSERTE (S_OK == hr);
    		}

    		_ASSERTE (ulAndCnt >= 1);
    	}

    	_ASSERTE (m_ulModCnt >= 1);

    	if (wObj.IsValid())
    	{
    		THROW_FAILED_HRESULT (wAndArea->AddItem (wObj));
    		m_wAndArea = wAndArea;
    		VisalAndArea (ulIdent);	// Durchschnittsfl�che visualisieren
    	}
    }
    catch (_com_error& e)
    {
    	return _COM_ERROR (e);
    }

    return S_OK;

} // BuildAndArea


// --------------------------------------------------------------------------------------------
// Durchschnittsfl�che visualisieren
void CIslandAdd::VisalAndArea (ulong ulIdent)
{
    if (1 == m_ulModCnt)
    	return;

// "ungef�llte" Fl�chenf�llung, damit die Durchschnittsfl�che nicht gesehen wird
HANDLEVISINFO HVI;
FVISINFO FVI;

    INITSTRUCT (HVI, HANDLEVISINFO);
	memset (&FVI, '\0', sizeof (FVISINFO));
#if _TRiAS_VER >= 0x0300
	FVI.m_VI.dwSize = sizeof (tagFVISINFO);
#endif

    HVI.m_lIdent = ulIdent;
    HVI.m_iVTyp = VTFlaeche;		// VisInfoTyp
    HVI.m_pVI = &FVI.m_VI;			// generischer Pointer auf VisInfo
    // beschreibender Text (HVI.m_pDesc = NULL) und Name der aktuellen Sicht
    // (HVI.m_pView = NULL) wurden durch INITSTRUCT (HVI, HANDLEVISINFO) gesetzt
    
    // F�llmode "ungef�llt" (FVI.m_VI.m_Style = 0), niedrigste Zeichenpriorit�t
    // (FVI.m_VI.m_Priority = 0), Konturfarbe "schwarz" (FVI.m_VI.m_C = RGB (0, 0, 0)) und
    // Konturbreite (FVI.m_iWidth = 0) werden durch memset (&FVI, ...) gesetzt 
    
    DEX_ModIdentVisInfo (HVI);

} // VisalAndArea


// --------------------------------------------------------------------------------------------
// Test, ob Grab-Funktion m�glich ist; dann return-Wert S_OK, sonst E_FAIL;
// Ein einmaliges Grabben der neu editierten Innenkontur ist mit jeder anderen Kontur erlaubt.
HRESULT CIslandAdd::IsGrabAllowableForIslandAdd (IEnumObjektGeometrie* pIEnumOG)
{
// 1. Ist die Anzahl der Ber�hrungen f�r alle Konturen == 0 ? ja -> S_OK
// 2. nein: Ist Cursor in irgend einem Marker? nein -> S_OK
// 3. ja: Von welcher Kontur-Nr ?
//    Ist von dieser Kontur die Anzahl der Ber�hrungen == 0 ? ja -> S_OK
//    nein -> E_FAIL

// Die Anzahl der Ber�hrungen wird in L/RMouseDown inkrementiert.
    return S_OK;
}


// --------------------------------------------------------------------------------------------
// neue Innenkontur erst einmal als separates Fl�chenobjekt m_wIsland editieren
HRESULT CIslandAdd::NewIslandObject (void)
{
// m_LastPkt evtl. durch Grabben noch modifizieren und alle Linien- bzw. Fl�chenobjekte der
// ausgew�hlten Objekte in wActGrabObjs einsammeln, die den (falls vorhanden) GrabPunkt als
// St�tzpunkt besitzen
//WEnumObjectsByNumber wActGrabObjs;
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
    			DEX_Error (RC_NewLine, EC_NOMEMORY);
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

    	// es wurde gegrabt, deshalb m_dAktDreieck korrigieren
    	m_dAktDreieck = DreieckInhalt (m_LastPt, m_FirstPkt, m_LastPkt, m_pCT);
    }

    if (! m_wIsland.IsValid())	// aus dem 1. editierten St�tzpunkt Anfang einer Insel aufbauen
    {						
    	SetStartingContents();	// Gesamtfl�cheninhalt initialisieren
    	m_dAktInsel = 0.0;

    HRESULT hr = CreateInterfaceOG (m_wIsland.ppi(), m_LastPkt.X(), m_LastPkt.Y(),
    								OT_FLAECHE);
    	if (FAILED(hr)) return hr;

    	m_FirstPkt = m_LastPkt;
    	m_FirstPt = m_LastPt;

    	m_lInSize = 1;		// Gr��e der aktuell editierten Insel
    }

    else			// weitere St�tzpunkte wurden editiert
    {
    HRESULT hr = m_wIsland->AddPunkt (m_LastPkt.X(), m_LastPkt.Y(), -1, 0);

    	if (FAILED (hr)) return hr;

    	m_dAktInsel += m_dAktDreieck;
    	m_lInSize++;		// Gr��e der aktuell editierten Insel
    }

    return S_OK;

} // NewIslandObject


// --------------------------------------------------------------------------------------------
// ContinueButton in der PropertySheet gedr�ckt
HRESULT CIslandAdd::ContinueButtonAction (void)
{
// Das Dr�cken eines Buttons bzw. die Korrektur des letzten Koordinatenpaars durch den Anwender
// kann den Punkt, an dem fortgesetzt werden soll, ver�ndern. Deshalb ist dieser Punkt neu zu
// ermitteln. Au�erdem ist der Gesamtfl�cheninhalt neu zu berechnen.
long lCnt;
KoOrd* plXK; KoOrd* plYK;

    m_wIsland->GetCnt (&lCnt);
    m_wIsland->GetX ((void**)&plXK);
    m_wIsland->GetY ((void**)&plYK);

    SetStartingContents();	// Gesamtfl�cheninhalt neu berechnen

double dAktInsel;			// Fl�cheninhalt der aktuellen Insel

    AreaSize (plXK, plYK, 0, lCnt-1, m_pCT, &dAktInsel);
    m_dAktGesFlaeche -= dAktInsel;
    m_dAktInsel = 0.;
    m_dAktDreieck = 0.;

    m_LastPt = BSKoordinaten (plXK[lCnt-1], plYK[lCnt-1]);
    m_LastPkt.X() = plXK[lCnt-1];
    m_LastPkt.Y() = plYK[lCnt-1];

    try
    {
    WDragObject wDragObj (CLSID_DragMultiLine);	// throws_com_error

    	m_wDragObj.Assign (NULL);
    	m_wDragObj = wDragObj;
    	m_wDragObj->AddStartPoint ((POINT&)m_FirstPt);
    	if (m_lInSize > 1)
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
// IslandButton in der PropertySheet gedr�ckt;
// zu den m_wModObjs-Objekten wird die m_wIsland-Innenkontur sofort hinzugef�gt und
// anschlie�end der Aufbau einer weiteren m_wIsland-Innenkontur vorbereitet
void CIslandAdd::IslandButtonAction (ulong ulIdent)
{
    AddIsland (ulIdent);

int iMarkGr;	// Markergr��e
Rectangle Rec;	// umschlie�endes Rechteck der aktuell editierten Insel

    m_wTopObjs->GetMarkerSizeBS (&iMarkGr);
    m_wIsland->RectangleToDraw2 ((RECT*)&Rec, iMarkGr);
    DEX_RePaintRectWait (Rec);
    m_pVWnd->Update();		// sofort zeichnen

    m_wIsland.Assign (NULL);

/* K�nnen die nachfolgenden Zeilen wegen des am 24.02.99 in CGeoEditExtension::WindowsNotification
   (GeoEdit.cpp) eingef�gten "case WM_MOUSEMOVE:" jetzt wegfallen ????????
CursForm CF;	// wieder Erl�uterung der aktuellen CursorForm in Statuszeile

	m_wEdExSite->GetCursor (&CF);
   	m_wEdExSite->SetCursor (CF, TRUE);
*/
} // IslandButtonAction


// --------------------------------------------------------------------------------------------
// das editierte m_wIsland-Fl�chenobjekt als Innenkontur zu m_wModObjs-Fl�chen hinzuf�gen
HRESULT CIslandAdd::AddIsland (ulong ulIdent)
{
long lInCnt;		// Parameter der neuen Insel
KoOrd* plInX; KoOrd* plInY;

    m_wIsland->GetCnt (&lInCnt);
    m_wIsland->GetX ((void**)&plInX);
    m_wIsland->GetY ((void**)&plInY);

short iOT;
WUnknown Unk;

    try
    {
		for (m_wModObjs->Reset(); S_OK == m_wModObjs->Next (1, Unk.ppi(), NULL); )
		{
		WObjektGeometrie wObj (Unk);

			wObj->GetObjTyp (&iOT);
    		if (OT_FLAECHE != iOT) continue;
    		wObj->AddKante (plInX, plInY, lInCnt, -1);

    		StoreAreaWithNewIsland (wObj, ulIdent);
    	}
    }
    catch (_com_error& e)
    {
    	return _COM_ERROR (e);
    }

    return S_OK;

} // AddIsland


// --------------------------------------------------------------------------------------------
// Objekt, zu dem eine neue Insel hinzugef�gt wurde, abspeichern 
HRESULT CIslandAdd::StoreAreaWithNewIsland (IObjektGeometrie* pIOG, ulong ulIdent)
{
ulong ulNewIdent = DEX_GetLastIdent();

#if _TRiAS_VER < 0x0300
	if (0 == DEX_GetROMode())					// Datenbank nicht schreibgesch�tzt (R/W-Modus)
#else
	if (0 == DEX_GetROModeIdent (ulNewIdent))	// Objektklasse nicht schreibgesch�tzt
#endif // _TRiAS_VER < 0x0300

    	// OGModObject:     Geometrie des Objektes ersetzen
    	// OGAskWhenError:  im Fehlerfall wird Anwender vor dem Abspeichern noch einmal gefragt
    	// OGAddToView:     (evtl. ver�nderten) Identifikator zur Sicht hinzuf�gen
    	pIOG->SetFlags (OGModObject | OGAskWhenError | OGAddToView);
    else
    	// OGTempObject:	tempor�res Objekt
    	pIOG->SetFlags (OGTempObject);

    if (ulIdent != ulNewIdent)
    	pIOG->SetIdent (ulNewIdent);

#if _TRiAS_VER < 0x0300
HRESULT hrRet = pIOG->GeometrieAnTRiAS (true, NULL);
#else
INT_PTR hPr = reinterpret_cast<INT_PTR>(DEX_GetObjectsProject (ulNewIdent));
HRESULT hrRet = pIOG->GeometrieAnTRiASEx (hPr, true, NULL);
#endif // _TRiAS_VER < 0x0300
	
    // wenn modifiziertes Objekt nicht nach TRiAS gespeichert wird, dann Hinzunahme der Insel
    // r�ckg�ngig machen
    if (S_OK != hrRet)
    	pIOG->SubKante (1, -1);

int iMarkGr;	// Markergr��e
Rectangle Rec;	// rechteckiger Bereich, der gezeichnet werden soll

	m_wTopObjs->GetMarkerSizeBS (&iMarkGr);
	pIOG->RectangleToDraw2 ((RECT*)&Rec, iMarkGr);
	DEX_RePaintRectWait (Rec);

	return hrRet;

} // StoreAreaWithNewIsland


// --------------------------------------------------------------------------------------------
// Gesamtfl�cheninhalt initialisieren; wenn nur eine Fl�che mit einer Innenkontur erg�nzt
// werden soll, dann noch den bisherigen Fl�cheninhalt hinzurechnen
HRESULT CIslandAdd::SetStartingContents (void)
{
    m_dAktGesFlaeche = 0.0;

    if (m_ulModCnt > 1) return S_FALSE;

    m_wModObjs->Reset();

WUnknown Unk;
HRESULT hrRet = m_wModObjs->Next (1, Unk.ppi(), NULL);

	if (S_OK != hrRet) return hrRet;	// 05.03.99

WObjektGeometrie wObj;	// ObjektGeometrie des lONr-Objektes

    try
    {
    	wObj = Unk;
    }
    catch (_com_error& e)
    {
    	return _COM_ERROR (e);
    }

    GetInhalt (wObj, m_pCT, &m_dAktGesFlaeche);	// Gesamtfl�cheninhalt berechnen

    return S_OK;

} // SetStartingContents


// --------------------------------------------------------------------------------------------
// aktuellen Fl�cheninhalt in Statuszeile anzeigen
bool CIslandAdd::AktuelleWerteAnzeigen (Point Pt)
{
    if (! m_wIsland.IsValid())	// der 1. Punkt der zu editierenden Insel ist noch nicht gesetzt
    	return false;	// deshalb keinen aktuellen Fl�cheninhalt anzeigen

    m_dAktDreieck = DreieckInhalt (Pt, m_FirstPkt, m_LastPkt, m_pCT);

string sOutBuff = ResString (ResID (IDS_AKTINSEL, pRF), 40);

    FlInhaltNormieren (fabs(m_dAktInsel + m_dAktDreieck), sOutBuff);
    sOutBuff += ";  ";

    // die aktuell editierte Insel wird nur zu EINEM Fl�chenobjekt hinzugef�gt
    if (1 == m_ulModCnt)
    {
    // aktueller Zwischenstand des Fl�cheninhalts
    double dZwFlInh = m_dAktGesFlaeche - fabs(m_dAktInsel + m_dAktDreieck);

    	sOutBuff += ResString (ResID (IDS_GESAMTINHALT, pRF), 40);

    	FlInhaltNormieren (dZwFlInh, sOutBuff);
    }

    // wenn die aktuell editierte Insel gleichzeitig mehreren Fl�chenobjekten hinzugef�gt
    // werden soll, kann der urspr�ngliche Fl�cheninhalt nicht automatisch hinzugenommen werden
    else
    {
    	sOutBuff += "urspr�nglicher Fl�cheninhalt - ";
    	FlInhaltNormieren (fabs(m_dAktInsel + m_dAktDreieck), sOutBuff);
    }

    DEX_SetMessageStringNoKickIdle (sOutBuff.c_str());

    return true;

} // AktuelleWerteAnzeigen
