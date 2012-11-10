// PropertyChoice.h : header file
//

#include <ipropseq.hxx>
#include <PropActn.h>
#include <SrChoice.h>

#include "PropActBase.h"		// CPropertyActionBase

/////////////////////////////////////////////////////////////////////////////
// required smartinterfaces
DefineSmartInterface(PropertyAction);
DefineSmartInterface(ProgressIndicator);

/////////////////////////////////////////////////////////////////////////////
// Parent CPropertySheet f�r alle PropertyActions der PropertyChoice

#define PROPERTYACTION_FORMATVERSION	0x00100000L

/////////////////////////////////////////////////////////////////////////////
// CPropertyChoiceDlg dialog
class CAction 
{
private:
	WPropertyAction m_Act;	// PropertyAction
	int m_iFirst;			// Index der ersten DlgSeite
	int m_iLast;			// Index der letzten DlgSeite

public:
		CAction (IPropertyAction *pIAct = NULL) 
			: m_Act(pIAct), m_iFirst(-1), m_iLast(-1) {}
		~CAction (void) {}

	int FirstPage (void) const { return m_iFirst; }
	int LastPage (void) const { return m_iLast; }
	void SetFirstPage (int iFirst) { m_iFirst = iFirst; }
	void SetLastPage (int iLast) { m_iLast = iLast; }

	WPropertyAction &Action (void) const { return (WPropertyAction &)m_Act; }

// STL support
	CAction &operator= (const CAction &rAct) 
		{ m_Act = rAct.Action(); m_iFirst = rAct.FirstPage(); m_iLast = rAct.LastPage(); return *this; }
	
	int operator< (const CAction &rAct) const { return 0; }
	int operator== (const CAction &rAct) const { return 0; }
};

class CHPropSheetPage 
{
private:
	HPROPSHEETPAGE m_hPage;
	
public:
		CHPropSheetPage (HPROPSHEETPAGE hPage = NULL) : m_hPage(hPage) {}

	operator HPROPSHEETPAGE (void) { return m_hPage; }

	int operator< (const CHPropSheetPage &rAct) const { return 0; }
	int operator== (const CHPropSheetPage &rAct) const { return 0; }
};

typedef list<CAction> CActionList;			// Liste der angezeigten PropAct's
typedef list<CHPropSheetPage> CPageList;		// Liste der Dialogseiten f�r PropChoice

class CChoiceParent;		// forward declaration
class CPropertyChoice;

class CPropertyChoiceDlg : public CPropertyPage
{
	DECLARE_DYNCREATE(CPropertyChoiceDlg)

// Construction
public:
	CPropertyChoiceDlg();
	~CPropertyChoiceDlg();

// Dialog Data
	//{{AFX_DATA(CPropertyChoiceDlg)
	enum { IDD = IDD_PROPERTYCHOICE_DLG };
		// NOTE - ClassWizard will add data members here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_DATA


// Overrides
	// ClassWizard generate virtual function overrides
	//{{AFX_VIRTUAL(CPropertyChoiceDlg)
	public:
	virtual BOOL OnSetActive();
	virtual LRESULT OnWizardBack();
	virtual BOOL OnWizardFinish();
	virtual LRESULT OnWizardNext();
	virtual void OnCancel();
	virtual BOOL OnQueryCancel();
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	virtual LRESULT WindowProc(UINT message, WPARAM wParam, LPARAM lParam);
	//}}AFX_VIRTUAL

// Implementation
public:
static CPropertyChoiceDlg *CreateInstance (CPropertyChoice *pBack, LPCTSTR pcCaption);

	HRESULT InitSheet (void);
	bool FInit (CPropertyChoice *pBack, LPCTSTR pcCaption);

	HRESULT BeginAction (IProgressIndicator *);
	HRESULT DoAction (IDataObject *, DWORD);
	HRESULT EndAction (DWORD, IDataObject **);

	HRESULT AddConfigPages (LPCSTR pcDesc, UINT *puiCnt);
	HRESULT PreConfigPages (IDataObject *pIDO, DWORD dwFlags);

protected:
	// Generated message map functions
	//{{AFX_MSG(CPropertyChoiceDlg)
	virtual BOOL OnInitDialog();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()

	HRESULT EvalActPropAction(void);

private:
	DWORD m_dwSheetBttns;
	CPropertyChoice *m_pBack;
	string m_strTitle;

	string m_strDesc;
	CPageList m_Pages;			// alle registrierten Pages
	CChoiceParent *m_pSheet;	// Parent f�r alle angezeigten Pages
	bool m_fFirstActivation;	// OnSetActive beim 1. mal nicht weiterleiten
	WPropertyAction m_ActAction;	// am Ende aktives Objekt
};

/////////////////////////////////////////////////////////////////////////////
// Eigentliche PropertyAction
class CPropertyChoice : 
	public IClassProperty,
	public IPropertyAction,
	public IPropertyActionSequence,
	public IPersistStreamInit,
	public CComObjectRoot,
	public CComCoClass<CPropertyChoice, &CLSID_PropertyChoice>
{
private:
	CPropertyChoiceDlg *m_pCfgDlg;
	CActionList m_Actions;	// Liste der alternativen Aktionen

	string m_strDesc;

	bool m_fIsDirty;		// DirtyFlag
	bool m_fIsInitialized;	// ist fertig initialisiert

// Variablen f�r BeginAction/DoAction/EndAction
	WPropertyAction m_ICurrAct;
	WProgressIndicator m_IProgInd;

public:
	BEGIN_COM_MAP(CPropertyChoice)
		COM_INTERFACE_ENTRY(IPropertyActionSequence)
		COM_INTERFACE_ENTRY(IPropertyAction)
		COM_INTERFACE_ENTRY(IClassProperty)
		COM_INTERFACE_ENTRY(IPersistStreamInit)
		COM_INTERFACE_ENTRY2(IPersistStream, IPersistStreamInit)
		COM_INTERFACE_ENTRY(IPersist)
	END_COM_MAP()

	DECLARE_AGGREGATABLE(CPropertyChoice)				// class factory
	DECLARE_REGISTRY_RESOURCEID(IDR_PROPERTYCHOICE_REG)	// registry

		CPropertyChoice (void);
		~CPropertyChoice (void);

// IPropertyActionSequence methods
	STDMETHOD (AddAction) (THIS_ IPropertyAction *pIAct);
	STDMETHOD (AddActionsByCLSID) (THIS_ CALPCLSID *pcaClsIds);
	STDMETHOD (DoActions) (THIS_ HWND hParent, IProgressIndicator *pIStatus,
			       IDataObject *pIData, IDataObject **ppOutData);
	STDMETHOD (GetDescription) (THIS_ LPSTR pDesc, ULONG ulLen, ULONG *pulWritten);
	STDMETHOD (RedoActions) (THIS_ HWND hParent, IProgressIndicator *pIStatus,
			       IDataObject *pIData, IDataObject **ppOutData);

// IClassProperty specific functions
	STDMETHOD(GetPropInfo) (THIS_ LPSTR pBuffer, WORD wLen, DWORD *pdwFlags);
	STDMETHOD(Reset)(THIS);
	STDMETHOD_(ULONG, Count)(THIS);
	STDMETHOD(HelpInfo)(THIS_ LPSTR pBuffer, ULONG ulLen, LPSTR pHelpFile, 
						ULONG *pulHelpCtx);
	STDMETHOD(Eval)(THIS_ IEnumLONG *pEnumObj, LPSTR pBuffer, ULONG ulLen, 
					ULONG *pulWritten);
	STDMETHOD(Cumulation)(THIS_ LPSTR pBuffer, ULONG ulLen, ULONG *pulWritten);
	STDMETHOD (SetDescription) (THIS_ LPCSTR pcDesc);

// IPropertyAction methods
	STDMETHOD (AddConfigPages) (THIS_ LPFNADDPROPSHEETPAGE lpfnAddPage, 
								LPARAM lParam, LPCSTR pcDesc, 
								UINT *puiCnt);
	STDMETHOD (PreConfigPages) (THIS_ IDataObject *pIDataObject, DWORD dwFlags);
	STDMETHOD (BeginAction) (THIS_ IProgressIndicator *pIProgInd);
	STDMETHOD (DoAction) (THIS_ IDataObject *pDataObj, DWORD dwReserved);
	STDMETHOD (EndAction) (THIS_ DWORD dwReserved, IDataObject **ppOutObj);

// IPersist methods
	STDMETHOD(GetClassID)(THIS_ LPCLSID lpClassID);

// IPersistStreamInit methods
	STDMETHOD(IsDirty)(THIS);
	STDMETHOD(Load)(THIS_ LPSTREAM pStm);
	STDMETHOD(Save)(THIS_ LPSTREAM pStm, BOOL fClearDirty);
	STDMETHOD(GetSizeMax)(THIS_ ULARGE_INTEGER *pcbSize);
	STDMETHOD(InitNew)(THIS);

// sonstiges
	void SetDirty (bool fDirty = true);
	CActionList &GetActions (void) { return m_Actions; }
};

/////////////////////////////////////////////////////////////////////////////
// CDummyPage dialog

class CDummyPage : public CPropertyPage
{
	DECLARE_DYNCREATE(CDummyPage)

// Construction
public:
	CDummyPage();
	~CDummyPage();

// Dialog Data
	//{{AFX_DATA(CDummyPage)
	enum { IDD = IDD_DUMMYPAGE };
		// NOTE - ClassWizard will add data members here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_DATA


// Overrides
	// ClassWizard generate virtual function overrides
	//{{AFX_VIRTUAL(CDummyPage)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	// Generated message map functions
	//{{AFX_MSG(CDummyPage)
		// NOTE: the ClassWizard will add member functions here
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()

};

/////////////////////////////////////////////////////////////////////////////
// CChoiceParent

class CChoiceParent : public CPropertySheet
{
	DECLARE_DYNAMIC(CChoiceParent)

// Construction
public:
	CChoiceParent (CRect& rect, LPCTSTR pszCaption, CWnd* pParentWnd = NULL, UINT iSelectPage = 0);

// Attributes
public:

// Operations
public:
	void CleanUp (void) { RemovePage (&m_Page); }

	BOOL OnSetActive(void);
	LRESULT OnWizardBack (void);
	BOOL OnWizardFinish (void);
	LRESULT OnWizardNext (void);
	void OnCancel (void);
	BOOL OnQueryCancel (void);

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CChoiceParent)
	public:
	virtual BOOL OnInitDialog();
	protected:
	virtual LRESULT WindowProc(UINT message, WPARAM wParam, LPARAM lParam);
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CChoiceParent();

	// Generated message map functions
protected:
	//{{AFX_MSG(CChoiceParent)
		// NOTE - the ClassWizard will add and remove member functions here.
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()

private:
	CDummyPage m_Page;

public:
	CRect m_Rect;
	BOOL m_bNoTabs;
	int m_iDistanceFromTop;
};

/////////////////////////////////////////////////////////////////////////////
