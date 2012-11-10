// Definitionen: Dialog f�r die Grundfunktionen beim Editieren
// File: EditBaseDlg.cpp
// W. M�rtl


#include "GeoEditP.h"

#include <errinstx.hxx>

#include "Kreis.h"			// Vollkreis, Kreisbogen
#include "EditDlg.h"		// CEditDlg
#include "EditBaseDlg.h"



#if defined(_DEBUG)
#undef THIS_FILE
static char BASED_CODE THIS_FILE[] = __FILE__;
#endif




///////////////////////////////////////////////////////////////////////////////////////////////
// globale Parameter
extern ResourceFile* pRF;

const UINT WM_DEFINENEWITEM = RegisterWindowMessage("WM_DEFINENEWITEM");

///////////////////////////////////////////////////////////////////////////////////////////////
// Konstruktor / Destruktor
#pragma warning (disable: 4355)	// Ausschalten von uninteressanten Warnungen

CEditBaseDlg::CEditBaseDlg (KoOrd* plGrabPktX, KoOrd* plGrabPktY, HRESULT hrComBorder,
							int iCloseCnt, KoOrd* plCloseX, KoOrd* plCloseY, bool bNewEdit)
    		: CPropertyPage (ResID(IDD_EDITBASE, pRF),
    						 ResString (ResID(IDS_EDITBASECAP, pRF), 32)),
    		  m_IdentListe (this, IDL_IDENTIFIKATOR),
			  m_OptionenText (this, IDT_OPTIONEN),
			  m_Border (this, IDP_BORDER),
    		  m_ComBorderButton (this, IDB_COMMONBORDER),
			  m_ComBorderText (this, IDT_COMMONBORDER),
    		  m_CircleButton (this, IDB_CIRCLE),
			  m_CircleText (this, IDT_CIRCLE),
    		  m_CloseButton (this, IDB_CLOSE),
			  m_CloseText (this, IDT_CLOSE)
{
    m_pVWnd = g_pTE->MVWind();	// TRiAS-ViewFenster
    m_plGrabPktX = plGrabPktX;
    m_plGrabPktY = plGrabPktY;
    m_hrComBorder = hrComBorder;
    m_iCloseCnt = iCloseCnt;
    m_plCloseX = plCloseX;
    m_plCloseY = plCloseY;
	m_bNewEdit = bNewEdit;
}

#pragma warning (default: 4355)


// --------------------------------------------------------------------------------------------
CEditBaseDlg::~CEditBaseDlg (void)
{
	DELETE_OBJ (m_pIL);
}


// --------------------------------------------------------------------------------------------
// Call-Back-Funktion f�r die Initialisierung der Controls
void CEditBaseDlg::WindowInit (Event)
{
    // explizite Initialisierung der Controls
    m_IdentListe.FInit();
	m_OptionenText.FInit();
	m_Border.FInit();
    m_ComBorderButton.FInit();
    m_ComBorderText.FInit();
    m_CircleButton.FInit();
    m_CircleText.FInit();
    m_CloseButton.FInit();
    m_CloseText.FInit();

	// OwnerDraw-Kn�pfe initialisieren
	if (m_ComBorderButton.LoadBitmaps (ResID(IDB_COMM, pRF), ResID(IDB_COMM_SEL, pRF),
									ResID(IDB_COMM_FOCUS, pRF), ResID(IDB_COMM_DISABLED, pRF)))
		m_ComBorderButton.SizeToContent(); 
	if (m_CircleButton.LoadBitmaps (ResID(IDB_CIRC, pRF), ResID(IDB_CIRC_SEL, pRF),
									ResID(IDB_CIRC_FOCUS, pRF), ResID(IDB_CIRC_DISABLED, pRF)))
		m_CircleButton.SizeToContent(); 
	if (m_CloseButton.LoadBitmaps (ResID(IDB_CLOS, pRF), ResID(IDB_CLOS_SEL, pRF),
									ResID(IDB_CLOS_FOCUS, pRF), ResID(IDB_CLOS_DISABLED, pRF)))
		m_CloseButton.SizeToContent(); 

    m_pED = (CEditDlg*) GetPropertySheet();

    // Zugriff auf editiertes Objekt, das in der Sheet gehalten wird
    m_wObj = m_pED->GetObject();
    m_wObj->GetObjTyp (&m_iObjTyp);
    m_wObj->GetCnt (&m_lCnt);
    m_wObj->GetX ((void**)&m_plX);
    m_wObj->GetY ((void**)&m_plY);
    if (OT_FLAECHE == m_iObjTyp)
    {
    	m_wObj->GetKCnt (&m_iKCnt);
    	m_wObj->GetLPCnt (&m_plCnt);
    }

	m_lComONr = m_pED->GetComONr();

    ControlsSetting();

} // WindowInit


// --------------------------------------------------------------------------------------------
// Test, ob ein editiertes Linienobjekt durch manuelles Grabben schon von vornherein geschlossen
// ist; wenn ja, dann bClosedLine = true, was zur Folge hat, da� ContinueButton deaktiviert
// wird
void CEditBaseDlg::TestClosedLine (void)
{
    if (OT_KANTE != m_iObjTyp)
    	return;

    m_CloseButton.Enable();
    m_CloseText.Enable();
    m_pED->SetClosedLine (false);

    if (0 == m_iCloseCnt)	// echte Neueditierung
    {
    	if (m_plX[0] == m_plX[m_lCnt-1] && m_plY[0] == m_plY[m_lCnt-1])
    	{
    		m_CloseButton.Disable();
    		m_CloseText.Disable();
    		if (m_lCnt >= 3)
    			m_pED->SetClosedLine (true);
    	}
    }
    else					// Linienverl�ngerung
    {
    	for (int i = 0; i < m_iCloseCnt; i++)
    		if (m_plX[m_lCnt-1] == m_plCloseX[i] && m_plY[m_lCnt-1] == m_plCloseY[i])
    		{
    			m_CloseButton.Disable();
    			m_CloseText.Disable();
    			m_pED->SetClosedLine (true);
    			return;
    		}
    }

} // TestClosedLine


// --------------------------------------------------------------------------------------------
// Click auf ListBox f�r Objektklassenschl�ssel-Auswahl
void CEditBaseDlg::ListBoxSel (ControlEvt)
{
    // ausgew�hlten Objektklassenschl�ssel ermitteln
    m_ulIdent = IdentErmitteln (&m_IdentListe);
	if (INVALID_HOBJECTS == m_ulIdent) 
		PostEvent(WM_DEFINENEWITEM); 
	AdjustOKButton();

} // ListBoxSel


// --------------------------------------------------------------------------------------------
// ein Button dieser Page wurde gedr�ckt
void CEditBaseDlg::ButtonClick (ControlEvt e)
{
    m_wObj->GetCnt (&m_lCnt);		// Parameter von m_wObj f�r die ActionRoutinen der Button
    m_wObj->GetX ((void**)&m_plX);	//  bereitstellen
    m_wObj->GetY ((void**)&m_plY);
    if (OT_FLAECHE == m_iObjTyp)
    {
    	m_wObj->GetKCnt (&m_iKCnt);
    	m_wObj->GetLPCnt (&m_plCnt);
    }

    switch ((uint) e.GetControlID())
    {
    	case IDB_CLOSE:			// bei Editierung eines Linien- oder Fl�chenobjektes dieses
    		CloseButtonAction();//  zuziehen
    		break;

    	case IDB_CIRCLE:		// aus 3 St�tzpunkten einen Kreis bzw. Kreisbogen konstruieren
    		CircleButtonAction();
    		break;

    	case IDB_COMMONBORDER:	// gemeinsame Linie �bernehmen
    		ComBorderButtonAction();
    		break;

    	default:
    		_ASSERTE (false);
    		break;
    }
} // ButtonClick


// --------------------------------------------------------------------------------------------
// wird gerufen, wenn OK-, �bernehmen- oder CloseButton gedr�ckt wurden
BOOL CEditBaseDlg::OnOK (NotifyEvt)
{
    m_wObj->SetIdent (m_ulIdent);

    return false;

} // OnOK


// --------------------------------------------------------------------------------------------
// wird gerufen, wenn diese Page aktiviert werden soll;
// Test, wie m_bClosedLine in der PropertySheet steht, um danach den CloseButton zu stellen
// (ist erforderlich, weil in der PropertyPage "CEditCoordDlg" durch Korrektur des letzten
// St�tzpunktes ein Linienobjekt manuell geschlossen werden kann)
BOOL CEditBaseDlg::OnSetActive (NotifyEvt)
{
    if (OT_KANTE == m_iObjTyp &&				// Editierung einer Kante und
    	((0 == m_iCloseCnt && m_lCnt >= 3) ||	// Neueditierung oder
    	1 == m_iCloseCnt) &&					//  Linienverl�ngerung f�r eine einzige Linie
    	!m_pED->GetClosedLine())				// und nichts geschlossen
	{
    	m_CloseButton.Enable();
    	m_CloseText.Enable();
	}
    else
	{
    	m_CloseButton.Disable();
    	m_CloseText.Disable();
	}

    // es sind F�lle denkbar, wo nach dem L�schen der ComBorderButton noch zul�ssig ist; dann
    // w�re aber dieser soeben gel�schte letzte GrabPunkt redundant gewesen; da der Test
    // hierf�r ziemlich aufwendig ist und dieser Redundanzfall wohl kaum mehr als einmal in 100
    // Jahren auftritt, spare ich mir diesen Test erst einmal
    if ((S_OK == m_hrComBorder || E_PENDING == m_hrComBorder) &&
    	!m_pED->GetCoordMod() &&			// keine �nderung der Koordinaten durch den
    										// Anwender in der CEditCoordDlg-Page
		OT_PUNKT != m_iObjTyp &&			// es wird KEIN Punktobjekt editiert
		!m_pED->GetDelBttn())
	{
    	m_ComBorderButton.Enable();
    	m_ComBorderText.Enable();
	}
    else
	{
    	m_ComBorderButton.Disable();
    	m_ComBorderText.Disable();
	}

    if ((OT_KANTE == m_iObjTyp && m_lCnt >= 3) ||
    	(OT_FLAECHE == m_iObjTyp && m_plCnt[m_iKCnt-1] >= 3))
	{
    	m_CircleButton.Enable();
    	m_CircleText.Enable();
	}
    else
	{
    	m_CircleButton.Disable();
    	m_CircleText.Disable();
	}

	AdjustOKButton();
    return FALSE;	// bei G�ltigkeit "FALSE" sonst "TRUE" (???)

} // OnSetActive


// --------------------------------------------------------------------------------------------
// wird gerufen, wenn die diese Page deaktiviert werden soll; deshalb wird hier die G�ltigkeit
// der Daten dieser Page �berpr�ft (bei G�ltigkeit "return false" sonst "return true")
BOOL CEditBaseDlg::OnKillActive (NotifyEvt)
{
    if (0 != m_ulIdent && -1 != m_ulIdent)
    	return false;
    return true;

} // OnKillActive


// --------------------------------------------------------------------------------------------
// Zeichenroutinen
// Element vollst�ndig malen
BOOL CEditBaseDlg::DrawEntireItem (DrawItemEvt e)
{
	return m_ComBorderButton.DrawItem(e) || m_CircleButton.DrawItem(e) ||
		   m_CloseButton.DrawItem(e);
}


// --------------------------------------------------------------------------------------------
// Element mit Focus zeichnen
BOOL CEditBaseDlg::DrawItemFocus (DrawItemEvt e)
{
	return m_ComBorderButton.DrawItem(e) || m_CircleButton.DrawItem(e) ||
		   m_CloseButton.DrawItem(e);
}


// --------------------------------------------------------------------------------------------
// Element ausgew�hlt zeichnen
BOOL CEditBaseDlg::DrawItemSelect (DrawItemEvt e)
{
	return m_ComBorderButton.DrawItem(e) || m_CircleButton.DrawItem(e) ||
		   m_CloseButton.DrawItem(e);
}


// --------------------------------------------------------------------------------------------
// Reaktion bei Bet�tigung des CloseButton
// Linienobjekt wird zugezogen, d.h. der Anfangspunkt wird als Endpunkt hinzugef�gt; Button
// wird erst aktiviert, wenn aktuelle St�tzpunktanzahl >= 3 ist;
// Ausnahme: Wenn m_iCloseCnt == 1, dann liegt Linienverl�ngerung f�r eine einzige Linie vor,
// in diesem Fall wird der m_CloseButton immer aktiviert
void CEditBaseDlg::CloseButtonAction (void)
{
    _ASSERTE (m_iObjTyp == OT_KANTE);

    if (m_iCloseCnt > 1)		// Linienverl�ngerung f�r mehr als eine Linie gleichzeitig
    {
    	_ASSERTE (m_iCloseCnt <= 1);
    	return;
    }

EPunkt AP;	// Anfangspunkt des Linienobjektes (der zuletzt manuell editierter St�tzpunkt)
EPunkt EP;	// Endpunkt des Linienobjektes (der f�r das Zuziehen hinzuzuf�gende Punkt)

    AP.X() = m_plX[m_lCnt-1];
    AP.Y() = m_plY[m_lCnt-1];

    if (0 == m_iCloseCnt)	// echte Neueditierung
    {
    	EP.X() = m_plX[0];
    	EP.Y() = m_plY[0];
    }
    else					// Linienverl�ngerung f�r eine einzige Linie
    {
    	EP.X() = m_plCloseX[0];
    	EP.Y() = m_plCloseY[0];
    }

    m_wObj->AddPunkt (EP.X(), EP.Y(), -1, -1);

    DrawLine (AP, EP, false, m_pVWnd);	// Linienobjekt auf Bildschirm zuziehen
    	                               
    // nach dem Zuziehen sind Close-, CommonBorder- und ContinueButton nicht mehr sinnvoll
    m_ComBorderButton.Disable();
    m_ComBorderText.Disable();
    m_CloseButton.Disable();
    m_CloseText.Disable();
    m_pED->SetClosedLine (true);	// Linienobjekt ist geschlossen
    m_pED->SetContinueButton (false);

	AdjustOKButton();

} // CloseButtonAction


// --------------------------------------------------------------------------------------------
// Reaktion bei Bet�tigung des CircleButton
void CEditBaseDlg::CircleButtonAction (void)
{
long lSPA;		// Anzahl der bisher editierten St�tzpunkte eines Linienobjektes bzw. der
    			// letzten Kontur eines Fl�chenobjektes

    switch (m_iObjTyp)
    {
    	case OT_PUNKT:

    		_ASSERTE (m_iObjTyp != OT_PUNKT);

    		return;	// dieser Zweig d�rfte eigentlich gar nicht erreicht werden
    		
    	case OT_KANTE:
    		if (m_lCnt <= 2)
    		{
    			_ASSERTE (m_lCnt > 2);

    			return;	// dieser Zweig d�rfte eigentlich gar nicht erreicht werden
    		}
    			
    		lSPA = m_lCnt;
    		break;


    	case OT_FLAECHE:
    		if (m_lCnt <= 2)
    		{
    			_ASSERTE (m_lCnt > 2);

    			return;	// dieser Zweig d�rfte eigentlich gar nicht erreicht werden
    		}
    		
    		lSPA = m_plCnt[m_iKCnt-1];	// Anzahl der St�tzpunkte der letzten Kontur
    		break;

    	default:
    		_ASSERTE (false);
    		break;
    }
        
EPunkt EP1, EP2, EP3;	// die 3 letzten manuell editierten St�tzpunkte

    EP1.X() = m_plX[m_lCnt-1];	// der letzte
    EP1.Y() = m_plY[m_lCnt-1];
    EP2.X() = m_plX[m_lCnt-2];	//  der vorletzte und
    EP2.Y() = m_plY[m_lCnt-2];
    EP3.X() = m_plX[m_lCnt-3];	//  der vorvorletzte manuell editierte
    EP3.Y() = m_plY[m_lCnt-3];

    DrawLine (EP3, EP2, false, m_pVWnd);	// Linie zwischen EP3 und EP2 bzw.
    DrawLine (EP2, EP1, false, m_pVWnd);	//  zwischen EP2 und EP1 auf Bildschirm l�schen
    
    if (3 == lSPA && 0 == m_iCloseCnt)	// genau 3 St�tzpunkte bei echter Neueditierung
    {									//   -> Vollkreis
    	Vollkreis (m_wObj, EP3, EP2, EP1, m_pVWnd);

    	// wenn Vollkreis bei Fl�che, dann zus�tzlich noch die die Fl�che schlie�ende Linie
    	// zwischen EP1 und EP3 l�schen
    	if (OT_FLAECHE == m_iObjTyp)
    		DrawLine (EP1, EP3, false, m_pVWnd);

    	m_CloseButton.Disable();
    	m_CloseText.Disable();
    	m_pED->SetClosedLine (true);
    	m_pED->SetContinueButton (false);
    }
    else		// schon mehr als 3 St�tzpunkte editiert bzw. Linienverl�ngerung -> Kreisbogen
    {
    	Kreisbogen (m_wObj, EP3, EP2, EP1, m_pVWnd);
    	// der ContinueButton kann deaktiviert werden m�ssen, wenn nach dem L�schen des ersten
    	// Punktes einer Innenkontur (und damit der gesamten Innenkontur) ein Kreisbogen
    	// gebildet wurde
    	if (! m_pED->IsContinueEnable()) m_pED->SetContinueButton (false);
    }

short iKontInd;		// Parameter von SubPunkt(); wird hier nicht ausgewertet

    // die 3 Punkte l�schen, aus denen der Kreis(bogen) gebildet wurde; w�rde das L�schen vor
    // dem Hinzuf�gen des Kreis(bogen)s erfolgen, k�me es bei genau 3 Punkten, die in einen
    // Vollkreis umgewandelt werden sollen, zu Problemen (weil nach dem L�schen ja gar nichts
    // mehr da w�re); da ich aber die Routine SubPunkt() nicht �ndern will, wird eben erst in
    // allen F�llen hinzugef�gt und danach gel�scht
    m_wObj->SubPunkt (3, m_lCnt-3, true, &iKontInd);

    m_ComBorderButton.Disable();
    m_ComBorderText.Disable();
    m_CircleButton.Disable();
    m_CircleText.Disable();

	AdjustOKButton();

} // CircleButtonAction


// --------------------------------------------------------------------------------------------
// Reaktion bei Bet�tigung des Buttons "Gemeinsame Linie"
HRESULT CEditBaseDlg::ComBorderButtonAction (void)
{
    m_ComBorderButton.Disable();
    m_ComBorderText.Disable();

    // CommonBorder wird nicht ausgef�hrt, weil mehrere Objekte die angegrabten Punkte
    // besitzen, wodurch m�glicherweise (jedoch nicht immer) mehrere Pfade denkbar sind
    if (E_PENDING == m_hrComBorder || 0 == m_lComONr || -1 == m_lComONr)
    {
    ResString resErrMess (ResID (IDS_NOCOMBORDER1, pRF), 150);
    ResString resCapt (ResID (IDS_LONGCLASSNAME, pRF), 50);

    	MessageBox (__hWndM, resErrMess.Addr(), resCapt.Addr(), MB_ICONEXCLAMATION | MB_OK);
		m_pED->SetGrabCnt (0);
    	return E_PENDING;
    }

int iGrabCnt = m_pED->GetGrabCnt();

	_ASSERTE (iGrabCnt >= 2);

int iOT = DEX_GetObjectType (m_lComONr);

	if (2 == iGrabCnt && OT_KANTE != iOT)
    {
		m_pED->SetGrabCnt (0);
    	return E_INVALIDARG;
    }

// Geometrie des m_lComONr-Objektes, von dem die St�tzpunkte �bernommen werden sollen
WObjektGeometrie wObj;
HRESULT hrRet = CreateInterfaceOG (wObj.ppi(), m_lComONr);

    if (FAILED(hrRet))
    {
		m_pED->SetGrabCnt (0);
    	return hrRet;
    }

// die zu den GrabPunkten geh�rigen St�tzpunktIndizes des m_lComONr-Objektes, von dem f�r
// CommonBorder St�tzpunkte �bernommen werden sollen, ermitteln
long* plIndex = new long [iGrabCnt];

    if (! plIndex)
    {
    	DEX_Error (RC_EditBaseDlg, EC_NOMEMORY);
		m_pED->SetGrabCnt (0);
    	return E_OUTOFMEMORY;
    }

MoveDir MD;		// Richtung (auf-, absteigend) der St�tzpunkt-�bernahme
HRESULT hr;

    if (OT_KANTE == iOT) hr = CommonBorderAtLine (wObj, plIndex, MD);
    else hr = CommonBorderAtArea (wObj, plIndex, MD);

    if (FAILED(hr))
    {
		DELETE_VEC (plIndex);
		m_pED->SetGrabCnt (0);
    	return hr;
    }

// vor der �bernahme der St�tzpunkte m�ssen erst die letzten iGrabCnt-1 St�tzpunkte gel�scht
// werden
short iKontInd;		// Parameter von SubPunkt(); wird hier nicht ausgewertet

	m_wObj->SubPunkt (iGrabCnt-1, m_lCnt-iGrabCnt+1, false, &iKontInd);

	if (MOVEDIR_UP == MD)
		hrRet = m_wObj->AddKantenTeil (wObj, plIndex[0]+1, plIndex[iGrabCnt-1], MD);
	else
		hrRet = m_wObj->AddKantenTeil (wObj, plIndex[0]-1, plIndex[iGrabCnt-1], MD);

	DELETE_VEC (plIndex);

// auf Bildschirm die Linien l�schen, die zwischen den St�tzpunkten gezeichnet wurden, die das
// Ger�st f�r CommonBorder gebildet haben
EPunkt EP0, EP1;

	for (int k = 0; k < iGrabCnt-1; k++)
    {
    	EP0.X() = m_plGrabPktX[k];
    	EP0.Y() = m_plGrabPktY[k];
    	EP1.X() = m_plGrabPktX[k+1];
    	EP1.Y() = m_plGrabPktY[k+1];
    	DrawLine (EP0, EP1, false, m_pVWnd);
    }

	m_pED->SetGrabCnt (0);
	AdjustOKButton();

    return hrRet;

} // ComBorderButtonAction


// --------------------------------------------------------------------------------------------
// Ermittlung der zu den GrabPunkten geh�rigen St�tzpunktIndizes des pIOG-Objektes und R�ckgabe
// in plIndex sowie Ermittlung der �bernahmerichtung MD bei St�tzpunkt-�bernahme von einem
// Linienobjekt
HRESULT CEditBaseDlg::CommonBorderAtLine (IObjektGeometrie* pIOG, long* plIndex, MoveDir& MD)
{
    _ASSERTE (pIOG != NULL);
    _ASSERTE (plIndex != NULL);

long lCnt;
KoOrd* plXK; KoOrd* plYK;

    pIOG->GetCnt (&lCnt);
    pIOG->GetX ((void**)&plXK);
    pIOG->GetY ((void**)&plYK);

bool bClosed = (plXK[0] == plXK[lCnt-1] && plYK[0] == plYK[lCnt-1]);	// Kante geschlossen (true)

long lMinInd = LONG_MAX;	// kleinster Index der GrabPunkte des pIOG-Objektes
int iMin;					// Stelle in plIndex, wo der kleinste Index steht
long lMaxInd = -1;			// gr��ter Index der GrabPunkte des pIOG-Objektes
int iMax;					// Stelle in plIndex, wo der gr��te Index steht
long lLastInd;

	(bClosed) ? (lLastInd = lCnt-2) : (lLastInd = lCnt-1);

int iGrabCnt = m_pED->GetGrabCnt();

    for (long j = 0; j <= lLastInd; j++)
    	for (int k = 0; k < iGrabCnt; k++)
    		if (plXK[j] == m_plGrabPktX[k] && plYK[j] == m_plGrabPktY[k])
    		{
    			plIndex[k] = j;
    			if (j < lMinInd)
    			{
    				lMinInd = j;
    				iMin = k;
    			}
    			if (j > lMaxInd)
    			{
    				lMaxInd = j;
    				iMax = k;
    			}
    		}

    // Ermitteln, ob die St�tzpunkte mit auf- (MOVEDIR_UP) oder absteigendem (MOVEDIR_DOWN)
    // Index �bernommen werden sollen
    if (!bClosed)	// offene Quell-Kante
    {
    	if (iMin < iMax) MD = MOVEDIR_UP;
    	else MD = MOVEDIR_DOWN;
    }
    else	// geschlossene Quell-Kante
    {
    int iMax1 = iMax + 1;

    	if (iMax1 == iGrabCnt) iMax1 = 0;
    	if (iMax1 == iMin) MD = MOVEDIR_UP;
    	else MD = MOVEDIR_DOWN;
    }

    return S_OK;

} // CommonBorderAtLine


// --------------------------------------------------------------------------------------------
// Ermittlung der zu den GrabPunkten geh�rigen St�tzpunktIndizes des pIOG-Objektes und R�ckgabe
// in plIndex sowie Ermittlung der �bernahmerichtung MD bei St�tzpunkt-�bernahme von einem
// Fl�chenobjekt
HRESULT CEditBaseDlg::CommonBorderAtArea (IObjektGeometrie* pIOG, long* plIndex, MoveDir& MD)
{
    _ASSERTE (pIOG != NULL);
    _ASSERTE (plIndex != NULL);

KoOrd* plXK; KoOrd* plYK;
short iKCnt;	// Gr��e des Konturfeldes
long* plCnt;	// Anzahl der St�tzpunkte in Konturen

    pIOG->GetX ((void**)&plXK);
    pIOG->GetY ((void**)&plYK);
    pIOG->GetKCnt (&iKCnt);
    pIOG->GetLPCnt (&plCnt);

long lMinInd = LONG_MAX;	// kleinster St�tzpunktIndex des pIOG-Objektes
int iMin;					// Stelle in plIndex, wo der kleinste Index steht
long lMaxInd = -1;			// gr��ter St�tzpunktIndex des pIOG-Objektes
int iMax;					// Stelle in plIndex, wo der gr��te Index steht
long lAInd = 0;				// Anfangsindex einer Kontur
// Index der pIOG-Kontur, zu der der 1. in plIndex[0] abzuspeichernde pIOG-St�tzpunktIndex j
// geh�rt; alle weiteren abzuspeichernden St�tzpunktIndizes m�ssen zur gleichen Kontur geh�ren,
// sonst Fehlermeldung
int iKI = -1;

int iGrabCnt = m_pED->GetGrabCnt();

	_ASSERTE (iGrabCnt > 0);

    for (int i = 0; i < iKCnt; i++)	// Konturen abarbeiten
    {
    long lEInd = lAInd + plCnt[i] - 1;	// Endindex einer Kontur

    	for (long j = lAInd; j < lEInd; j++)	// St�tzpunkte der i-ten Kontur abarbeiten
    		for (int k = 0; k < iGrabCnt; k++)	// GrabPunkte abarbeiten 
    			if (plXK[j] == m_plGrabPktX[k] && plYK[j] == m_plGrabPktY[k])
    			{
    				if (i == iKI || -1 == iKI)
    				{
    					iKI = i;
    					plIndex[k] = j;
    					if (j < lMinInd)
    					{
    						lMinInd = j;
    						iMin = k;
    					}
    					if (j > lMaxInd)
    					{
    						lMaxInd = j;
    						iMax = k;
    					}
    				}
    				else
    				{
    				// CommonBorder wird nicht ausgef�hrt, weil die GrabPunkte nicht nur zu
    				// einer Kontur des pIOG-Objektes geh�ren
    				ResString resErrMess (ResID (IDS_NOCOMBORDER2, pRF), 150);
    				ResString resCapt (ResID (IDS_LONGCLASSNAME, pRF), 50);

    					MessageBox (__hWndM, resErrMess.Addr(), resCapt.Addr(), MB_ICONEXCLAMATION | MB_OK);
    					return E_FAIL;
    				}
    			}

    	lAInd = lEInd + 1;
    }

// Ermitteln, ob die St�tzpunkte mit auf- (MOVEDIR_UP) oder absteigendem (MOVEDIR_DOWN) Index
// �bernommen werden sollen
int iMax1 = iMax + 1;

	if (iMax1 == iGrabCnt) iMax1 = 0;
    if (iMax1 == iMin) MD = MOVEDIR_UP;
    else
	{
		MD = MOVEDIR_DOWN;

		lAInd = 0;	// Anfangsindex der iKI-ten Kontur, d.h. der Kontur, zu der der 1. in
					// plIndex[0] abgespeicherte pIOG-St�tzpunktIndex geh�rt (17.03.99)
	    for (int i = 0; i < iKI; i++)
			lAInd += plCnt[i];

		if (plIndex[iMin] == lAInd)
			plIndex[iMin] = lAInd + plCnt[iKI] - 1;
	}

    return S_OK;

} // CommonBorderAtArea


// --------------------------------------------------------------------------------------------
// ComboBox mit Objektklassenschl�ssel f�llen; Button aktivieren/passivieren
bool CEditBaseDlg::ControlsSetting (void)
{
    m_pIL = new IdentList();		// Objektklassenschl�ssel
    if (NULL == m_pIL) return false;

CEierUhr Wait (this);

// ComboBox mit Objektklassenschl�ssel f�llen
ResString resNewItem (ResID(IDS_NEWITEM, pRF), 64);
int iIndex = m_IdentListe.AddString (resNewItem);

	m_IdentListe.SetItemData (iIndex, INVALID_HOBJECTS);	// NULL steht f�r diesen Eintrag

CTable t (*m_pIL);
char pcOutBuff[_MAX_PATH] = { '\0' };

	m_ulIdent = DEX_GetLastIdent();
    for (t.First(); t.Valid(); t.Next()) {
    IdentListEntryLock l(t);                                        
    
    	if (!l) 
			continue;
		InsertEntry(l->KText(), l->Ident());
    }
    	
    if ((ulong)-1 != m_ulIdent && INVALID_HOBJECTS != m_ulIdent)
    {
    	ClassFromIdentX (m_ulIdent, pcOutBuff);
    	iIndex = m_IdentListe.FindString (pcOutBuff);
    	m_IdentListe.ChangeCurrentIndex (iIndex);	// den zuletzt selektierten Objektklassen-
    												// schl�ssel wieder selektieren
    }
    else {	// bisher noch kein Objektklassenschl�ssel selektiert
		if (m_IdentListe.GetCount() > 1)
    		m_IdentListe.ChangeCurrentIndex (1);	// den ersten Objektklassenschl�ssel
    												//  selektieren
    	m_ulIdent = IdentErmitteln (&m_IdentListe);
    }


// Button aktivieren/deaktivieren
    TestClosedLine();

    if (OT_KANTE != m_iObjTyp)
	{
    	m_CloseButton.Hide();
    	m_CloseText.Hide();
	}

// CircleButton nur bei Editierung einer Kante bzw. Fl�che freigeben und wenn wenigstens
// schon 3 St�tzpunkte von dieser Kante bzw. von der aktuell editierten Kontur erfa�t wurden
    if ((OT_KANTE == m_iObjTyp && m_lCnt >= 3) ||
    	(OT_FLAECHE == m_iObjTyp && m_plCnt[m_iKCnt-1] >= 3))
	{
    	m_CircleButton.Enable();
    	m_CircleText.Enable();
	}
    else
	{
    	m_CircleButton.Disable();
    	m_CircleText.Disable();
	}
    if (OT_PUNKT == m_iObjTyp)
	{
    	m_CircleButton.Hide();
    	m_CircleText.Hide();
	}

// ComBorderButton darf nur bei GRABBEN an Linien- bzw. Fl�chenobjekt aktiviert werden
    if ((S_OK == m_hrComBorder || E_PENDING == m_hrComBorder) &&
    	!m_pED->GetCoordMod())			// keine �nderung der Koordinaten durch den
    									// Anwender in der CEditCoordDlg-Page
	{
    	m_ComBorderButton.Enable();
    	m_ComBorderText.Enable();
	}
    else
	{
    	m_ComBorderButton.Disable();
    	m_ComBorderText.Disable();
	}
	if (OT_PUNKT == m_iObjTyp)		// es wird Punktobjekt editiert
	{
		m_OptionenText.Hide();
		m_Border.Hide();
    	m_ComBorderButton.Hide();
    	m_ComBorderText.Hide();
	}

// Button der Sheet
	AdjustOKButton();
    return true;

} // ControlsSetting

///////////////////////////////////////////////////////////////////////////////
// Neue Objeklasse definieren
HOBJECTS CEditBaseDlg::DefineNewEntry()
{
DEFINEIDENTDLG DlgData;

	INITSTRUCT(DlgData, DEFINEIDENTDLG);
	DlgData.hWnd = Handle(API_WINDOW_HWND);
	DlgData.lIdent = 0;
	DlgData.hPr = NULL;

HOBJECTS lIdent = DEX_DefineNewObjectsDesc(DlgData);	// neue Identbeschreibung erzeugen

// neu definierten Ident f�r FocusItem voreinstellen
	if (0 != lIdent) {
	ErrInstall EI (WC_NOIDENT);
	PBDDATA pbdData;
	char cbBuffer[_MAX_PATH];

		INITSTRUCT(pbdData, PBDDATA);
		pbdData.pbdTyp = 'i';
		pbdData.pbdCode = lIdent;
		pbdData.pbdKText = cbBuffer;
		pbdData.pbdLText = NULL;
		pbdData.pbdKTextLen = sizeof(cbBuffer);
		pbdData.pbdLTextLen = 0;

	// PBD-Info holen
		if (EC_OKAY == DEX_GetPBDData(pbdData)) {
		int iIndex = InsertEntry(cbBuffer, lIdent);

			if (-1 != iIndex) {
				m_IdentListe.ChangeCurrentIndex(iIndex);
				return lIdent;
			}

		// ansonsten durchfallen
		// ...
		}
	}

// abgebrochen oder Fehler
	m_IdentListe.ChangeCurrentIndex(-1);
	return INVALID_HOBJECTS;
}

LRESULT CEditBaseDlg::Dispatch(Event e)
{
	if (WM_DEFINENEWITEM == e.Msg()) {
		m_ulIdent = DefineNewEntry();
		AdjustOKButton();
	}
	return CPropertyPage::Dispatch(e);
}

int CEditBaseDlg::InsertEntry (char const *pEntry, HOBJECTS lIdent)
{
char pcOutBuff[_MAX_PATH];

    ClassFromIdentX (lIdent, pcOutBuff);
    strcat (pcOutBuff, ":");
    strcat (pcOutBuff, pEntry);

#if _TRiAS_VER < 0x0300
int iIndex = m_IdentListe.AddString (pcOutBuff);
#else
// wenn Objektklasse schreibgesch�tzt ist, dann Objektklassenschl�ssel nicht anzeigen
	if (DEX_GetROModeIdent (lIdent))
		return -1;

// den zuletzt verwendeten Objektklassenschl�ssel geben lassen, d.h. den OKS des eben
// editierten Objektes; wenn aktuell nicht ein neues Objekt editiert wird, dann d�rfen in
// der m_IdentListe nur die OKS angezeigt werden, die zur gleiche Datenquelle wie m_ulIdent
// geh�ren, da andererseits eine Objektklassenmodifikation �ber Datenquellen-Grenzen hinweg
// erfolgen w�rde; aber genau das ist eben nicht zul�ssig
HPROJECT hPr = DEX_GetObjectsProject (lIdent);

	_ASSERTE (NULL != hPr);
	if (!m_bNewEdit && hPr != DEX_GetObjectsProject (m_ulIdent))
		return -1;

// wenn mehr als eine Datenquelle ge�ffnet ist, dann den Namen der zugeh�rigen in
// Klammern hinten anh�ngen
	if (DEX_GetOpenConnectionCount (QDCAllOpen|QDCCountQueryDefs) > 1) {
	char cbBuffer[_MAX_PATH];

		if (NULL != DEX_GetDataSourceShortName (hPr, cbBuffer))	{
			strcat (pcOutBuff, " (");
			strcat (pcOutBuff, cbBuffer);
			strcat (pcOutBuff, ")");
		}
	}

// Ident am jeweiligen Item speichern
int iIndex = m_IdentListe.AddString (pcOutBuff);

	if (-1 != iIndex) 
		m_IdentListe.SetItemData(iIndex, lIdent);
#endif // _TRiAS_VER < 0x0300

	return iIndex;
}

void CEditBaseDlg::AdjustOKButton()
{
    if (-1 == m_ulIdent || 0 == m_ulIdent) {
		m_pED->SetOKButton (false);
		return;
	}
	if (OT_KANTE == m_iObjTyp && m_lCnt < 2 ||
		OT_FLAECHE == m_iObjTyp && m_lCnt < 3)
	{
		m_pED->SetOKButton (false);
		return;
	}

	m_pED->SetOKButton (true);
}
