// Ein TreeViewCtrl, mit welchem Objekteigenschaften ausgew�hlt werden k�nnen -
// File: SELOPRPT.HXX

#if !defined(_SELOPRPT_HXX)
#define _SELOPRPT_HXX

#pragma warning (disable: 4786)		// too long identifiers

class CSelObjPropTree : public CTreeViewCtrl {
private:
	WObjectProps m_Props;	// h�lt IObjectProps fest

	typedef map<os_string, HTREEITEM, less<os_string> > CItemMap;
	CItemMap m_Items;

protected:
	HTREEITEM CalcSubGroupItem (HTREEITEM hParent, LPCSTR pSubGroup);
	HTREEITEM CalcParentItem (os_string &strGroup);

public:
// Konstruktor/Destruktor/Initialisierung
		CSelObjPropTree (pDialogWindow pW, ResID uiRes, 
				 ResourceFile &rRF, IObjectProps *pIProps);
		~CSelObjPropTree (void);
		
	bool InitControl (void);
};

#endif // _SELOPRPT_HXX
