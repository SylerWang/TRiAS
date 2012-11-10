// Deklarationen: Dialog zu PropertyAction f�r Splitten von Linienobjekten
// File: LinesSplittingDlg.h
// W. M�rtl

#ifndef _LINESSPLITTINGDLG_H
#define _LINESSPLITTINGDLG_H


#include "SmartInterfaces.h"


// Zustand des Dialogs
typedef struct tagLINESPLITRESULT
{
	double dFuzzy;			// Fangbereich bei Linienvereinigung (in Meter)
	double dDangle;			// Grenzl�nge bei Linienvereinigung (in Meter)

	BOOL fForceTolerances;	// Toleranzen immer berechnen
	BOOL fReturnNotTouched;	// nicht bearbeitete Objekte durchreichen
	BOOL fForceSelectObjClass;	// Auswahl der Zielobjektklasse immer durchf�hren
} LINESPLITRESULT;


///////////////////////////////////////////////////////////////////////////////////////////////
class CLinesSplittingDlg : public CPropertyPage
{
private:
	DWORD m_dwFlags;

	FixedText m_TextFuzzy,		// beschreibender Text sowie
			  m_TextDangle;
	DoubleNumEditX m_EditFuzzy,	// Eingabefelder f�r den Fangbereich und
				   m_EditDangle;// die minimale L�nge bei Linienvereinigung
	FixedText m_Descript;

	double m_dFuzzy;	// Fangbereich bei Linienvereinigung (in Meter)
	double m_dDangle;	// minimale L�nge bei Linienvereinigung (in Meter)

	bool m_bKnowOC;		// f�r die Ergebnisobjekte kann die Objektklasse der 
						// Ursprungsobjekte genutzt werden (true)
	bool m_fForceTolerances;	// Toleranzberechnung, auch wenn keine Linien 
								// selektiert sind
	bool m_fForceSelectObjClass; // Zielobjektklasse immer ausw�hlen
	bool m_fHasInitData;		// Initialisierungsdaten �bergeben

	class CLineSplitPropAct* m_pLSPA;

	HRESULT CalculateTolerances (IEnumLONG* pEnumIn, KoOrd& lFuzzyX, KoOrd& lFuzzyY,
								 KoOrd& lDangle);

protected:
// Konstruktor nicht direkt rufen
		CLinesSplittingDlg (ResID uiRes, LPCSTR pcCaption, CLineSplitPropAct* pLSPA,
							LINESPLITRESULT caSelInfo);

	bool FInit (void);

// sonstige Member
	void PrepareResult (void);

// EventHandler
	void WindowInit (Event);
	void EditFocusChg (EditFocusChgEvt e);
	void EditChange (ControlEvt e);
	BOOL OnSetActive (NotifyEvt);
	BOOL OnKillActive (NotifyEvt);
	int OnWizBack (NotifyEvt);
	int OnWizNext (NotifyEvt);
	BOOL OnWizFinish (NotifyEvt);

public:
// Konstruktor/Destruktor/Initialisierung
		~CLinesSplittingDlg (void);

static CLinesSplittingDlg* CreateInstance (UINT uiDlg, LPCSTR pcCaption,
					   CLineSplitPropAct* pLSPA, LINESPLITRESULT caSelInfo, 
					   ResourceFile& rRF);

// die dem Dialog �bergebenen Objekte bearbeiten
	HRESULT ExecuteOperation (HPROJECT hPr, IEnumLONG* pEnumIn, DWORD dwOptions,
		IEnumLONG** ppEnumOut, IEnumLONG** ppEnumNotUsed, 
		IProgressIndicator2* pPI = 0);

	void SetFlags (DWORD dwFlags) { m_dwFlags = dwFlags; }
	HRESULT SetSelectedInfo (LINESPLITRESULT* pSelInfo, bool bNoShow = false);
	HRESULT GetSelectedInfo (LINESPLITRESULT* pSelInfo, bool& bIsDirty);

	HPROPSHEETPAGE CreatePage() { return CPropertyPage::CreatePage(); }
};

#endif // _LINESSPLITTINGDLG_H
