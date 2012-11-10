// Fenster zur Eingabe eines extes als Objekteigenschaft ----------------------
// File: QUERYFLD.HXX

#if !defined(_QUERYFLD_HXX)
#define _QUERYFLD_HXX

class CQueryFieldDlg : public DialogWindow {
private:
	SingleLineEdit m_sleFieldText;
	CheckBox m_cbUseForAll;
	
	char *m_pInBuff;
	short m_iCnt;
	
protected:
	void ButtonClick (ControlEvt);
	
public:
		CQueryFieldDlg (pWindow pW, short iCnt);
		~CQueryFieldDlg (void);
		
	bool FInit (long lONr, bool fUseForAll, LPCSTR pText = NULL);
	
	bool UseForAll (void) { return m_cbUseForAll.isChecked(); }
	char *GetFieldText (char *pBuffer, ULONG ulLen);
};

#endif // _QUERYFLD_HXX