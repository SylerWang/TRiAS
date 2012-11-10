// Deklarationen: Dialog f�r Modifikation von St�tzpunktkoordinaten
// File: EditCoordDlg.h
// W. M�rtl
      
      
#ifndef _EDITCOORDDLG_H
#define _EDITCOORDDLG_H


#include "BmpBtn.h"			// CBmpButton

#include "SmartInterfaces.h"


///////////////////////////////////////////////////////////////////////////////////////////////
class CEditCoordDlg : public CPropertyPage
{
private:
	pWindow m_pVWnd;		// TRiAS-ViewFenster
	CoordTransX* m_pCT;		// KoordinatenTransformation

	DoubleNumEditX m_X, m_Y;

//	PushButton m_DeleteButton;
	CBmpButton m_DeleteButton;
	FixedText m_DeleteText;

	CEditDlg* m_pED;		// die zugeh�rige PropertySheet
	WObjektGeometrie m_wObj;// editiertes Objekt (Zeiger auf das Objekt, das in der
							//  PropertySheet gehalten wird)
	KoOrd m_lX;				// �bergebene x-Koordinate
	KoOrd m_lY;				// �bergebene y-Koordinate
	short m_iObjTyp;		// ObjektTyp,
	long m_lCnt;			//  Gesamtanzahl der St�tzpunkte,
	short m_iKCnt;			//  Gr��e des Konturfeldes,
	KoOrd* m_plX;			//  Feld der x-Koordinaten,
	KoOrd* m_plY;			//  Feld der y-Koordinaten
	long* m_plCnt;			//  Anzahl der St�tzpunkte in Konturen des editierten Objektes

	int m_XLen;				// Anzahl der Vorkomma-Ziffern von m_X } bei metrischen
	int m_YLen;				// Anzahl der Vorkomma-Ziffern von m_Y } Koordinaten
	bool m_bIntern;			// Editierfelder m_X bzw. m_Y werden intern (true) bzw. extern
							// durch Anwender beeinflu�t
	bool m_bGeodMod;		// in m_X bzw. m_Y wurden bei geod�tischer Datenbank
							// durch den Anwender �nderungen vorgenommen
		
	int m_iCloseCnt;		// Anzahl der gleichzeitig zu verl�ngernden Linienobjekte
	KoOrd* m_plCloseX;		// Koordinaten der Endpunkte aller zu verl�ngernden Linienobjekte
	KoOrd* m_plCloseY;		// (werden f�r das Zuziehen und f�r den Test, ob Fortsetzen m�glich
							// ist, ben�tigt)
	bool m_bContBt;			// Zustand des ContinueButton retten
	bool m_bIslBt;			// Zustand des IsIslandButton retten
	bool m_bOKBt;			// Zustand des OKButton retten

	long m_lComONr;			// Objektnummer des Objektes, von dem bei CommonBorder die
							// St�tzpunkte zu �bernehmen sind


	bool StandardWerte (int iCloseCnt, KoOrd* plCloseX, KoOrd* plCloseY, KoOrd x, KoOrd y);
	void EditChange (ControlEvt e);
	bool ControlsSetting (void);
	void DeleteButtonAction (void);
	void ButtonSettingAfterDelete (void);
	void TestClosedLine (void);
		
protected:
	void WindowInit (Event e);
	void ButtonClick (ControlEvt e);
	BOOL OnOK (NotifyEvt);
	BOOL OnSetActive (NotifyEvt);
	BOOL OnKillActive (NotifyEvt);
	BOOL DrawEntireItem (DrawItemEvt);	// Element vollst�ndig malen
	BOOL DrawItemFocus (DrawItemEvt);	// Element mit Focus zeichnen
	BOOL DrawItemSelect (DrawItemEvt);	// Element ausgew�hlt zeichnen

public:
	// Konstruktor/Destruktor
		CEditCoordDlg (int iCloseCnt, KoOrd* plCloseX, KoOrd* plCloseY, KoOrd x = -1,
					   KoOrd y = -1);
		~CEditCoordDlg (void);

	// Memberfunktionen
	bool PunktKorrigieren (void);

};

#endif  // _EDITCOORDDLG_H
