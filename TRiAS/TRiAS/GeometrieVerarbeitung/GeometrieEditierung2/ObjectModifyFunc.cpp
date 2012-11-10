// Definitionen: Geometrie existierender Objekte modifizieren (die eigentlichen Funktionen)
// File: ObjectModifyFunc.cpp
// W. M�rtl


#include "GeoEditP.h"

#include <resstrg.h>		// IDS_UIFORMAT
#include <ospace/utility/autoptr.h>
#include <ospace/std/vector>

#include "Strecke.hxx"		// GeradenLotPunkt

#include "GeoEditR.h"
#include "VertexModDlg.h"	// CVertexModifyDlg

#include "ObjectModify.h"


#if defined(_DEBUG)
#undef THIS_FILE
static char BASED_CODE THIS_FILE[] = __FILE__;
#endif



///////////////////////////////////////////////////////////////////////////////////////////////
// externe Variable
extern ResourceFile* pRF;



///////////////////////////////////////////////////////////////////////////////////////////////
// Funktionen
// --------------------------------------------------------------------------------------------
// Verschieben des (gemeinsamen) St�tzpunktes eines oder mehrerer ausgew�hlter Objekte beginnen
HRESULT CObjectModify::VertexMoveStart (long hWnd, UINT uiMsg, WPARAM wParam, LPARAM lParam)
{
    try
    {
    	// eine (m�glicherweise bis jetzt) aktive IModifyOperation abmelden
    	if (m_wModOper.IsValid())
		{
			m_wModOper->SetModifyClassSite (NULL, NULL);
    		m_wModOper.Assign(NULL);
		}

    WModifyOperation wModOper (CLSID_VertexMove);		// throws_com_error

    	THROW_FAILED_HRESULT (wModOper->SetModifyClassSite(m_wEdExSite, this));
    	m_wModOper = wModOper;

    WTRiASSysNotificationSink wSysNotSink (m_wModOper);

    	wSysNotSink->WindowsMessage (hWnd, uiMsg, wParam, lParam);
    }
    catch (_com_error& e)
    {
    	if (m_wModOper.IsValid())
		{
			m_wModOper->SetModifyClassSite (NULL, NULL);
    		m_wModOper.Assign(NULL);
		}

    	return _COM_ERROR (e);
    }

    return S_OK;

} // VertexMoveStart


// --------------------------------------------------------------------------------------------
// Hinzuf�gen des (gemeinsamen) St�tzpunktes eines oder mehrerer ausgew�hlter Objekte beginnen
HRESULT CObjectModify::VertexAddStart (long hWnd, UINT uiMsg, WPARAM wParam, LPARAM lParam)
{
    try
    {
    	// eine (m�glicherweise bis jetzt) aktive IModifyOperation abmelden
    	if (m_wModOper.IsValid())
		{
			m_wModOper->SetModifyClassSite (NULL, NULL);
    		m_wModOper.Assign(NULL);
		}

    WModifyOperation wModOper (CLSID_VertexAdd);		// throws_com_error

    	THROW_FAILED_HRESULT (wModOper->SetModifyClassSite(m_wEdExSite, this));
    	m_wModOper = wModOper;

    WTRiASSysNotificationSink wSysNotSink (m_wModOper);

    	wSysNotSink->WindowsMessage (hWnd, uiMsg, wParam, lParam);
    }
    catch (_com_error& e)
    {
    	if (m_wModOper.IsValid())
		{
			m_wModOper->SetModifyClassSite (NULL, NULL);
    		m_wModOper.Assign(NULL);
		}
    	return _COM_ERROR (e);
    }

    return S_OK;

} // VertexAddStart


// --------------------------------------------------------------------------------------------
// St�tzpunkt verschieben durch manuelle �nderung der Koordinaten
HRESULT CObjectModify::ManualVertexModify (void)
{
// die ausgew�hlten Objekte, die bei BEGINN dieser Routine unter der Mausspitze lagen
WEnumObjektGeometrie wBelowObjs;
WUnknown Unk;
short iOT;
bool bDel = true;	// der DeleteButton des Dialogs kann aktiviert werden

    try
    {
	WEnumObjektGeometrie wBelObjs (CLSID_EnumObjektGeometrie);

		for (m_wBelowObjs->Reset(); S_OK == m_wBelowObjs->Next (1, Unk.ppi(), NULL); )
		{
		WObjektGeometrie wObj (Unk);

    		wObj->GetObjTyp (&iOT);				// wenn Cursor auf einem Punktobjekt steht,
    		if (OT_PUNKT == iOT) bDel = false;	// darf DeleteButton nicht aktiviert werden

    		wBelObjs->AddItem (wObj);
		}

		wBelowObjs = wBelObjs;
    }
    catch (_com_error& e)
    {
    	return _COM_ERROR (e);
    }


// Dialog anzeigen
CVertexModifyDlg VMDlg (m_GrabPkt.X(), m_GrabPkt.Y(), bDel);
ulong ulCnt;

	wBelowObjs->GetCount (&ulCnt);
	if (ulCnt > 1)
	{
	ResString resCapt (ResID (IDS_MODVERTICES, pRF), 40);	// St�tzpunkte modifizieren

	    VMDlg.SetCaption (resCapt.Addr());					// DialogCaption modifizieren
	}
    		
    VMDlg.SetPosition (m_ptRM);
    VMDlg.Show();

AktNeu Erg = (AktNeu) VMDlg.Result(); // R�ckgabewert der Aktion im VMDlg-DialogFenster

	if (ABBRECHEN == Erg)
    	return S_FALSE;		// Dialog wurde abgebrochen, d.h. keine Ver�nderung der Koordinaten

KoOrd lNewX, lNewY;

    if (BEENDEN == Erg)
    {
    	if (!VMDlg.GetCoordinates (lNewX, lNewY))
    		return S_FALSE;		// Koordinaten wurden nicht ver�ndert
    }
    else _ASSERTE (Erg == LOESCHEN);

CEierUhr Wait (m_pVWnd);	// Verschieben, Test, Zeichnen ... kann l�nger dauern
Rectangle AllRec, Rec;		// Bereiche f�r das Neuzeichnen nach dem L�schen
bool bAllRecInit = false;	// AllRec (noch) nicht initialisiert
long lInd;					// St�tzpunktindex eines der Objekte, von denen ein St�tzpunkt
    						//  verschoben werden soll
short iKontInd;				// nur f�r Fl�chenobjekte: Index der Kontur, aus der der St�tzpunkt
    						//  evtl. gel�scht werden soll
WObjektGeometrie wObj;		// ObjektGeometrie des lONr-Objektes
HRESULT hrRet = S_OK;		// return-Wert
bool bMod = true;			// beim St�tzpunkt-Verschieben bez. Undo keine Probleme (true)

ResString resText (ResID (IDS_UNDOVERTICESMOVE, pRF), 50);

    DEX_BeginUndoLevel (resText.Addr());

    try
    {
    	for (wBelowObjs->Reset(); S_OK == wBelowObjs->Next (1, Unk.ppi(), NULL); )
    	{
		WObjektGeometrie wObj (Unk);

    		// Index lInd des zu verschiebenden St�tzpunktes m_GrabPkt innerhalb des x- bzw.
    		// y-Vektors bestimmen
    		hrRet = wObj->GetVertexIndex (m_GrabPkt.X(), m_GrabPkt.Y(), &lInd);

    		if (S_OK != hrRet) continue;

    		if (BEENDEN == Erg)	// St�tzpunkt soll verschoben werden
    		{
    			// St�tzpunkt in wObj modifizieren
    			hrRet = wObj->ModPunkt (lNewX, lNewY, lInd);
    			if (S_OK != hrRet) continue;

    			// der 5. Parameter von ModObjSpeicherung() besagt, da� der modifizierte
    			// St�tzpunkt nicht gel�scht wurde
    			hrRet = ModObjSpeicherung (wObj, m_GrabPkt.X(), m_GrabPkt.Y(), lInd, false,
    									   VORRUECK, (RECT*)&Rec);

    			// wenn modifiziertes Objekt nicht nach TRiAS gespeichert wird, dann
    			// Verschieben r�ckg�ngig machen
    			if (S_OK != hrRet)
    			{
    				wObj->ModPunkt (m_GrabPkt.X(), m_GrabPkt.Y(), lInd);
    				bMod = false;
    			}
    		}

    		else			// St�tzpunkt soll gel�scht werden
    		{
    			hrRet = wObj->SubPunkt (lInd, &iKontInd);
    			if (S_OK != hrRet) continue;

    			hrRet = ModObjSpeicherung (wObj, m_GrabPkt.X(), m_GrabPkt.Y(), lInd, false,
    									   VORRUECK, (RECT*)&Rec);
    			// wenn modifiziertes Objekt nicht nach TRiAS gespeichert wird, dann L�schen
    			// r�ckg�ngig machen
    			if (S_OK != hrRet)
    			{
    				wObj->AddPunkt (m_GrabPkt.X(), m_GrabPkt.Y(), lInd, iKontInd);
    				bMod = false;
    			}
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
    catch (_com_error& e)
    {
    	hrRet = _COM_ERROR (e);
    	bMod = false;
    }

    if (bMod)	// Verschieben ohne Probleme verlaufen
    	DEX_EndUndoLevel();
    else
    	DEX_CancelUndoLevel (true);

    Wait.Hide();	// ein vorgezogener Quasi-Destruktor f�r CEierUhr Wait

    // f�r alle F�lle eine erneute Pr�fung der CursorPosition
    RefreshCursorForm();

    // Ausschnitt nach Geometrie-Modifikation neu zeichnen
    DEX_RePaintRectWait (AllRec);
    m_pVWnd->Update();		// sofort zeichnen

    return hrRet;

} // ManualVertexModify


// --------------------------------------------------------------------------------------------
// St�tzpunkt hinzuf�gen durch manuelle Erg�nzung der Koordinaten
HRESULT CObjectModify::ManualVertexAdd (void)
{
// die ausgew�hlten Objekte, die bei BEGINN dieser Routine unter der Mausspitze lagen
WEnumObjektGeometrie wBelowObjs;
WUnknown Unk;

    try
    {
	WEnumObjektGeometrie wBelObjs (CLSID_EnumObjektGeometrie);

		for (m_wBelowObjs->Reset(); S_OK == m_wBelowObjs->Next (1, Unk.ppi(), NULL); )
		{
		WObjektGeometrie wObj (Unk);

    		wBelObjs->AddItem (wObj);
		}

		wBelowObjs = wBelObjs;
    }
    catch (_com_error& e)
    {
    	return _COM_ERROR (e);
    }


// Dialog anzeigen
CVertexModifyDlg VMDlg (m_GrabPkt.X(), m_GrabPkt.Y(), false);
ResString resCapt (ResID (IDS_ADDVERTEX, pRF), 40);	// St�tzpunkt hinzuf�gen
ulong ulCnt;

	wBelowObjs->GetCount (&ulCnt);
	if (ulCnt > 1)
		resCapt = ResString (ResID (IDS_ADDVERTICES, pRF), 40);	// St�tzpunkte hinzuf�gen

    VMDlg.SetCaption (resCapt.Addr());	// DialogCaption modifizieren
    VMDlg.SetPosition (m_ptRM);
    VMDlg.Show();

AktNeu Erg = (AktNeu) VMDlg.Result();		// R�ckgabewert der Aktion im VMDlg-DialogFenster

	if (ABBRECHEN == Erg)	// Dialog wurde abgebrochen, d.h. keine Hinzunahme eines neuen
    	return S_FALSE;		// St�tzpunktes

    _ASSERTE (BEENDEN == Erg);

KoOrd lNewX, lNewY;

    VMDlg.GetCoordinates (lNewX, lNewY);

CEierUhr Wait (m_pVWnd);	// Hinzuf�gen, Test, Zeichnen ... kann l�nger dauern
Rectangle AllRec, Rec;		// Bereiche f�r das Neuzeichnen nach dem L�schen
bool bAllRecInit = false;	// AllRec (noch) nicht initialisiert
long lIndn;					// ein St�tzpunktindex des lONr-Objektes
short iOT;					// Objekttyp des lONr-Objektes
WObjektGeometrie wObj;		// ObjektGeometrie des lONr-Objektes
long lIndex; 				// R�ckgabeparameter f�r IndexTest(); werden
IndPos IP;					//  hier nicht ausgewertet
bool bMod = true;			// beim St�tzpunkt-Hinzuf�gen bez. Undo keine Probleme (true)
HRESULT hrRet = S_OK;		// return-Wert

ResString resText (ResID (IDS_ADDVERTICES, pRF), 50);

    DEX_BeginUndoLevel (resText.Addr());

    try
    {
	WUnknown Unk;

    	for (wBelowObjs->Reset(); S_OK == wBelowObjs->Next (1, Unk.ppi(), NULL); )
    	{
		WObjektGeometrie wObj (Unk);

    		// Indizes lIndn des nachfolgenden St�tzpunktes bzgl. des hinzuzuf�genden ermitteln
    		hrRet = wObj->GetLineIndex (m_GrabPkt.X(), m_GrabPkt.Y(), m_lEpsilon, &lIndn);

    		if (S_OK != hrRet) continue;

	 	// nur f�r Fl�chenobjekt: Index der Kontur, zu der der neue Punkt hinzugef�gt wird
    	short iKontInd = -1;

    		wObj->GetObjTyp (&iOT);
    		if (OT_FLAECHE == iOT)
    			wObj->IndexTest (lIndn, &iKontInd, &lIndex, &IP);

    		hrRet = wObj->AddPunkt (lNewX, lNewY, lIndn, iKontInd);
    		if (S_OK != hrRet) continue;

    		hrRet = ModObjSpeicherung (wObj, lNewX, lNewY, lIndn, false, VORRUECK, (RECT*)&Rec);		
    		
    		if (S_OK != hrRet)	// wenn modifiziertes Objekt nicht nach TRiAS gespeichert wird,
    		{					//  dann Hinzuf�gen r�ckgangig machen
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
    catch (_com_error& e)
    {
    	hrRet = _COM_ERROR (e);
    	bMod = false;
    }

    if (bMod)	// Hinzuf�gen ohne Probleme verlaufen
    	DEX_EndUndoLevel();
    else
    	DEX_CancelUndoLevel (true);

    Wait.Hide();	// ein vorgezogener Quasi-Destruktor f�r CEierUhr Wait

    // f�r alle F�lle eine erneute Pr�fung der CursorPosition
    RefreshCursorForm();

    // Ausschnitt nach Geometrie-Modifikation neu zeichnen
    DEX_RePaintRectWait (AllRec);
    m_pVWnd->Update();		// sofort zeichnen

    return hrRet;

} // ManualVertexAdd


// --------------------------------------------------------------------------------------------
// St�tzpunkt l�schen
HRESULT CObjectModify::VertexDelete (void)
{
CEierUhr Wait (m_pVWnd);	// L�schen, Test, Zeichnen ... kann l�nger dauern
Rectangle AllRec, Rec;		// Bereiche f�r das Neuzeichnen nach dem L�schen
bool bAllRecInit = false;	// AllRec (noch) nicht initialisiert
long lInd;					//  St�tzpunktindex eines der Objekte, von denen ein St�tzpunkt
    						//  gel�scht werden soll
short iKontInd;				// nur f�r Fl�chenobjekte: Index der Kontur, aus der der St�tzpunkt
    						//  gel�scht werden soll
WObjektGeometrie wObj;		// ObjektGeometrie des lONr-Objektes

HRESULT hrRet = S_OK;		// return-Wert
bool bMod = true;			// beim St�tzpunkt-L�schen keine Probleme (true)
ResString resText (ResID (IDS_UNDOVERTICESDEL, pRF), 50);

    DEX_BeginUndoLevel (resText.Addr());

    try
    {
	WUnknown Unk;

    	for (m_wBelowObjs->Reset(); S_OK == m_wBelowObjs->Next (1, Unk.ppi(), NULL); )
    	{
		WObjektGeometrie wObj (Unk);

    		// Index lInd des zu l�schenden St�tzpunktes m_GrabPkt innerhalb des x- bzw.
    		// y-Vektors bestimmen
    		hrRet = wObj->GetVertexIndex (m_GrabPkt.X(), m_GrabPkt.Y(), &lInd);

    		if (S_OK != hrRet) continue;

    	// St�tzpunkt l�schen
		bool bConti;	// nach ActualVertexDelete() gleich "continue" (true)

			hrRet = ActualVertexDelete (wObj, lInd, iKontInd, AllRec, bAllRecInit, bMod, bConti);

			if (bConti) continue;

    		if (S_OK != hrRet)
    		{
    			bMod = false;
    			continue;
    		}

    		hrRet = ModObjSpeicherung (wObj, m_GrabPkt.X(), m_GrabPkt.Y(), lInd, true, RUECKW,
    								   (RECT*)&Rec);

    		// wenn modifiziertes Objekt nicht nach TRiAS gespeichert wird, dann L�schen
    		// r�ckg�ngig machen
    		if (FAILED(hrRet))	// wird ein fehlerhaftes Objekt gespeichert, wird S_FALSE
    		{					// zur�ckgegeben
    			wObj->AddPunkt (m_GrabPkt.X(), m_GrabPkt.Y(), lInd, iKontInd);
    			bMod = false;
    			continue;
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
    catch (_com_error& e)
    {
    	hrRet = _COM_ERROR (e);
    	bMod = false;
    }

    if (bMod)	// L�schen ohne Probleme verlaufen
    	DEX_EndUndoLevel();
    else
    	DEX_CancelUndoLevel (true);

    Wait.Hide();	// ein vorgezogener Quasi-Destruktor f�r CEierUhr Wait

    // nach dem L�schen wird sich der Cursor meistens (aber nicht immer!) au�erhalb einer
    // St�tzpunktmarkierung befinden; deshalb ist hier eine erneute Pr�fung der CursorPosition
    // notwendig;
	// mu� VOR "m_pVWnd->Update()" kommen, weil dort SetEditExtensionSite() eingeschoben wird,
	// wodurch (manchmal) m_wTopObjs modifiziert wird
	RefreshCursorForm();

    // Ausschnitt nach Geometrie-Modifikation neu zeichnen
    DEX_RePaintRectWait (AllRec);
    m_pVWnd->Update();		// sofort zeichnen

    return hrRet;

} // VertexDelete


// --------------------------------------------------------------------------------------------
// Hilfsroutine f�r VertexDelete()
HRESULT CObjectModify::ActualVertexDelete (IObjektGeometrie* pIOG, long lInd, short& iKontInd,
								Rectangle& AllRec, bool& bAllRecInit, bool& bMod, bool& bConti)
{
	bConti = false;	// nach dieser Routine nicht gleich "continue"

ResString resText1 (ResID (IDS_NEWOBJTYPE, pRF), 150);
ResString resCapt (ResID (IDS_LONGCLASSNAME, pRF), 50);
long lONr;
short iOTyp;

	pIOG->GetONr (&lONr);
	pIOG->GetObjTyp (&iOTyp);

	switch (iOTyp)
    {
    	case OT_PUNKT:
		{
		Rectangle Rec;

			pIOG->RectangleToDraw ((RECT*)&Rec);
    		if (!bAllRecInit)
    		{
    			AllRec = Rec;
    			bAllRecInit = true;
    		}
    		else
    			AllRec = AllRec.Union (Rec);

			bMod = bMod && DEX_DeleteObjectEx (lONr);
			bConti = true;	// nach dieser Routine gleich "continue"
   			break;
		}

    	case OT_KANTE:
		{
		long lCnt;

			pIOG->GetCnt (&lCnt);

			if (lCnt > 2)
			{
			bool bClosed = false;		// Linie geschlossen (true)
			KoOrd* plXK; KoOrd* plYK;

				pIOG->GetX ((void**)&plXK);
				pIOG->GetY ((void**)&plYK);

				if (plXK[0] == plXK[lCnt-1] && plYK[0] == plYK[lCnt-1])	// geschlossene Linie
					bClosed = true;

				// wird bei einer geschlossenen Linie der 1. bzw. letzte St�tzpunkt gel�scht,
				// dann ist der "andere" zu modifizieren, damit die Linie nicht offen wird
				// (diese Operation habe ich VOR den nachfolgenden SubPunkt-Befehl gestellt,
				// damit die Indizes und die Felder plXK bzw. plYK noch original sind)
				if (bClosed && lCnt > 4)
				{
					if (0 == lInd)
   						pIOG->ModPunkt (plXK[1], plYK[1], lCnt-1);
					else if (lInd == lCnt - 1)
   						pIOG->ModPunkt (plXK[lCnt-2], plYK[lCnt-2], 0);
				}

   			HRESULT hrRet = pIOG->SubPunkt (lInd, &iKontInd);

				// bei einer geschlossenen Linie, die ein Dreieck bildet, ist auch noch der
				// letzte St�tzpunkt zu l�schen, damit es nicht zu einer Selbstinzidenz kommt
				if (bClosed && 4 == lCnt)
   					hrRet = pIOG->SubPunkt (2, &iKontInd);

				return hrRet;
			}

			if (2 == lCnt)
			{
				if (IDYES == MessageBox (__hWndM, resText1.Addr(), resCapt.Addr(),
										 MB_ICONQUESTION | MB_YESNO))
	   				return pIOG->SubPunkt (lInd, &iKontInd);

				bConti = true;	// nach dieser Routine gleich "continue"
				break;
			}

			_ASSERTE (lCnt >= 2);
			return S_FALSE;
		}

    	case OT_FLAECHE:
		{
    	long* plCnt;	// Anzahl der St�tzpunkte in Konturen des editierten Objektes
		long lIndex; 	// R�ckgabeparameter f�r IndexTest(); werden
		IndPos IP;		//  hier nicht ausgewertet

    		pIOG->GetLPCnt (&plCnt);
			pIOG->IndexTest (lInd, &iKontInd, &lIndex, &IP);

    	long lCLen = plCnt[iKontInd];	// St�tzpunktanzahl der Kontur, aus der der St�tzpunkt
										// gel�scht werden soll

			if (lCLen > 4)
   				return pIOG->SubPunkt (lInd, &iKontInd);

			if (4 == lCLen)
			{
				if (0 == iKontInd)	// Au�enkontur
				{
		    	short iKCnt;	// Gr��e des Konturfeldes

		    		pIOG->GetKCnt (&iKCnt);

					if (1 == iKCnt)	// es gibt keine Innenkonturen
					{
						if (IDYES == MessageBox (__hWndM, resText1.Addr(), resCapt.Addr(),
												 MB_ICONQUESTION | MB_YESNO))
	   						pIOG->SubPunkt (lInd, &iKontInd);

							// da durch das vorangegangene SubPunkt() aus einer
							// Fl�chen-Au�enkontur eine Linie wurde, ist auch noch der Endpunkt
							// des Kontur-"Schlosses" zu l�schen, damit es nicht zu einer
							// Selbstinzidenz kommt
	   						return pIOG->SubPunkt (2, &iKontInd);

						bConti = true;	// nach dieser Routine gleich "continue"
					}
					else			// es gibt noch Innenkonturen
					{
    				ResString resText2 (ResID (IDS_GEOFEHLERMOD, pRF), 150);
    				
    					MessageBox (__hWndM, resText2.Addr(), resCapt.Addr(),
    								MB_ICONEXCLAMATION | MB_OK);
						return S_FALSE;
					}
				}
				else				// Innenkontur
				{
				ResString resText3 (ResID (IDS_DELISLAND, pRF), 150);

					if (IDYES == MessageBox (__hWndM, resText3.Addr(), resCapt.Addr(),
											 MB_ICONQUESTION | MB_YESNO))
					{
    				KoOrd* plXI = new KoOrd[lCLen];	// werden nur f�r IslandParameter()
    				KoOrd* plYI = new KoOrd[lCLen];	//  ben�tigt

    					if (!plXI || !plYI)
    					{
	 						DELETE_VEC (plXI);
    						DEX_Error (RC_ObjectModifyFunc, EC_NOMEMORY);
    						return E_OUTOFMEMORY;
    					}

    				// Ausschnitt f�r Neuzeichnen nach L�schen der Insel ermitteln
    				Rectangle Rec = IslandParameter (pIOG, iKontInd, plXI, plYI);

 						DELETE_VEC (plXI);	// plXI bzw. plYI werden nicht
 						DELETE_VEC (plYI);	//  weiter ben�tigt

    				HRESULT hrRet = pIOG->SubKante (1, iKontInd);

    					if (SUCCEEDED (hrRet))
    					{
    						pIOG->SetFlags (OGModObject);	// Geometrie des Objektes ersetzen
#if _TRiAS_VER < 0x0300
    						pIOG->GeometrieAnTRiAS (true, (RECT*)&Rec);
#else
						INT_PTR hPr = reinterpret_cast<INT_PTR>(DEX_GetObjectProject (lONr));

    						pIOG->GeometrieAnTRiASEx (hPr, true, (RECT*)&Rec);
#endif // _TRiAS_VER < 0x0300

    						if (!bAllRecInit)
    						{
    							AllRec = Rec;
    							bAllRecInit = true;
    						}
    						else
    							AllRec = AllRec.Union (Rec);
    					}
    					else
    						bMod = false;

						bConti = true;	// nach dieser Routine gleich "continue"
						return hrRet;
					}
				}

				break;
			}

			_ASSERTE (lCLen >= 4);
    		return S_FALSE;
		}

		default:
			_ASSERTE (false);
			return S_FALSE;
    }

	return S_OK;

} // ActualVertexDelete

// --------------------------------------------------------------------------------------------
// Linienobjekt teilen
HRESULT CObjectModify::LineSplitting (void)
{
WObjektGeometrie wTPkt;		// teilender Punkt

	RETURN_FAILED_HRESULT (CreateInterfaceOG (wTPkt.ppi(), m_PktRM.X(), m_PktRM.Y(), OT_PUNKT));

WUnknown Unk;
WEnumLONG wEnumIn;	// Objektnummern aller zu teilenden Linienobjekte
long lONr;			// Objektnummer eines zu teilenden Linienobjektes

    try
    {
		GeoReinInterface();
		wEnumIn = WEnumLONG (CLSID_EnumObjectsByNumber);

    	for (m_wBelowObjs->Reset(); S_OK == m_wBelowObjs->Next (1, Unk.ppi(), NULL);)
    	{
		WObjektGeometrie wObj (Unk);

    		wObj->GetONr (&lONr);

			_ASSERTE (lONr != 0);
			_ASSERTE (lONr != -1);

    		if (OT_KANTE == DEX_GetObjectType (lONr))
			{
				if (S_FALSE == FehlerhaftesObjekt(m_wGeoRein, lONr))
	    			((IEnum<LONG>*)(IEnumLONG*)wEnumIn)->AddItem (lONr);
				else
				{
				char pcBuffer[_MAX_PATH];
			    ResString resCapt (ResID (IDS_LONGCLASSNAME, pRF), 50);
				ResString resText (ResID (IDS_GEOFEHLER, pRF), sizeof(pcBuffer));

					wsprintf (pcBuffer, resText.Addr(), lONr);
    				MessageBox (__hWndM, pcBuffer, resCapt.Addr(), MB_ICONEXCLAMATION | MB_OK);
					return E_FAIL;	
				}
			}
    	}
    }
    catch (_com_error& e)
    {
    	return _COM_ERROR (e);
    }

// IExtendObjOper-Interface zuschalten
WUnknown wObjOper;

	RETURN_FAILED_HRESULT (m_wEdExSite->ObjOperInterface (wObjOper.ppi()));

WEnumLONG wEnumOut;			// Objektnummern der Teillinien
DWORD dwLageAusw = 0x00;	// bei Linienobjekten bedeutungslos
SpForm sfSForm = SFORM_PERM;

HRESULT hrRet = ((WExtendObjOper)wObjOper)->SectionObjObjs_Geom (wTPkt, wEnumIn, dwLageAusw,
																 sfSForm, wEnumOut.ppi());
int iAnzTFl = 0;	// Anzahl der erzeugten Teillinien

    if (wEnumOut.IsValid())
    	iAnzTFl = (int) wEnumOut->Count();	// Anzahl der erzeugten Teillinien
    else
    {
    ResString resText (ResID (IDS_OBJOPERERR, pRF), 250);
    ResString resCapt (ResID (IDS_LONGCLASSNAME, pRF), 50);
    	
    	MessageBox (__hWndM, resText.Addr(), resCapt.Addr(), MB_ICONEXCLAMATION | MB_OK);
    	return E_FAIL;	// keine Teillinien gebildet
    }

    if (iAnzTFl > 0)	// Linienteilung war erfolgreich
    {
    // Objektnummern der Teillinien aus wEnumOut auslesen
    long* plNeuONr = new long [iAnzTFl];

    	if (! plNeuONr)
    	{
    		DEX_Error (RC_ObjectModifyFunc, EC_NOMEMORY);
    		return E_OUTOFMEMORY;
    	}
    	
    	wEnumOut->Reset();
    	hrRet = wEnumOut->Next (iAnzTFl, plNeuONr, NULL);

    	_ASSERTE (hrRet == S_OK);

    	if (S_OK != hrRet)
    	{
			DELETE_VEC (plNeuONr);
    		return hrRet;
    	}

    POINT PT;	 	// linker unterer Eckpunkt des Recherchefensters

    	PT.x = PT.y = 5;
    	RechWindowForNewObjects (ResString (ResID(IDS_PARTIALLINES,pRF),70), PT, plNeuONr,
								 iAnzTFl);	// Recherchefenster
	 	DELETE_VEC (plNeuONr);
    }
    else						// Linienteilung ist nicht gelungen
		hrRet = E_FAIL;

// Markierungsquadrat des Teilungspunktes neu zeichnen
Rectangle Rec;	// umschlie�endes Rechteck des Teilungspunktes

    wTPkt->RectangleToDraw ((RECT*)&Rec);
    DEX_RePaintRectWait (Rec);
    m_pVWnd->Update();		// sofort zeichnen

    return hrRet;

} // LineSplitting


///////////////////////////////////////////////////////////////////////////////
// Linienobjekt zu Fl�chenobjekt mit identischer geometrie konvertieren (#HK000208)
namespace {
	class CManageUndo 
	{
	public:
		CManageUndo(LPCSTR pcUndoName)  :
			m_fSuccess(false)
		{
			DEX_BeginUndoLevel(pcUndoName);
		}
		~CManageUndo()
		{
			if (m_fSuccess)
				DEX_EndUndoLevel();
			else
				DEX_CancelUndoLevel(true);
		}

		void SetSuccess() { m_fSuccess = true; }

	private:
		bool m_fSuccess;
	};
}

HRESULT CObjectModify::LineToArea (void)
{
Rectangle AllRec;

    COM_TRY {
	ResString resUndoString(ResID(IDS_LINETOAREA_UNDO, pRF), 128);
	CManageUndo Undo(resUndoString);

	CEierUhr Wait (m_pVWnd);
	WUnknown Unk;
	WEnumLONG wEnumIn (CLSID_EnumObjectsByNumber);	// Objektnummern aller zu bearbeitenden Linienobjekte
	vector<INT_PTR> vecObjsToDelete;

    	for (m_wBelowObjs -> Reset(); S_OK == m_wBelowObjs -> Next (1, Unk.ppi(), NULL);) {
		WObjektGeometrie wObj (Unk);
		long lONr = 0;
		ULONG lIdent = 0;

    		wObj -> GetONr (&lONr);
			wObj -> GetIdent (&lIdent);
			_ASSERTE (lONr != 0 && lONr != -1);
    		if (OT_KANTE != DEX_GetObjectType (lONr))
				continue;	// kein Linienobjekt

		KoOrd *plXK; KoOrd *plYK;
		long lCnt = 0;

			wObj -> GetCnt (&lCnt);
			wObj -> GetX ((void **)&plXK);
			wObj -> GetY ((void **)&plYK);

			if (plXK[0] != plXK[lCnt-1] || plYK[0] != plYK[lCnt-1]) {
			// Meldung anzeigen, ggf. abbrechen
				_ASSERTE(NULL != pRF);

			ResString resCap (ResID(IDS_LINETOAREA_CAP, pRF), 128);
			ResString resAskToContinue (ResID(IDS_LINETOAREA_WARNING, pRF), 255);
			MessBox mb (resCap, resAskToContinue, m_pVWnd);
			bool fBreakLoop = false;

				mb.SetType(YesNoCancelButtons);
				switch (mb.Show()) {
				case NoReply:
					continue;		// n�chste Linie

				case CancelReply:
					fBreakLoop = true;
					break;
				}
				if (fBreakLoop)
					break;

			// Polygon schlie�en
				wObj -> AddPunkt(plXK[0], plYK[0], -1, 0);
				lCnt++;
			}

		WObjektGeometrie wNewObj;

			wObj -> GetX ((void **)&plXK);
			wObj -> GetY ((void **)&plYK);
			THROW_FAILED_HRESULT(CreateInterfaceOG (wNewObj.ppi(), plXK, plYK, lCnt, OT_FLAECHE));
			THROW_FAILED_HRESULT(wNewObj -> SetIdent (lIdent));
			THROW_FAILED_HRESULT(wNewObj -> SetFlags (OGNewObject | OGAskWhenError | OGForceGeometry | OGForceGeoError));
			if (FAILED(wNewObj -> GeometrieAnTRiASEx (INT_PTR(NULL), true, NULL)))	// als Fl�che wegschreiben
				continue;		// Fehler oder abgebrochen

		string sUIText;		// UniqueIdent
		ResString resText (ResID (IDS_UIFORMAT, pRF), 20);
		long lNewONr = 0;

			wNewObj -> GetONr (&lNewONr);
    		Format (sUIText, (char*)resText.Addr(), lNewONr);
			MerkmaleKopieren (lONr, lNewONr, sUIText, true, (MPObjectFeature | MPSystemFeatures));

		KoOrd lXMin, lXMax, lYMin, lYMax;

			THROW_FAILED_HRESULT(wNewObj -> GetCont (&lXMin, &lXMax, &lYMin, &lYMax));

		// neu zu zeichnendes Rechteck noch um Markergr��e vergr��ern
		Point PLO = BSKoordinaten (lXMin, lYMax);
		Point PRU = BSKoordinaten (lXMax, lYMin);
		int iMarkGr;

			m_wTopObjs->GetMarkerSizeBS (&iMarkGr);
			PLO.X() -= iMarkGr; 
			PLO.Y() += iMarkGr;
			PRU.X() += iMarkGr;
			PRU.Y() -= iMarkGr;

			AllRec = Rectangle (PLO, PRU);

		// alte Objektnummer speichern
		INT_PTR lOldONr = 0;

			wObj -> GetONr(&lOldONr);
			vecObjsToDelete.push_back(lOldONr);
    	}

		wEnumIn.Assign(NULL);

	// alte Objekte l�schen
	vector<INT_PTR>::iterator end = vecObjsToDelete.end();
	vector<INT_PTR>::iterator it = vecObjsToDelete.begin();

		for (/**/; it != end; ++it)
			DEX_DeleteObjectEx(*it);

		Undo.SetSuccess();		// Undo aktiv machen

    } COM_CATCH;
 
    DEX_RePaintRectWait(AllRec);
    m_pVWnd->Update();		// sofort zeichnen
	return S_OK;
}


// --------------------------------------------------------------------------------------------
// "Linienobjekte verl�ngern" beginnen
HRESULT CObjectModify::LineElongationStart (void)
{
    try
    {
    	// eine (m�glicherweise bis jetzt) aktive IModifyOperation abmelden
    	if (m_wModOper.IsValid())
		{
			m_wModOper->SetModifyClassSite (NULL, NULL);
    		m_wModOper.Assign(NULL);
		}

    WModifyOperation wModOper (CLSID_LineElongation);		// throws_com_error

    	THROW_FAILED_HRESULT (wModOper->SetModifyClassSite (m_wEdExSite, this));
    	m_wModOper = wModOper;

	ulong ulBelowCnt;

    	m_wBelowObjs->GetCount(&ulBelowCnt);

    	_ASSERTE (ulBelowCnt >= 1);

    	THROW_FAILED_HRESULT (m_wModOper->LineElongation (m_wBelowObjs, m_GrabPkt.X(),
    						  m_GrabPkt.Y()));
    }
    catch (_com_error& e)
    {
    	m_wModOper.Assign(NULL);
    	return _COM_ERROR (e);
    }

    return S_OK;

} // LineElongationStart


// --------------------------------------------------------------------------------------------
// "Fl�che teilen" beginnen
HRESULT CObjectModify::AreaPartitionStart (void)
{
    try
    {
    	// eine (m�glicherweise bis jetzt) aktive IModifyOperation abmelden
    	if (m_wModOper.IsValid())
		{
			m_wModOper->SetModifyClassSite (NULL, NULL);
    		m_wModOper.Assign(NULL);
		}

    WModifyOperation wModOper (CLSID_AreaPartition);		// throws_com_error

    	THROW_FAILED_HRESULT (wModOper->SetModifyClassSite(m_wEdExSite, this));
    	m_wModOper = wModOper;

    	m_wBelowObjs->Reset();

    long lONr;	// Objektnummer der ersten und einzigen Fl�che unter der Mausspitze
	WUnknown Unk;

    HRESULT hr = m_wBelowObjs->Next (1, Unk.ppi(), NULL);

		if (S_OK != hr) return hr;	// 05.03.99

	WObjektGeometrie wObj (Unk);

		wObj->GetONr (&lONr);

    	THROW_FAILED_HRESULT (m_wModOper->AreaPartition (lONr, (POINT&)m_ptRM));
    }
    catch (_com_error& e)
    {
    	m_wModOper.Assign(NULL);
    	return _COM_ERROR (e);
    }

    return S_OK;

} // AreaPartitionStart


// --------------------------------------------------------------------------------------------
// Objekt(e) auftrennen;
// erst einmal zur Bereinigung von Selbstinzidenzen
HRESULT CObjectModify::ObjectsCut (void)
{
CEierUhr Wait (m_pVWnd);	// Bereinigung, Zeichnen ... kann l�nger dauern
Rectangle AllRec, Rec;		// Bereiche f�r das Neuzeichnen nach dem Bereinigen
bool bAllRecInit = false;	// AllRec (noch) nicht initialisiert
long lONr;					// Objektnummer eines der Objekte, von denen Selbstinzidenzen
							// bereinigt werden sollen
WObjektGeometrie wObj;		// ObjektGeometrie des lONr-Objektes

HRESULT hrRet = S_OK;		// return-Wert
bool bMod = true;			// beim Bereinigen keine Probleme (true)
ResString resText (ResID (IDS_UNDOOBJECTSCUT, pRF), 50);

    DEX_BeginUndoLevel (resText.Addr());

    try
    {
	WUnknown Unk;

		GeoReinInterface();

    	for (m_wBelowObjs->Reset(); S_OK == m_wBelowObjs->Next (1, Unk.ppi(), NULL); )
    	{
		WObjektGeometrie wObj (Unk);

			wObj->GetONr (&lONr);

			if (S_OK != FehlerhaftesObjekt (m_wGeoRein, lONr, '1'))
				continue;	// Objekt hat keine Selbstinzidenz

			hrRet = SelfTouchCleaning (wObj, (RECT*)&Rec);

    		if (S_OK != hrRet)
    		{
    			bMod = false;
    			continue;
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
    catch (_com_error& e)
    {
    	hrRet = _COM_ERROR (e);
    	bMod = false;
    }

    if (bMod)	// Bereinigen ohne Probleme verlaufen
    	DEX_EndUndoLevel();
    else
    	DEX_CancelUndoLevel (true);

    Wait.Hide();	// ein vorgezogener Quasi-Destruktor f�r CEierUhr Wait

    // nach der Bereinigung wird sich der Cursor meistens (aber nicht immer!) au�erhalb einer
    // St�tzpunktmarkierung befinden; deshalb ist hier eine erneute Pr�fung der CursorPosition
    // notwendig
    RefreshCursorForm();

    // Bereich nach Bereinigung neu zeichnen
    DEX_RePaintRectWait (AllRec);
    m_pVWnd->Update();		// sofort zeichnen

    return hrRet;

} // ObjectsCut


// --------------------------------------------------------------------------------------------
// pIOG ausgehend von dem Men�-Klick-Punkt zerlegen
HRESULT CObjectModify::SelfTouchCleaning (IObjektGeometrie* pIOG, RECT* pRec)
{
// Index lCutInd des angeklickten Punktes m_GrabPkt innerhalb des x- bzw. y-Vektors bestimmen
long lCutInd = -1;
HRESULT hrRet = pIOG->GetVertexIndex (m_GrabPkt.X(), m_GrabPkt.Y(), &lCutInd);

ResString resCapt (ResID (IDS_LONGCLASSNAME, pRF), 50);

	if (FAILED (hrRet))
	{
		MessageBox (__hWndM, ResString(ResID(IDS_NOSELFCLEANINGPOSSIBLE, pRF), 100),
					resCapt.Addr(), MB_ICONEXCLAMATION | MB_OK);
		return hrRet; 
	}

	_ASSERTE (lCutInd >= 0);

short iOT;
long lCnt;
KoOrd* plXK; KoOrd* plYK;

   	pIOG->GetObjTyp (&iOT);
    pIOG->GetCnt (&lCnt);
    pIOG->GetX ((void**)&plXK);
    pIOG->GetY ((void**)&plYK);

	_ASSERTE (iOT == OT_KANTE || iOT == OT_FLAECHE);

bool bClosed = true;	// untersuchtes Linienobjekt bzw. Fl�chenkontur ist geschlossen
// Ich gehe erst einmal davon aus, da� die untersuchte Fl�chenkontur geschlossen ist, was
// nat�rlich nicht zwingend ist (30.07.99)

	if (OT_KANTE == iOT &&
		(plXK[0] != plXK[lCnt-1] || plYK[0] != plYK[lCnt-1]))
		bClosed = false;

// zuerst wird gestestet, ob an der angeklickten Stelle eine sinnvolle Zerlegung m�glich ist;
// "sinnvoll" hei�t hier, da� dabei 2 Konturen entstehen; ist dies der Fall, wird ein Teil der
// St�tzpunkte der Originalkontur aufgesammelt und als weitere Innenkontur der Originalkontur
// hinzugef�gt; danach werden besagte Punkte aus der Originalkontur gel�scht
KoOrd lXCut = plXK[lCutInd];	// Punkt, bei dem die Originalkontur
KoOrd lYCut = plYK[lCutInd];	// zerlegt werden soll
long j = lCutInd;				// Laufindex f�r Originalkontur
bool bCut = true;				// Zerlegung ab dem angeklickten Punkt m�glich

	// Testen, ob ausgehend von dem angeklickten St�tzpunkt eine sinnvolle Zerlegung
	// m�glich ist
	if (bClosed)
	{
		do
			(j < lCnt-2) ? (j++) : (j = 0);
		while (plXK[j] != lXCut || plYK[j] != lYCut);
		if (j == lCutInd)	// keine Zerlegung ab dem angeklickten Punkt m�glich
			bCut = false;
	}
	else
	{
		for (j = lCutInd+1; j < lCnt; j++)
			if (plXK[j] == lXCut && plYK[j] == lYCut)
				break;
		if (j == lCnt)	// keine Zerlegung ab dem angeklickten Punkt m�glich
			bCut = false;
	}

	if (!bCut)	// keine Zerlegung ab dem angeklickten Punkt m�glich
	{
		MessageBox (__hWndM, ResString(ResID(IDS_NOSELFCLEANINGPOSSIBLE, pRF), 100),
					resCapt.Addr(), MB_ICONEXCLAMATION | MB_OK);

		return S_FALSE;
	}

KoOrd* plXIn = new KoOrd[lCnt];	// die neue Innenkontur (kann nicht mehr St�tzpunkte
KoOrd* plYIn = new KoOrd[lCnt];	// erhalten als die Originalfl�che)

	if (!plXIn || !plYIn)
	{
	 	DELETE_VEC (plXIn);
    	DEX_Error (RC_ObjectModifyFunc, EC_NOMEMORY);
    	return E_OUTOFMEMORY;
	}

long jj = 0;	// Laufindex von plXIn[] und plYIn[]

	j = lCutInd;

	// neue Innenkontur f�r korrigierte Fl�che aufbauen
	do
	{
		plXIn[jj] = plXK[j];
		plYIn[jj] = plYK[j];
		(j < lCnt-2) ? (j++) : (j = 0);		// klappt auch f�r nicht geschlossene Linien
		jj++;
	}
	while (plXK[j] != lXCut || plYK[j] != lYCut);

	plXIn[jj] = plXK[j];	// schlie�enden Endpunkt zur
	plYIn[jj] = plYK[j];	// Innenkontur noch hinzuf�gen

	if (OT_KANTE == iOT)
	{
	WObjektGeometrie wNewObj;
	HRESULT hr = CreateInterfaceOG (wNewObj.ppi(), m_GrabPkt.X(), m_GrabPkt.Y(), OT_KANTE);

    	if (FAILED(hr)) return hr;

		wNewObj->AddPunkt (plXIn, plYIn, jj + 1, -1, -1);
		StoreNewLinepart (pIOG, wNewObj, pRec);
	}
	else
   		pIOG->AddKante (plXIn, plYIn, jj + 1, -1);	// Innenkontur hinzuf�gen

 	DELETE_VEC (plXIn);
 	DELETE_VEC (plYIn);

// die f�r die Innenkontur verwendeten Punkte aus der Originalkontur l�schen (den ersten und
// letzten der �bernommenen Punkten at�rlich nicht, weil diese auch in der Originalkontur
// verbleiben m�ssen)
short iKontInd;

	for (j = 0; j < jj-1; j++)							// "-1", um den letzten,
   		pIOG->SubPunkt (lCutInd+1, false, &iKontInd);	// "+1", um den ersten nicht zu �bernehmen

short iFlags;

    pIOG->GetFlags (&iFlags);
    iFlags |= OGModObject;		// Objekt nur modifizieren
    iFlags |= OGAskWhenError;	// im Fehlerfall wird Anwender vor dem Abspeichern noch einmal gefragt
    pIOG->SetFlags (iFlags);

#if _TRiAS_VER < 0x0300
    // 1. Parameter von GeometrieAnTRiAS() besagt, da� Undo m�glich ist
	return pIOG->GeometrieAnTRiAS (true, pRec);
#else
    // 2. Parameter von GeometrieAnTRiASEx() besagt, da� Undo m�glich ist
//	return pIOG->GeometrieAnTRiASEx (reinterpret_cast<INT_PTR>(hPr), true, pRec);
	_ASSERTE(FALSE);
	return E_FAIL;
#endif // _TRiAS_VER < 0x0300

} // SelfTouchCleaning


// --------------------------------------------------------------------------------------------
// speichern des zweiten (neuen) Linieobjektes
HRESULT CObjectModify::StoreNewLinepart (IObjektGeometrie* pOrigObj, IObjektGeometrie* pNewObj,
										 RECT* pRec)
{
ulong ulIdent = (ulong)-1;

	pOrigObj->GetIdent (&ulIdent);	// Identifikator abfragen

HPROJECT hPr = DEX_GetObjectsProject (ulIdent); 

	if (0 == DEX_GetROModeEx (hPr))	// Datenbank nicht schreibgesch�tzt (R/W-Modus)
		// OGNewObject:     neues Objekt generieren
    	// OGAskWhenError:  im Fehlerfall wird Anwender vor dem Abspeichern noch einmal gefragt
    	pNewObj->SetFlags (OGNewObject | OGAskWhenError);
	else
    	// OGTempObject:	tempor�res Objekt
    	pNewObj->SetFlags (OGTempObject);

    pNewObj->SetIdent (ulIdent);

#if _TRiAS_VER < 0x0300
    // 1. Parameter von GeometrieAnTRiAS() besagt, da� Undo m�glich ist
HRESULT hr = pNewObj->GeometrieAnTRiAS (true, pRec);
#else
    // 2. Parameter von GeometrieAnTRiASEx() besagt, da� Undo m�glich ist
HRESULT hr = pNewObj->GeometrieAnTRiASEx (reinterpret_cast<INT_PTR>(hPr), true, pRec);
#endif // _TRiAS_VER < 0x0300

	if (SUCCEEDED(hr))	// neue Fl�che wurde in DB abgespeichert
	{
	long lOldONr, lNewONr;
			
		pOrigObj->GetONr (&lOldONr);	// alte Objektnummer abfragen
		pNewObj->GetONr (&lNewONr);		// neue Objektnummer abfragen

	string sUIText;		// UniqueIdent
	ResString resText (ResID (IDS_UIFORMAT, pRF), 20);

    	Format (sUIText, (char*)resText.Addr(), lNewONr);
		MerkmaleKopieren (lOldONr, lNewONr, sUIText, true, (MPObjectFeature | MPSystemFeatures));
	}

	return hr;

} // StoreNewLinepart


// --------------------------------------------------------------------------------------------
// "Innenkontur hinzuf�gen" beginnen
HRESULT CObjectModify::IslandAddStart (void)
{
    try
    {
    	// eine (m�glicherweise bis jetzt) aktive IModifyOperation abmelden
    	if (m_wModOper.IsValid())
		{
			m_wModOper->SetModifyClassSite (NULL, NULL);
    		m_wModOper.Assign(NULL);
		}

    WModifyOperation wModOper (CLSID_IslandAdd);		// throws_com_error

    	THROW_FAILED_HRESULT (wModOper->SetModifyClassSite(m_wEdExSite, this));
    	m_wModOper = wModOper;

	ulong ulBelowCnt;

		m_wBelowObjs->GetCount(&ulBelowCnt);

    	_ASSERTE (ulBelowCnt >= 1);

    	THROW_FAILED_HRESULT (m_wModOper->IslandAddition (m_wBelowObjs));
    }
    catch (_com_error& e)
    {
    	m_wModOper.Assign(NULL);
    	return _COM_ERROR (e);
    }

    return S_OK;

} // IslandAddStart


// --------------------------------------------------------------------------------------------
// Insel(n) l�schen
HRESULT CObjectModify::IslandsDelete (void)
{
HRESULT hrRet = S_OK;		// return-Wert
Rectangle AllRec, Rec;		// Bereiche f�r das Neuzeichnen nach dem L�schen
bool bAllRecInit = false;	// AllRec (noch) nicht initialisiert

WObjektGeometrie wObj;		// ObjektGeometrie eines Objektes, dessen Insel gel�scht werden soll
short iOT, iKCnt;			// Parameter des wObj-Objektes
long* plCnt;
long lIndex;				// Index des St�tzpunktes, auf dem der Cursor steht
long lInd; 					// Parameter von IndexTest(); werden hier
IndPos IP;					//  nicht ausgewertet
bool bMod = true;			// beim InselL�schen keine Probleme (true)
ResString resText (ResID (IDS_UNDOISLANDSDEL, pRF), 50);

    DEX_BeginUndoLevel (resText.Addr());

    try
    {
	WUnknown Unk;

    	for (m_wBelowObjs->Reset(); S_OK == m_wBelowObjs->Next (1, Unk.ppi(), NULL); )
    	{
		WObjektGeometrie wObj (Unk);

    		wObj->GetObjTyp (&iOT);
    		wObj->GetKCnt (&iKCnt);

    		if (OT_FLAECHE != iOT || 1 == iKCnt) continue;

    		wObj->GetLPCnt (&plCnt);

    		if (FAILED(wObj->GetVertexIndex (m_GrabPkt.X(), m_GrabPkt.Y(), &lIndex)) &&
    			FAILED(wObj->GetLineIndex (m_GrabPkt.X(), m_GrabPkt.Y(), m_lEpsilon, &lIndex)))
    			continue;

    	short iKontInd = -1;	// Index der Kontur, auf der sich der Cursor befindet

    		wObj->IndexTest (lIndex, &iKontInd, &lInd, &IP);

    	long lCLen = plCnt[iKontInd];	// L�nge der zu l�schenden Innenkontur
    	KoOrd* plXI = new KoOrd[lCLen];
    	KoOrd* plYI = new KoOrd[lCLen];

    		if (!plXI || !plYI)
    		{
	 			DELETE_VEC (plXI);
    			DEX_Error (RC_ObjectModifyFunc, EC_NOMEMORY);
    			bMod = false;
    			hrRet = E_OUTOFMEMORY;
    			break;
    		}

    		// Ausschnitt f�r Neuzeichnen nach L�schen der Insel sowie die Koordinatenvektoren
    		// plXI, plYI ermitteln
    		Rec = IslandParameter (wObj, iKontInd, plXI, plYI);

    		hrRet = wObj->SubKante (1, iKontInd);
    		if (SUCCEEDED (hrRet))
    		{
    			wObj->SetFlags (OGModObject);		// Geometrie des Objektes ersetzen
#if _TRiAS_VER < 0x0300
    			hrRet = wObj->GeometrieAnTRiAS (true, (RECT*)&Rec);
#else
			long lONr;

				wObj->GetONr (&lONr);

			INT_PTR hPr = reinterpret_cast<INT_PTR>(DEX_GetObjectProject (lONr));

    			hrRet = wObj->GeometrieAnTRiASEx (hPr, true, (RECT*)&Rec);
#endif // _TRiAS_VER < 0x0300

    			// wenn modifiziertes Objekt nicht nach TRiAS gespeichert wird, dann L�schen
    			// r�ckg�ngig machen
    			if (FAILED (hrRet))
    			{
    				wObj->AddKante (plXI, plYI, lCLen, iKontInd);
    				bMod = false;
    			}
    		}
    		else
    			bMod = false;

	 		DELETE_VEC (plXI);
	 		DELETE_VEC (plYI);

    		if (!bAllRecInit)
    		{
    			AllRec = Rec;
    			bAllRecInit = true;
    		}
    		else
    			AllRec = AllRec.Union (Rec);
    	} // for
    }
    catch (_com_error& e)
    {
    	hrRet = _COM_ERROR (e);
    	bMod = false;
    }


    if (bMod)	// L�schen ohne Probleme verlaufen
    	DEX_EndUndoLevel();
    else
    	DEX_CancelUndoLevel (true);

    DEX_RePaintRectWait (AllRec);
    m_pVWnd->Update();		// sofort zeichnen

    return hrRet;

} // IslandsDelete

///////////////////////////////////////////////////////////////////////////////
// Fl�che am Mausklick aufbrechen und zu Linienobjekt konvertieren
HRESULT CObjectModify::AreaToLine (void)
{
Rectangle AllRec;

	COM_TRY {
	ResString resUndoString(ResID(IDS_AREATOLINE_UNDO, pRF), 128);
	CManageUndo Undo(resUndoString);

	// es wird nur das jeweils erste Objekt bearbeitet
	CEierUhr Wait (m_pVWnd);
	WUnknown Unk;
	vector<INT_PTR> vecObjsToDelete;

		m_wBelowObjs -> Reset();
    	if (S_OK == m_wBelowObjs -> Next (1, Unk.ppi(), NULL)) {
		WObjektGeometrie wObj (Unk);

		// Index lCutInd des angeklickten Punktes m_GrabPkt innerhalb des x- bzw. y-Vektors
		// bestimmen; wenn m_GrabPkt kein St�tzpunkt ist, wird in lCutInd der Endst�tzpunkt
		// der Konturstrecke zur�ckgegeben, in deren N�he m_GrabPkt liegt
		long lCutInd = -1;
		
		// m_GrabPkt ist mit einem St�tzpunkt identisch, d. h. f�r den Aufbau des Lineinobjektes
		// wird kein weiterer Punkt ben�tigt (bNewPoint == false); wenn m_GrabPkt kein St�tzpunkt
		// ist, wird m_GrabPkt als weiterer Punkt zu den schon vorhandenen St�tzpunkten der
		// Fl�chenkontur hinzugef�gt (bNewPoint == true)
		bool bNewPoint = false;

			if (S_OK != wObj -> GetVertexIndex (m_GrabPkt.X(), m_GrabPkt.Y(), &lCutInd))
			{
    			THROW_FAILED_HRESULT(wObj -> GetLineIndex (m_GrabPkt.X(), m_GrabPkt.Y(),
														   m_lEpsilon, &lCutInd));
				bNewPoint = true;
			}

		short iOT;
		long lCnt;
		KoOrd* plXK; KoOrd* plYK;
		long lONr = 0;
		ULONG lIdent = 0;

			wObj->GetONr (&lONr);
			wObj->GetIdent (&lIdent);
   			wObj->GetObjTyp (&iOT);
			wObj->GetCnt (&lCnt);
			wObj->GetX ((void **)&plXK);
			wObj->GetY ((void **)&plYK);

			_ASSERTE (iOT == OT_FLAECHE);
		
		// jetzt Liniengeometrie neu aufsammeln;
		// wenn m_GrabPkt mit einem St�tzpunkt identisch ist, hat das neue Linienobjekt genausoviele
		// St�tzpunkte wie die Fl�chenkontur; anderenfalls erh�lt das Linienobjekt einen
		// zus�tzlichen St�tzpunkt
		short iAdd = bNewPoint ? 1 : 0;
		auto_ptr<KoOrd> plXIn (new KoOrd[lCnt+iAdd]);
		auto_ptr<KoOrd> plYIn (new KoOrd[lCnt+iAdd]);

			if (NULL == plXIn.get() || NULL == plYIn.get()) {
    			DEX_Error (RC_ObjectModifyFunc, EC_NOMEMORY);
    			return E_OUTOFMEMORY;
			}

		long jj = bNewPoint ? 1 : 0;	// Laufindex von plXIn[] und plYIn[]
		long j = lCutInd;
		KoOrd lXCut = plXK[lCutInd];
		KoOrd lYCut = plYK[lCutInd];

		// neues Linienobjekt aufbauen
			do {
				*(plXIn.get() + jj) = plXK[j];
				*(plYIn.get() + jj) = plYK[j];
				if (j < lCnt-2)		// letzten Punkt �berspringen (ist sonst doppelt)
					j++;
				else
					j = 0;
				jj++;
			} while (plXK[j] != lXCut || plYK[j] != lYCut);

			// den Endpunkt (und evtl.auch einen neuen Anfangspunkt) zu dem neuen Linienobjekt
			// noch hinzuf�gen
			if (!bNewPoint)
			{
				*(plXIn.get() + jj) = plXK[j];	
				*(plYIn.get() + jj) = plYK[j];
			}
			else
			{
			// da es ausreichend ist, dass m_GrabPkt nur "in der N�he" einer Konturstrecke
			// liegt, wird jetzt an Stelle von m_GrabPkt der Lotpunkt von m_GrabPkt auf die
			// Konturstrecke plXK[lCutInd-1]/plYK[lCutInd-1] - plXK[lCutInd]/plYK[lCutInd]
			// verwendet
			double xl, yl;	// Koordinaten des Lotpunktes

				GeradenLotPunkt (m_GrabPkt.X(), m_GrabPkt.Y(), plXK[lCutInd-1], plYK[lCutInd-1],
								 plXK[lCutInd], plYK[lCutInd], xl, yl);

				*(plXIn.get()) = *(plXIn.get() + jj) = DtoL(xl);
				*(plYIn.get()) = *(plYIn.get() + jj) = DtoL(yl);
			}

		// Liniengeometrie wegschreiben
		WObjektGeometrie wNewObj;

			THROW_FAILED_HRESULT(CreateInterfaceOG (wNewObj.ppi(), plXIn.get(), plYIn.get(), lCnt+iAdd, OT_KANTE));
			THROW_FAILED_HRESULT(wNewObj -> SetIdent (lIdent));
			THROW_FAILED_HRESULT(wNewObj -> SetFlags (OGNewObject | OGAskWhenError | OGForceGeometry | OGForceGeoError));
			if (SUCCEEDED(wNewObj -> GeometrieAnTRiASEx(NULL, true, NULL)))	{
			// und wegschreiben
			string sUIText;		// UniqueIdent
			ResString resText (ResID (IDS_UIFORMAT, pRF), 20);
			long lNewONr = 0;

				wNewObj -> GetONr (&lNewONr);
    			Format (sUIText, (char*)resText.Addr(), lNewONr);
				MerkmaleKopieren (lONr, lNewONr, sUIText, true, (MPObjectFeature | MPSystemFeatures));

			KoOrd lXMin, lXMax, lYMin, lYMax;

				THROW_FAILED_HRESULT(wNewObj -> GetCont (&lXMin, &lXMax, &lYMin, &lYMax));

			// neu zu zeichnendes Rechteck noch um Markergr��e vergr��ern
			Point PLO = BSKoordinaten (lXMin, lYMax);
			Point PRU = BSKoordinaten (lXMax, lYMin);
			int iMarkGr;

				m_wTopObjs->GetMarkerSizeBS (&iMarkGr);
				PLO.X() -= iMarkGr; 
				PLO.Y() += iMarkGr;
				PRU.X() += iMarkGr;
				PRU.Y() -= iMarkGr;

				AllRec = Rectangle (PLO, PRU);

			// Objektnummer des alten Objektes speichern
			INT_PTR lOldONr = 0;

				wObj -> GetONr(&lOldONr);
				vecObjsToDelete.push_back(lOldONr);
			}
		}

	// alte Objekte l�schen
	vector<INT_PTR>::iterator end = vecObjsToDelete.end();
	vector<INT_PTR>::iterator it = vecObjsToDelete.begin();

		for (/**/; it != end; ++it)
			DEX_DeleteObjectEx(*it);

		Undo.SetSuccess();		// Undo aktiv machen

	} COM_CATCH;

    DEX_RePaintRectWait (AllRec);
    m_pVWnd->Update();		// sofort zeichnen

	return S_OK;
}

// --------------------------------------------------------------------------------------------
// Bildschirmbereich ermitteln, in dem die zu l�schende Insel liegt, sowie Koordinatenvektoren
// f�r die zul�schende Insel in plXI, plYI zur�ckgeben
Rectangle CObjectModify::IslandParameter (IObjektGeometrie* pIOG, int iKontInd, KoOrd* plXI,
    									  KoOrd* plYI)
{
    _ASSERTE (pIOG != NULL);
    _ASSERTE (plXI != NULL);
    _ASSERTE (plYI != NULL);

KoOrd* plXK; KoOrd* plYK;
long* plCnt;

    pIOG->GetX ((void**)&plXK);
    pIOG->GetY ((void**)&plYK);
    pIOG->GetLPCnt (&plCnt);

long lPrevCnt = 0;	// Anzahl der St�tzpunkte vor der gel�schten Insel

    for (int i = 0; i < iKontInd; i++)
    	lPrevCnt += plCnt[i];

KoOrd xmin = MAXKOORD;
KoOrd xmax = 0;
KoOrd ymin = MAXKOORD;
KoOrd ymax = 0;

	// der letzte Punkt der Insel braucht nicht mit getestet zu werden
    for (long j = lPrevCnt; j < lPrevCnt+plCnt[iKontInd]-1; j++)
    {
    	if (plXK[j] < xmin) xmin = plXK[j];
    	if (plXK[j] > xmax) xmax = plXK[j];
    	if (plYK[j] < ymin) ymin = plYK[j];
    	if (plYK[j] > ymax) ymax = plYK[j];
    	plXI[j-lPrevCnt] = plXK[j];	// R�ckgabe der Koordinaten der
    	plYI[j-lPrevCnt] = plYK[j];	//  zu l�schenden Insel
    }

	plXI[j-lPrevCnt] = plXK[lPrevCnt];	// letzter Punkt gleich
	plYI[j-lPrevCnt] = plYK[lPrevCnt];	// erstem Punkt

Point PLO = BSKoordinaten (xmin, ymax);
Point PRU = BSKoordinaten (xmax, ymin);

// neu zu zeichnendes Rechteck noch um Markergr��e vergr��ern
int iMarkGr;

    m_wTopObjs->GetMarkerSizeBS (&iMarkGr);
    PLO.X() -= iMarkGr; 
    PLO.Y() += iMarkGr;
    PRU.X() += iMarkGr;
    PRU.Y() -= iMarkGr;

    return Rectangle (PLO, PRU);

} // IslandParameter


// --------------------------------------------------------------------------------------------
// Angeklicktes Objekt rechtwinklig machen
HRESULT CObjectModify::MakeAreaRectangular (void)
{
IEnumObjectsByNumber* pEnumOut = NULL;	// Parameter f�r Rectangularity(); wird hier nicht
    									// weiter ben�tigt

    try
    {
    	// eine (m�glicherweise bis jetzt) aktive IModifyOperation abmelden
    	if (m_wModOper.IsValid())
		{
			m_wModOper->SetModifyClassSite (NULL, NULL);
    		m_wModOper.Assign(NULL);
		}

    WModifyOperation wModOper (CLSID_MakeRectangular);		// throws_com_error

    	THROW_FAILED_HRESULT (wModOper->SetModifyClassSite(m_wEdExSite, this));
    	m_wModOper = wModOper;

    	THROW_FAILED_HRESULT (m_wModOper->Rectangularity (m_lAktONr, m_iRecKInd, m_lRecStInd,
    						  dRWnkEps, dGWnkEps, dAngrEps, &pEnumOut));

    	// ModifyOperation "Rechtwinkligkeit" wieder abmelden
    	if (m_wModOper.IsValid())
		{
			m_wModOper->SetModifyClassSite (NULL, NULL);
    		m_wModOper.Assign (NULL);
		}
    }
    catch (_com_error& e)
    {
    	m_wModOper.Assign(NULL);
    	return _COM_ERROR (e);
    }

    return S_OK;

} // MakeAreaRectangular


// --------------------------------------------------------------------------------------------
// Teil einer Linie bzw. Fl�chenkontur eines anderen Objektes �bernehmen
HRESULT CObjectModify::CommonBorderStart (void)
{
    COM_TRY
    {
    	// ein (m�glicherweise bis jetzt) aktives IModifyOperation abmelden
    	if (m_wModOper.IsValid())
		{
			m_wModOper->SetModifyClassSite (NULL, NULL);
			m_wModOper.Assign(NULL);
		}

    WModifyOperation wModOper (CLSID_CommonBorder);	// throws_com_error

    	THROW_FAILED_HRESULT (wModOper->SetModifyClassSite (m_wEdExSite, this));
    	m_wModOper = wModOper;

    	THROW_FAILED_HRESULT (m_wModOper->MakeCommonBorder (m_wBelowObjs, m_PktRM.X(),
							  m_PktRM.Y()));
    }
	COM_CATCH_OP(m_wModOper.Assign(NULL));

    return S_OK;

} // CommonBorderStart


// --------------------------------------------------------------------------------------------
// alle ausgew�hlten Objekte l�schen, die den St�tzpunkt bzw. die Strecke besitzen, in den
// (auf die) mit der rechten Maustaste geklickt wurde
bool CObjectModify::ObjectsDelete (void)
{
Rectangle AllRec, Rec;		// Bereiche f�r das Neuzeichnen nach dem L�schen
bool bAllRecInit = false;	// AllRec (noch) nicht initialisiert

long lONr;					// Objektnummer eines zu l�schenden Objektes
WObjektGeometrie wObj;		// ObjektGeometrie des lONr-Objektes

bool bMod = true;			// beim Objekt-L�schen keine Probleme (true)
ResString resText (ResID (IDS_DELOBJECTS, pRF), 50);

    DEX_BeginUndoLevel (resText.Addr());

    try
    {
	WUnknown Unk;

    	for (m_wBelowObjs->Reset(); S_OK == m_wBelowObjs->Next (1, Unk.ppi(), NULL); )
    	{
		WObjektGeometrie wObj (Unk);

    		wObj->RectangleToDraw ((RECT*)&Rec);

    		if (!bAllRecInit)
    		{
    			AllRec = Rec;
    			bAllRecInit = true;
    		}
    		else
    			AllRec = AllRec.Union (Rec);

			wObj->GetONr (&lONr);
	 		bMod = bMod && DEX_DeleteObjectEx (lONr);
    	} // for
    }
    catch (_com_error&)
    {
    	bMod = false;
    }

    if (bMod)	// L�schen ohne Probleme verlaufen
    	DEX_EndUndoLevel();
    else
    	DEX_CancelUndoLevel (true);

// neu zu zeichnendes Rechteck noch um Markergr��e vergr��ern
int iMarkGr;

    m_wTopObjs->GetMarkerSizeBS (&iMarkGr);
    AllRec.Left() -= iMarkGr;
    AllRec.Top() += iMarkGr;
    AllRec.Right() += iMarkGr;
    AllRec.Bottom() -= iMarkGr;

    // f�r alle F�lle eine erneute Pr�fung der CursorPosition
    RefreshCursorForm();

    DEX_RePaintRectWait (AllRec);
    m_pVWnd->Update();		// sofort zeichnen

    return bMod;

} // ObjectsDelete
