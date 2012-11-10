// Auswahl aller Objekte verschiedener Objektklassen --------------------------
// File: SELIDENT.HXX

#if !defined(_SELIDENT_HXX)
#define _SELIDENT_HXX

class CSelIdentList;

class CSelectIdentDlg : public CPropertyPage { 
private:
	typedef struct tagSELIDRESULT {
		LONG m_lIdent;
		short m_iOTyp;
	} SELIDRESULT;

	DWORD m_dwFlags;
	int m_iCnt;		// Anzahl der selktierten Eintr�ge
	SELIDRESULT *m_pResult;	// selektierte Eintr�ge
	PushButton m_pbSelAll;
	class CSelIdentList *m_pIdents;

	void AdjustOK (bool fDisableNext = false);

protected:
	void ButtonClick (ControlEvt);
	void WindowInit (Event);

	void OnItemChanged (NotifyEvt);
	int OnSetActive (NotifyEvt);
	int OnWizFinish (NotifyEvt);
	int OnWizNext (NotifyEvt);
	void OnCancel (NotifyEvt);

	void OnClick (NotifyEvt);

// ZugriffsFunktionen auf ausgew�hlte Identifikatoren
	bool GetFirstIdent (long &rlIdent, short &riOTyp);
	bool GetNextIdent (long &rlIdent, short &riOTyp);
	int GetItemCount (void);
	int GetSelectedCount (void);

	bool PrepareResult (void);

// Konstruktor nicht direkt rufen
		CSelectIdentDlg (ResID uiRes, LPCSTR pcCaption, DWORD dwFlags);

	bool FInit (ResourceFile &rRF);
	
public:
// Destruktor/Initialisierung
		~CSelectIdentDlg (void);
		
static CSelectIdentDlg *CreateInstance (UINT uiDlg, LPCSTR pcCaption, 
					DWORD dwFlags, ResourceFile &rRF);
	
// InitialisierungsFuntkion zur anf�nglichen Selektion einzelner Eintr�ge
	bool SelectIdent (long lIdent, short iOTyp, bool fSel = true);

// Fragt den Dialog nach seinen Daten 
	HRESULT GetEnumLONG (IEnum<LONG> **ppEnum);
};


#endif // _SELIDENT_HXX

