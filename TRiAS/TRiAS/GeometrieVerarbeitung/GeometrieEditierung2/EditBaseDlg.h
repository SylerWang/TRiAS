// Deklarationen: Dialog f�r die Grundfunktionen beim Editieren
// File: EditBaseDlg.h
// W. M�rtl
      
      
#ifndef _EDITBASEDLG_H
#define _EDITBASEDLG_H


#include "BmpBtn.h"			// CBmpButton

#include "SmartInterfaces.h"


///////////////////////////////////////////////////////////////////////////////////////////////
class CEditBaseDlg : public CPropertyPage
{
private:
	pWindow m_pVWnd;		// TRiAS-ViewFenster
	IdentList* m_pIL;		// Liste der Objektklassenschl�ssel

	ComboBox m_IdentListe;
	CBmpButton m_CloseButton, m_CircleButton, m_ComBorderButton;
	FixedText m_OptionenText, m_ComBorderText, m_CircleText, m_CloseText;
	FixedIcon m_Border;
	            
	CEditDlg* m_pED;		// die zugeh�rige PropertySheet
	WObjektGeometrie m_wObj;// editiertes Objekt (Zeiger auf das Objekt, das in der
							//  PropertySheet gehalten wird)
	ulong m_ulIdent;		// selektierter Objektklassenschl�ssel
	short m_iObjTyp;		// ObjektTyp,
	long m_lCnt;			//  Gesamtanzahl der St�tzpunkte,
	short m_iKCnt;			//  Gr��e des Konturfeldes,
	KoOrd* m_plX;			//  Feld der x-Koordinaten,
	KoOrd* m_plY;			//  Feld der y-Koordinaten
	long* m_plCnt;			//  Anzahl der St�tzpunkte in Konturen des editierten Objektes

	KoOrd* m_plGrabPktX;	// Koordinaten der GrabPunkte
	KoOrd* m_plGrabPktY;	//  (f�r CommonBorder)
	HRESULT m_hrComBorder;	// CommonBorder-M�glichkeit
	long m_lComONr;			// Objektnummer des Objektes, von dem bei CommonBorder die
							// St�tzpunkte zu �bernehmen sind
		
	int m_iCloseCnt;		// Anzahl der gleichzeitig zu verl�ngernden Linienobjekte
	KoOrd* m_plCloseX;		// Koordinaten der Endpunkte aller zu verl�ngernden Linienobjekte
	KoOrd* m_plCloseY;		// (werden f�r das Zuziehen und f�r den Test, ob Fortsetzen m�glich
							// ist, ben�tigt)
	bool m_bNewEdit;		// Neueditierung (true) oder Modifikation (false)
	
	void TestClosedLine (void);
	void ListBoxSel (ControlEvt);
	
	void CloseButtonAction (void);
	void CircleButtonAction (void);
	HRESULT ComBorderButtonAction (void);
	HRESULT CommonBorderAtLine (IObjektGeometrie* pIOG, long* plIndex, MoveDir& MD);
	HRESULT CommonBorderAtArea (IObjektGeometrie* pIOG, long* plIndex, MoveDir& MD);
	bool ControlsSetting (void);

protected:
	void WindowInit (Event e);	
	void ButtonClick (ControlEvt e);
	BOOL OnOK (NotifyEvt);
	BOOL OnSetActive (NotifyEvt);
	BOOL OnKillActive (NotifyEvt);
	BOOL DrawEntireItem (DrawItemEvt);	// Element vollst�ndig malen
	BOOL DrawItemFocus (DrawItemEvt);	// Element mit Focus zeichnen
	BOOL DrawItemSelect (DrawItemEvt);	// Element ausgew�hlt zeichnen
	LRESULT Dispatch(Event e);

	HOBJECTS DefineNewEntry();
	int InsertEntry (char const *pEntry, HOBJECTS lIdent);
	void AdjustOKButton();

public:
	// Konstruktor/Destruktor
		CEditBaseDlg (KoOrd* plGrabPktX, KoOrd* plGrabPktY, HRESULT hrComBorder, int iCloseCnt,
					  KoOrd* plCloseX, KoOrd* plCloseY, bool bNewEdit);
		~CEditBaseDlg (void);
};

#endif  // _EDITBASEDLG_H
