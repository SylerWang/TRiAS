// Dialogfenster f�r Modifizierung von St�tzpunktkoordinaten
// File: SPMODDLG.HXX
// W. M�rtl

#if !defined(_SPMODDLG_HXX)
#define _SPMODDLG_HXX


class VertexModifyDlg : public DialogWindow
{
private:
	pWindow m_pW;
	CoordTransX* m_pCT;

	DoubleNumEditX m_X, m_Y;
	PushButton m_AbschlussButton, m_LoeschButton;
	
	IObjektGeometrie* m_pIOG;	// (Interface des) editierten EObjektes
	long m_lInd;		// Index (bezgl. m_pIOG), bei dem etwas passieren soll
	bool m_bMehrf;		// L�schen mit LoeschButton ist mehrfach/einfach m�glich (true/false)
	Punkt m_DelPkt;		// Punkt, der durch den LoeschButton gel�scht werden soll
	bool m_bIntern;		// Editierfelder X bzw. Y werden intern (true) bzw. extern durch Anwender
						//  beeinflu�t
	bool m_bPtKorr;		// in m_X bzw. m_Y wurden durch Anwender �nderungen vorgenommen

// Memberfunktionen	
	void StandardWerte (long lInd);
	void KoordTextToDB (Punkt& ResultPkt);
	void KoordDBToText (Punkt& Pt);
	bool idb_abschluss (void);
	void idb_loeschen (void);

protected:
	void ButtonClick (ControlEvt e);	// Reaktion bei Button-Bet�tigung
	void EditChange (ControlEvt e);		// Reaktion bei �nderungen im Editierfenster

public:
		VertexModifyDlg (pWindow pW, IObjektGeometrie* pIOG, long lInd, bool bMehrf = true);
		~VertexModifyDlg (void);

// weitere Memberfunktionen
	bool GetPunkt (Punkt& ResultPkt);
	// "const" in der nachfolgenden Deklaration wird vom Compiler gefordert
	void SetAbschlussButtonText (const char* pcText) { m_AbschlussButton.SetText (pcText); }
	void SetDeleteButton (bool bAkt);
};

#endif // _SPMODDLG_HXX
