// Definitionen: Dialogfenster bei Bildung einer Schnittlinie f�r Fl�chenteilung
// File: IntersectLineDlg.cpp
// W. M�rtl

#include "GeoEditP.h"

#include "IntersectLineDlg.h"


#if defined(_DEBUG)
#undef THIS_FILE
static char BASED_CODE THIS_FILE[] = __FILE__;
#endif



///////////////////////////////////////////////////////////////////////////////////////////////
// externe Variable
extern ResourceFile* pRF;



///////////////////////////////////////////////////////////////////////////////////////////////
// Konstruktor
#if defined (MSCC8)
#pragma warning (disable: 4355)	// Ausschalten von uninteressanten Warnungen
#endif
CIntersectionLineDlg::CIntersectionLineDlg (IObjektGeometrie* pISectLine)
    				: DialogWindow (g_pTE->MVWind(), ResID (IDD_MINIEDIT, pRF)),
    				  m_X (this, IDE_XKOORD),
    				  m_Y (this, IDE_YKOORD),
    				  m_OKButton (this, IDOK),
    				  m_DeleteButton (this, IDB_DELETE)
{
// Standardwerte einstellen
    m_pVWnd = g_pTE->MVWind();		// TRiAS-ViewFenster
	try
	{
		m_wSectLine = pISectLine;
	}
	catch (...)
	{
		_ASSERTE (false);
		return;
	}
    if (pISectLine) pISectLine->AddRef();

    StandardWerte();
}
#if defined (MSCC8)
#pragma warning (default: 4355)
#endif


// --------------------------------------------------------------------------------------------
// Destruktor
CIntersectionLineDlg::~CIntersectionLineDlg (void)
{
	DELETE_OBJ (m_pCT);
}


///////////////////////////////////////////////////////////////////////////////////////////////
// EventHandler	(Ereignishandler)
// Reaktion auf Button-Click
void CIntersectionLineDlg::ButtonClick (ControlEvt e)
{
    switch ((uint)e.GetControlID())
    {
    	case IDOK:
    		OKButtonAction();
    		EndDlg (OK);
    		return;
    		
    	case IDB_DELETE:
    		DeleteButtonAction();
    		return;

    	case IDCANCEL:
    		EndDlg (ABBRECHEN);
    		return;

    	default:
    		_ASSERTE (false);
    }
} // ButtonClick


// --------------------------------------------------------------------------------------------
// Reaktion auf Eingabe in eines der Editierfelder
void CIntersectionLineDlg::EditChange (ControlEvt e)
{
uint uiCE = (uint) e.GetControlID();

    if ((IDE_XKOORD != uiCE && IDE_YKOORD != uiCE) ||	// keine Modifikation der Editierfelder
    													// m_X bzw. m_Y
    	m_bIntern)	// programm-interne Modifikation der Editierfelder m_X bzw. m_Y
    	return;

// Koordinaten wurden extern durch Anwender ver�ndert
int iXKS, iYKS;	// Anzahl der Vorkommastellen von m_X und m_Y
// metrische (bMetr == true) bzw. geod�tische (false) Koordinaten
bool bMetr = DigitNumerator (iXKS, iYKS, &m_X, &m_Y, m_pCT);

    if (bMetr)
    {
    	if (m_XLen == iXKS && m_YLen == iYKS)
    	{
    		m_OKButton.Enable();
    		PunktKorrigieren();
    	}
    	else
    		m_OKButton.Disable();
    }
    else	// geod�tische Datenbank
    	m_bGeodMod = true;

} // EditChange


// --------------------------------------------------------------------------------------------
// Einstellung von Standardwerten
void CIntersectionLineDlg::StandardWerte (void)
{
// Variablen initialisieren
    m_pCT = new CoordTransX();
    if (NULL == m_pCT) return;

// Voreinstellungen der Editierfelder
    m_X.SetNumEditMode (NumEditX::NEM_NoTest);
    m_Y.SetNumEditMode (NumEditX::NEM_NoTest);
    
// Koordinaten des letzten editierten Punktes im Editierfeld anzeigen
short iOT;
long lCnt;
KoOrd* plXK; KoOrd* plYK;

    m_wSectLine->GetObjTyp (&iOT);

    _ASSERTE (iOT == OT_KANTE);

    m_wSectLine->GetCnt (&lCnt);
    m_wSectLine->GetX ((void**)&plXK);
    m_wSectLine->GetY ((void**)&plYK);
    
KoOrd lRW = plXK[lCnt-1];	// Rechts- und
KoOrd lHW = plYK[lCnt-1];	// Hochwert (im KoOrd-Format) des zuletzt editierten Punktes
    
    m_bIntern = true;	// programm-interne Modifikation der Editierfelder m_X bzw. m_Y
    DBCoordToNumEdit (lRW, lHW, &m_X, &m_Y, m_pCT);
    m_bIntern = false;

// weitere Member initialisieren
    m_OKButton.Enable();
    m_DeleteButton.Enable();
    
    // Anzahl der Vorkomma-Stellen von m_X und m_Y ermitteln
    DigitNumerator (m_XLen, m_YLen, &m_X, &m_Y, m_pCT);

    // in m_X bzw. m_Y wurden bei geod�tischer Datenbank durch den Anwender noch keine
    // �nderungen vorgenommen
    m_bGeodMod = false;

} // StandardWerte


// --------------------------------------------------------------------------------------------
// Reaktion auf OKButton
void CIntersectionLineDlg::OKButtonAction (void)
{
    if (m_bGeodMod)	// m_X bzw. m_Y wurden bei geod�tischer Datenbank durch Anwender ver�ndert
    {
    	PunktKorrigieren();
    	m_bGeodMod = false;	// doppelte Korrektur mu� nicht sein
    }

} // OKButtonAction


// --------------------------------------------------------------------------------------------
// Reaktion auf DeleteButton;
// L�schen des zuletzt editierten St�tzpunktes bei Aufbau der Schnittlinie f�r die
// Fl�chenteilung (kann mehrfach hintereinander ausgef�hrt werden); wenn f�r die Schnittlinie
// nur (noch) ein St�tzpunkt vorhanden ist, wird der DeleteButton deaktiviert; soll auch dieser
// St�tzpunkt gel�scht werden, ist der CancelButton zu verwenden, der gleichzeitig das gesamte
// Objekt l�scht.
void CIntersectionLineDlg::DeleteButtonAction (void)
{
long lCnt;	// Anzahl der bisher editierten St�tzpunkte der Schnittlinie

    m_wSectLine->GetCnt (&lCnt);

    _ASSERTE (lCnt >= 2);

    if (lCnt < 2) return;	// dieser Zweig d�rfte eigentlich gar nicht erreicht werden

// den zuletzt editierten St�tzpunkt in m_wSectLine l�schen
KoOrd* plXK; KoOrd* plYK;

    m_wSectLine->GetX ((void**)&plXK);
    m_wSectLine->GetY ((void**)&plYK);

EPunkt EP1, EP2;		// manuell editierte St�tzpunkte

    EP1.X() = plXK[lCnt-1];	// der letzte und
    EP1.Y() = plYK[lCnt-1];
    EP2.X() = plXK[lCnt-2];	//  der vorletzte manuell editierte St�tzpunkt
    EP2.Y() = plYK[lCnt-2];

short iKontInd;	// f�r SubPunkt(), wird hier nicht ausgewertet

    m_wSectLine->SubPunkt (lCnt-1, &iKontInd);

    // Koordinaten des vorletzten Punktes anzeigen
    m_bIntern = true;	// programm-interne Modifikation der Editierfelder m_X bzw. m_Y
    DBCoordToNumEdit (EP2.X(), EP2.Y(), &m_X, &m_Y, m_pCT);
    m_bIntern = false;

    // die letzte Strecke zwischen EP2 und EP1 wird auf dem Bildschirm gel�scht
    DrawLine (EP2, EP1, false, m_pVWnd);

	m_OKButton.Disable();	// 
    if (lCnt >= 3)
    	m_DeleteButton.Enable();
    else
    	m_DeleteButton.Disable();

} // DeleteButtonAction


// --------------------------------------------------------------------------------------------
// letzten Punkt der editierten Schnittlinie aufgrund von Eingaben des Anwenders modifizieren
void CIntersectionLineDlg::PunktKorrigieren (void)
{
EPunkt EP1, EP2;	// manuell editierte St�tzpunkte
EPunkt NewPkt;		// neuer Punkt in DB-Koordinaten

    // DB-Koordinaten aus DoubleNumEdit rekonstruieren					
    NumEditToDBCoord (&m_X, &m_Y, NewPkt.X(), NewPkt.Y(), m_pCT);

long lCnt;					//  Gesamtanzahl der St�tzpunkte und 
KoOrd* plXK; KoOrd* plYK;	//  x- bzw. y-Koordinaten der Schnittlinie

    m_wSectLine->GetCnt (&lCnt);
    m_wSectLine->GetX ((void**)&plXK);
    m_wSectLine->GetY ((void**)&plYK);

    _ASSERTE (lCnt >= 2);

    EP1.X() = plXK[lCnt-1];	// der letzte und
    EP1.Y() = plYK[lCnt-1];
    EP2.X() = plXK[lCnt-2];	//  der vorletzte manuell editierte St�tzpunkt
    EP2.Y() = plYK[lCnt-2];
    DrawLine (EP2, EP1, false, m_pVWnd);	// Linie auf Bildschirm l�schen
    DrawLine (EP2, NewPkt, false, m_pVWnd);	// Linie neu zeichnen

    plXK[lCnt-1] = NewPkt.X();	// Punktkoordinaten modifizieren
    plYK[lCnt-1] = NewPkt.Y();

} // PunktKorrigieren


// --------------------------------------------------------------------------------------------
// (modifizierte) Koordinaten einlesen
bool CIntersectionLineDlg::GetCoordinates (KoOrd& ResultX, KoOrd& ResultY)
{
    if (!m_X.GetEditControl()->isModified() &&
    	!m_Y.GetEditControl()->isModified())
    	return false;	// keine der Koordinaten wurde ge�ndert

    return NumEditToDBCoord (&m_X, &m_Y, ResultX, ResultY, m_pCT);

} // GetCoordinates
