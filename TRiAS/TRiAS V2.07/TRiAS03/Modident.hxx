// Dialog, welcher einen Ident ausw�hlbar macht, um Objekte umzuklassifizieren
// File: MODIDENT.HXX

#if !defined(_MODIDENT_HXX)
#define _MODIDENT_HXX

#include <selidlvc.hxx>
#include "propactb.hxx"	// JG

class CModifyIdentDlg : 
	public CPropertyPage,
	public CPropertyActionExtUsage
{
private:
	DWORD m_dwFlags;

	CheckBox m_cbAddToView;
	PushButton m_pbDefine;
	CSelIdentListView *m_pIdents;
	FixedText m_ftAdjustIdent;
	CheckBox m_cbAdjustIdent;

	LONG m_lResult;			// selektierter Ident
	bool m_fAddToView;
	bool m_fCheckMode;
	bool m_fCheckModeChecked;

	IEnum<LONG> *m_pIEnumObjs;
	class CModIDPropAct *m_pParent;

	void AdjustOK (bool fDisableNext = false);
	void AdjustCheckMode();

protected:
	void WindowInit (Event);

	void OnItemChanged (NotifyEvt);
	int OnSetActive (NotifyEvt);
	int OnWizFinish (NotifyEvt);
	int OnWizNext (NotifyEvt);
	void OnCancel (NotifyEvt);
	void OnClick (NotifyEvt);
	void HelpRequest(HelpRequestEvt);
	void ButtonClick (ControlEvt e);

// ZugriffsFunktionen auf ausgew�hlte Identifikatoren
	bool GetSelectedIdent (long &rlIdent);
	int GetItemCount (void);

	bool PrepareResult (void);

// Konstruktor nicht direkt rufen
		CModifyIdentDlg (CModIDPropAct *pParent, ResID uiRes, LPCSTR pcCaption);

	bool FInit (void);
	
public:
// Destruktor/Initialisierung
		~CModifyIdentDlg (void);
		
static CModifyIdentDlg *CreateInstance (CModIDPropAct *pParent, ResID resID, 
										LPCSTR pcCaption);
	
	void SetFlags (DWORD dwFlags);

// InitialisierungsFuntkion zur anf�nglichen Selektion einzelner Eintr�ge
	int SelectIdent (long lIdent, bool fSel = true);

	void SetSelectedIdent (long lIdent) { m_lResult = lIdent; }
	long GetSelectedIdent (void) { return m_lResult; }

	void SetAddToView (bool fAddToView) { m_fAddToView = fAddToView; }
	bool GetAddToView (void) { return m_fAddToView; }

	HRESULT SetEnumLONG (IEnum<LONG> *pIEnum);		// �bergibt zu modifizierende Objektmenge
	HRESULT GetEnumLONG (IEnum<LONG> **ppIEnum);	// Fragt den Dialog nach seinen Daten 

	HRESULT GetInputEnumLONG (IEnum<LONG> **ppIEnum)
	{
		if (NULL != m_pIEnumObjs)
			return m_pIEnumObjs -> QueryInterface(IID_IEnumLONG, (LPVOID *)ppIEnum);
		return E_UNEXPECTED;
	}

	void SetCheckMode (BOOL fCheckMode, BOOL fCheckModeChecked)
	{
		m_fCheckMode = fCheckMode;
		m_fCheckModeChecked = fCheckModeChecked;
		AdjustCheckMode();
	}
	void GetCheckMode (BOOL &rfCheckMode, BOOL &rfCheckModeChecked)
	{
		rfCheckMode = m_fCheckMode;
		rfCheckModeChecked = m_fCheckModeChecked;
	}

// Sonstiges
	void SetDirty (bool fDirty);
};

#endif // _MODIDENT_HXX

