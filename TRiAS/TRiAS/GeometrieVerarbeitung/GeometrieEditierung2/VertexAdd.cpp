// Definitionen: Hinzuf�gen eines St�tzpunktes
// File: VertexAdd.cpp
// W. M�rtl


#include "GeoEditP.h"

//#include <stdio.h>		// sprintf() f�r OutputDebugString

#include "VertexAdd.h"


#if defined(_DEBUG)
#undef THIS_FILE
static char BASED_CODE THIS_FILE[] = __FILE__;
#endif



///////////////////////////////////////////////////////////////////////////////////////////////
// globale Parameter
extern ResourceFile* pRF;



///////////////////////////////////////////////////////////////////////////////////////////////
// Konstruktor
CVertexAdd::CVertexAdd (void)
{
	m_pVWnd = g_pTE->MVWind();	// TRiAS-ViewFenster
	m_OldCP = CURSPOS_UNKNOWN;
	m_NewCP = CURSPOS_UNKNOWN;
	m_pMk = NULL;
}


// --------------------------------------------------------------------------------------------
// Destruktor
CVertexAdd::~CVertexAdd (void)
{
	DELETE_OBJ (m_pMk);
}



///////////////////////////////////////////////////////////////////////////////////////////////
// Verbindung zur CObjectModify-Klasse �ber das Interface IModifyClassSite herstellen;
// es wird KEINE (!!) Verbindung zu TRiAS �ber Interface ITriasExtension hergestellt, die
// WindowsMessages werden vom CObjectModify-Objekt heruntergereicht
STDMETHODIMP CVertexAdd::SetModifyClassSite (IEditExtensionSite* pIEdExSite,
											 IModifyClassSite* pIModClSite)
{
	try
	{
		if (pIEdExSite != NULL)
		{
			THROW_FAILED_HRESULT (pIEdExSite->CreateInterfaceTO (m_wTopObjs.ppi()));
			m_wEdExSite = pIEdExSite;
		}
		else
		{
			m_wTopObjs.Assign (NULL);	// freigeben
			m_wEdExSite.Assign (NULL);	// freigeben
		}
		m_wModClSite = pIModClSite;
	}
	catch (_com_error& e)
	{
		return _COM_ERROR (e);
	}

	return S_OK;

} // SetModifyClassSite


// --------------------------------------------------------------------------------------------
STDMETHODIMP CVertexAdd::LineElongation (IEnumObjektGeometrie*, long, long)
{
    ATLTRACENOTIMPL("CVertexAdd::LineElongation");
}


// --------------------------------------------------------------------------------------------
STDMETHODIMP CVertexAdd::AreaPartition (long, POINT)
{
    ATLTRACENOTIMPL("CVertexAdd::AreaPartition");
}


// --------------------------------------------------------------------------------------------
STDMETHODIMP CVertexAdd::IslandAddition (IEnumObjektGeometrie*)
{
    ATLTRACENOTIMPL("CVertexAdd::IslandAddition");
}


// --------------------------------------------------------------------------------------------
STDMETHODIMP CVertexAdd::Rectangularity (long, int, long, double, double, double,
										 IEnumObjectsByNumber**)
{
    ATLTRACENOTIMPL("CVertexAdd::Rectangularity");
}


// --------------------------------------------------------------------------------------------
STDMETHODIMP CVertexAdd::MakeCommonBorder (IEnumObjektGeometrie*, long, long)
{
    ATLTRACENOTIMPL("CVertexAdd::MakeCommonBorder");
}


// --------------------------------------------------------------------------------------------
// Interface ITRiASNotificationSink: TRiAS-Notification's abfangen
STDMETHODIMP CVertexAdd::ServerEvent (SERVEREVT se)
{
    ATLTRACE("CVertexAdd::ServerEvent not implemented");
	return S_OK;
}


// --------------------------------------------------------------------------------------------
STDMETHODIMP CVertexAdd::ProjectEvent (long hPr, PROJECTEVT pe, VARIANT vProj)
{
    ATLTRACE("CVertexAdd::ProjectEvent not implemented");
	return S_OK;
}


// --------------------------------------------------------------------------------------------
// TRiAS-Notification's abfangen, die f�r die aktuelle Sicht verschickt werden
STDMETHODIMP CVertexAdd::GeoViewEvent (long hPr, GEOVIEWEVT ve, VARIANT vData)
{
    switch (ve)
    {
		case GEOVIEWEVT_ScrollingHorz:
			if (m_wDragObj.IsValid() &&	// es befindet sich ein DragLineObject im Aufbau
				SUCCEEDED (VariantChangeType (&vData, &vData, NULL, VT_I4)))
			{
			long lOffset = V_I4 (&vData);

				m_wDragObj->EditWithScrolling (lOffset, true);

				// Position des Markierungsquadrates ebenfalls verschieben
				m_pVWnd->Draw (m_pMk);		// bisherige Position l�schen
				m_ptMSp.X() += lOffset;		// neue Position
				m_pMk->Process (m_ptMSp);	//  einstellen
			}
    		break;

		case GEOVIEWEVT_ScrollingVert:
			if (m_wDragObj.IsValid() &&
				SUCCEEDED (VariantChangeType (&vData, &vData, NULL, VT_I4)))
			{
			long lOffset = V_I4 (&vData);

				m_wDragObj->EditWithScrolling (lOffset, false);

				// Position des Markierungsquadrates ebenfalls verschieben
				m_pVWnd->Draw (m_pMk);		// bisherige Position l�schen
				m_ptMSp.Y() -= lOffset;		// neue Position
				m_pMk->Process (m_ptMSp);	//  einstellen
			}
			break;
    }

    return S_OK;	// immer weiterleiten

} // GeoViewEvent


// --------------------------------------------------------------------------------------------
STDMETHODIMP CVertexAdd::GeoClassEvent (long hPr, GEOCLASSEVT ce, long ulIdent)
{
    ATLTRACE("CVertexAdd::GeoClassEvent not implemented");
	return S_OK;
}


// --------------------------------------------------------------------------------------------
STDMETHODIMP CVertexAdd::GeoObjectEvent (long hPr, GEOOBJECTEVT oe, long lONr)
{
    ATLTRACE("CVertexAdd::GeoObjectEvent not implemented");
	return S_OK;
}


// --------------------------------------------------------------------------------------------
STDMETHODIMP CVertexAdd::GeoFeatureEvent (long hPr, GEOFEATUREEVT fe, long ulMCode)
{
    ATLTRACE("CVertexAdd::GeoFeatureEvent not implemented");
	return S_OK;
}


// --------------------------------------------------------------------------------------------
STDMETHODIMP CVertexAdd::GeoRelationEvent (long hPr, GEORELATIONEVT re, long ulRCode)
{
    ATLTRACE("CVertexAdd::GeoRelationEvent not implemented");
	return S_OK;
}


// --------------------------------------------------------------------------------------------
STDMETHODIMP CVertexAdd::ObjectWindowEvent (OBJWNDEVT oe, long hORWnd)
{
    ATLTRACE("CVertexAdd::ObjectWindowEvent not implemented");
	return S_OK;
}


// --------------------------------------------------------------------------------------------
// Interface ITRiASSysNotificationSink: WindowsNotification's abfangen
STDMETHODIMP CVertexAdd::WindowsMessage (long hWnd, long uiMsg, long wParam, long lParam)
{
	switch (uiMsg)
	{
		case WM_KEYDOWN:
			KeyDown ((HWND)hWnd, wParam);
    		break;
		
		case WM_KEYUP:
			KeyUp (wParam);
    		break;

		case WM_MOUSEMOVE:
			MouseMove (lParam);
    		break;

		case WM_LBUTTONDOWN:
			LeftMouseDown();
			break;

		case WM_LBUTTONUP:
			LeftMouseUp (lParam);
	}

    return S_OK;	// immer weiterleiten

} // WindowsMessage


// --------------------------------------------------------------------------------------------
// eine Taste der Tastatur wurde gedr�ckt
HRESULT CVertexAdd::KeyDown (HWND hWnd, WPARAM wParam)
{
	if (VK_SHIFT == wParam)		// SHIFT-Taste gedr�ckt (um Grab-Funktion auszuschalten)
		return m_wEdExSite->SetCursor (CURSFORM_TRENNER, TRUE);	// dann TRENNER-Form
	else
		ScrollTest (hWnd, wParam);

	return S_OK;

} // KeyDown


// --------------------------------------------------------------------------------------------
// eine Taste der Tastatur wurde losgelassen
HRESULT CVertexAdd::KeyUp (WPARAM wParam)
{
	if (VK_SHIFT == wParam)			// SHIFT-Taste losgelassen
	{
	CursForm CF;	// aktuelle CursorForm

		m_wEdExSite->GetCursor (&CF);

		if (CURSFORM_TRENNER == CF &&		// Cursor hat noch TRENNER-Form
			CURSPOS_VERTEX == m_NewCP &&	// Cursor in einer St�tzpunktmarkierung
			m_wBelowObjs &&
			m_wActBelowObjs &&
			S_OK == m_wTopObjs->IsGrabAllowable (m_StartPkt.X(), m_StartPkt.Y(), m_lMSpX,
										   m_lMSpY, m_wBelowObjs, m_wActBelowObjs, m_lEpsilon))
			return m_wEdExSite->SetCursor (CURSFORM_FANGEN, TRUE);
	}

	return S_OK;

} // KeyUp


// --------------------------------------------------------------------------------------------
// Maus wurde bewegt
HRESULT CVertexAdd::MouseMove (LPARAM lParam)
{
	if (! m_wDragObj.IsValid())			// St�tzpunktHinzuf�gen schon beendet
		return S_OK;

	m_ptMSp = BSPoint (lParam);	// BS-Punkt der Mausspitze

	// bisherige Position des Markierungsquadrates l�schen (jedoch nicht beim allerersten Mal)
	if (m_bNotFirst) m_pVWnd->Draw (m_pMk);
	m_pMk->Process (m_ptMSp);	// neue Position einstellen
	m_pVWnd->Draw (m_pMk);		// neue Position zeichnen
	m_bNotFirst = true;

	// die neuen Strecken als "Gummiband" mitziehen
	m_wDragObj->SetEndPoint ((POINT&)m_ptMSp, FALSE, TRUE);

HRESULT hr = m_wTopObjs->CursorAtTopicalObjects (&m_NewCP, NULL, &m_lMSpX, &m_lMSpY,
												 m_wActBelowObjs.ppi());
	if (FAILED(hr))
		return hr;

	if (m_NewCP == m_OldCP) return S_OK;

	m_OldCP = m_NewCP;	// bisherige CursorPosition retten

	if (CURSPOS_VERTEX == m_NewCP &&		// Cursor in einer St�tzpunktmarkierung und
		(GetKeyState (VK_SHIFT) >= 0) &&	//  SHIFT-Taste nicht gedr�ckt, d.h. Grabben
		S_OK == m_wTopObjs->IsGrabAllowable (m_StartPkt.X(), m_StartPkt.Y(), m_lMSpX, m_lMSpY,
											 m_wBelowObjs, m_wActBelowObjs, m_lEpsilon))
		return m_wEdExSite->SetCursor (CURSFORM_FANGEN, TRUE);	// CursorForm f�r Grabben

	return m_wEdExSite->SetCursor (CURSFORM_TRENNER, TRUE);

} // MouseMove


// --------------------------------------------------------------------------------------------
// Hinzuf�gen des St�tzpunktes beim Dr�cken der linken Maustaste vorbereiten
HRESULT CVertexAdd::LeftMouseDown (void)
{
	// Parameter von der CObjectModify-Klasse holen, die f�r das Hinzuf�gen des St�tzpunktes
	// noch ben�tigt werden
	m_wModClSite->GetParameter (&m_StartPkt.X(), &m_StartPkt.Y(), m_wBelowObjs.ppi());

ulong ulBelowCnt;	// Anzahl der Objekte, die zu Beginn der St�tzpunkt-Hinzuf�ge-Aktion unter
					// der Mausspitze lagen

	m_wBelowObjs->GetCount(&ulBelowCnt);

	// das es unerkl�rlicherweise vorkommen kann, da� zu Beginn der St�tzpunkt-Hinzuf�ge-Aktion
	// kein Objekt unter der Mausspitze lag, nachfolgende Abfrage
	if (ulBelowCnt < 1) return S_FALSE;

Point BSPt = BSKoordinaten (m_StartPkt.X(), m_StartPkt.Y());
int iMarkGr;

	m_wTopObjs->GetMarkerSizeBS (&iMarkGr);
	DELETE_OBJ (m_pMk);
	m_pMk = new Marker (BSPt, iMarkGr, ulGW0);

	m_bNotFirst = false;

	m_pMk->ChangeRop (ROP_Invert);	// das von m_pMk �berzeichnete Gebiet wird invertiert

	m_wDragObj.Assign (NULL);

long lIndn;				// ein St�tzpunktindex des lONr-Objektes
WObjektGeometrie wObj;	// ObjektGeometrie des lONr-Objektes
short iOT;				// Parameter des lONr-Objektes
KoOrd* plXK; KoOrd* plYK;
long i = 0;				// laufender Index von m_wBelowObjs

	try
	{
	// Verbindung zum CDragMultiLine-Objekt �ber dessen Interface IDragObject herstellen
	WDragObject wDragObj (CLSID_DragMultiLine);		// throws_com_error

		m_wDragObj = wDragObj;

		m_wTopObjs->GetEpsilon (&m_lEpsilon);

	WUnknown Unk;

    	for (m_wBelowObjs->Reset(); S_OK == m_wBelowObjs->Next (1, Unk.ppi(), NULL); )
    	{
		WObjektGeometrie wObj (Unk);

			wObj->GetObjTyp (&iOT);

			// St�tzpunktHinzuf�gen und Banding nur bei Linien- bzw. Fl�chenobjekt
			if (iOT != OT_KANTE && iOT != OT_FLAECHE) continue;

			// Indizes des nachfolgenden St�tzpunktes bzgl. des hinzuzuf�genden St�tzpunktes
			// ermitteln
			if (S_OK != wObj->GetLineIndex (m_StartPkt.X(), m_StartPkt.Y(), m_lEpsilon, &lIndn))
				_ASSERTE (false);

		long lIndv = lIndn - 1;	// Indizes des vorhergehenden St�tzpunktes

			// ist wObj eine Fl�che, wird hier evtl. noch eine Korrektur an lIndv oder lIndn
			// vorgenommen
			if (OT_FLAECHE == iOT)
				wObj->IndexVor (lIndn, &lIndv);	

			// DB-Koordinaten des vorhergehenden bzw. nachfolgenden Punktes
			wObj->GetX ((void**)&plXK);
			wObj->GetY ((void**)&plYK);

		// BS-Koordinaten des vorhergehenden bzw. nachfolgenden Punktes
		Point PV = BSKoordinaten (plXK [lIndv], plYK [lIndv]);
		Point PN = BSKoordinaten (plXK [lIndn], plYK [lIndn]);

			m_wDragObj->AddStartPoint ((POINT&)PV);
			m_wDragObj->AddStartPoint ((POINT&)PN);

			i++;
		} // for
	}
	catch (_com_error& e)
	{
		return _COM_ERROR (e);
	}

	m_wDragObj->ConstructDragLines();

	m_pVWnd->MouseTrap (TRUE);

	return S_OK;

} // LeftMouseDown


// --------------------------------------------------------------------------------------------
// das Hinzuf�gen des St�tzpunktes erfolgt beim Loslassen der linken Maustaste
bool CVertexAdd::LeftMouseUp (LPARAM lParam)
{
	m_pVWnd->MouseTrap (FALSE);

CEierUhr Wait (m_pVWnd);	// Test, Zeichnen ... kann l�nger dauern

Point newPt = BSPoint (lParam);			// BS-Punkt der Mausspitze = neuer St�tzpunkt
EPunkt NewPkt = DBKoordinaten (newPt);	// DB-Koordinaten des neuen St�tzpunktes
HRESULT hrRet = m_wTopObjs->NewVertexWithGrab ((POINT*)&newPt, NULL, &NewPkt.X(), &NewPkt.Y(),
											   NULL);

	// die nachfolgenden 2 Befehle m�ssen VOR ModObjSpeicherung() stehen, da dort
	// �berraschenderweise noch ein MouseMove() dazwischen schl�gt
	if (m_wDragObj.IsValid())
	{
		m_wDragObj->DragTerminate();
		m_wDragObj.Assign (NULL);
	}

Rectangle AllRec, Rec;		// Bereiche f�r das Neuzeichnen nach dem L�schen
bool bAllRecInit = false;	// AllRec (noch) nicht initialisiert

WObjektGeometrie wObj;	// ObjektGeometrie des lONr-Objektes
long lIndn;				// ein St�tzpunktindex des lONr-Objektes
short iOT;				// Objekttyp des lONr-Objektes
long lIndex; 			// R�ckgabeparameter f�r IndexTest(); werden
IndPos IP;				//  hier nicht ausgewertet

bool bMod = true;		// beim St�tzpunkt-Hinzuf�gen keine Probleme (true)
ResString resText (ResID (IDS_ADDVERTICES, pRF), 50);

	DEX_BeginUndoLevel (resText.Addr());

	try
	{
	WUnknown Unk;

    	for (m_wBelowObjs->Reset(); S_OK == m_wBelowObjs->Next (1, Unk.ppi(), NULL); )
    	{
		WObjektGeometrie wObj (Unk);

		// Indizes lIndn des nachfolgenden St�tzpunktes bzgl. des hinzuzuf�genden ermitteln
		HRESULT hr = wObj->GetLineIndex (m_StartPkt.X(), m_StartPkt.Y(), m_lEpsilon, &lIndn);

			if (S_OK != hr)
			{
				bMod = false;
				continue;
			}

		short iKontInd = -1;	// nur f�r Fl�chenobjekt: Index der Kontur, zu der der neue
								// Punkt hinzugef�gt wird

			wObj->GetObjTyp (&iOT);
			if (OT_FLAECHE == iOT)
				wObj->IndexTest (lIndn, &iKontInd, &lIndex, &IP);

			hr = wObj->AddPunkt (NewPkt.X(), NewPkt.Y(), lIndn, iKontInd);

			if (S_OK != hr)
			{
				bMod = false;
				continue;
			}

			hr = m_wModClSite->ModObjSpeicherung (wObj, NewPkt.X(), NewPkt.Y(), lIndn, false,
												  VORRUECK, (RECT*)&Rec);

			// wenn modifiziertes Objekt nicht nach TRiAS gespeichert wird, dann Hinzuf�gen
			// r�ckg�ngig machen (der 5. Parameter von ModObjSpeicherung() besagt, da� kein
			// St�tzpunkt gel�scht wurde)
			if (S_OK != hr)
			{
				wObj->SubPunkt (lIndn, &iKontInd);
				bMod = false;
			}

			if (!bAllRecInit)
			{
				AllRec = Rec;
				bAllRecInit = true;
			}
			else
				AllRec = AllRec.Union (Rec);
		} // for
	}
	catch (_com_error&)
	{
		bMod = false;
	}
	
	if (bMod)	// Verschieben ohne Probleme verlaufen
		DEX_EndUndoLevel();
	else
		DEX_CancelUndoLevel (true);

	// Ausschnitt nach Geometrie-Modifikation neu zeichnen
	DEX_RePaintRectWait (AllRec);
	m_pVWnd->Update();		// sofort zeichnen

	Wait.Hide();	// ein vorgezogener Quasi-Destruktor f�r CEierUhr Wait
	m_wModClSite->RefreshCursorForm();

	return bMod;

} // LeftMouseUp
