// Deklarationen: Dialogfenster f�r manuelle Modifizierung von St�tzpunkten
// File: VertexModDlg.h
// W. M�rtl

#ifndef _VERTEXMODDLG_H
#define _VERTEXMODDLG_H


#include "SmartInterfaces.h"



///////////////////////////////////////////////////////////////////////////////////////////////
class CVertexModifyDlg : public DialogWindow
{
private:
	CoordTransX* m_pCT;

	DoubleNumEditX m_X, m_Y;
	PushButton m_OKButton, m_DeleteButton;
	
	int m_XLen;		// Anzahl der Vorkomma-Ziffern von m_X } bei metrischen
	int m_YLen;		// Anzahl der Vorkomma-Ziffern von m_Y } Koordinaten
	bool m_bIntern;		// Editierfelder m_X bzw. m_Y werden intern (true) bzw. extern durch
						// Anwender beeinflu�t

// Memberfunktionen	
	void StandardWerte (KoOrd x, KoOrd y, bool bDel);

protected:
	void ButtonClick (ControlEvt e);	// Reaktion bei Button-Bet�tigung
	void EditChange (ControlEvt e);		// Reaktion bei �nderungen im Editierfenster

public:
		CVertexModifyDlg (KoOrd x, KoOrd y, bool bDel = true);
		~CVertexModifyDlg (void);

// weitere Memberfunktionen
	bool GetCoordinates (KoOrd& ResultX, KoOrd& ResultY);
	void SetPosition (Point RMPt);
};

#endif // _VERTEXMODDLG_H
