// Deklarationen: Dialogfenster bei Bildung einer Schnittlinie	f�r Fl�chenteilung
// File: IntersectLineDlg.h
// W. M�rtl

#ifndef _INTERSECTLINEDLG_H
#define _INTERSECTLINEDLG_H


#include "SmartInterfaces.h"


///////////////////////////////////////////////////////////////////////////////////////////////
class CIntersectionLineDlg : public DialogWindow
{
private:
	pWindow m_pVWnd;		// TRiAS-ViewFenster
	CoordTransX* m_pCT;

	DoubleNumEditX m_X, m_Y;
	PushButton m_OKButton, m_DeleteButton;
	
	WObjektGeometrie m_wSectLine;	// editierte Schnittlinie
	int m_XLen;		// Anzahl der Vorkomma-Ziffern von m_X } bei metrischen
	int m_YLen;		// Anzahl der Vorkomma-Ziffern von m_Y } Koordinaten
	bool m_bIntern;		// Editierfelder m_X bzw. m_Y werden intern (true) bzw. extern durch
						// Anwender beeinflu�t
	bool m_bGeodMod;	// in m_X bzw. m_Y wurden bei geod�tischer Datenbank durch den Anwender
						// �nderungen vorgenommen

// Memberfunktionen	
	void StandardWerte (void);
	void OKButtonAction (void);
	void DeleteButtonAction (void);
	void PunktKorrigieren (void);

protected:
	void ButtonClick (ControlEvt e);	// Reaktion bei Button-Bet�tigung
	void EditChange (ControlEvt e);		// Reaktion bei �nderungen im Editierfenster

public:
		CIntersectionLineDlg (IObjektGeometrie* pISectLine);
		~CIntersectionLineDlg (void);

// weitere Memberfunktionen
	bool GetCoordinates (KoOrd& ResultX, KoOrd& ResultY);
	// "const" in der nachfolgenden Deklaration wird vom Compiler gefordert
	void SetOKButtonText (const char* pcText) { m_OKButton.SetText (pcText); }
};

#endif // _INTERSECTLINEDLG_H
