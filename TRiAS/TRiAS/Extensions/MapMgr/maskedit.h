#if !defined(AFX_MASKEDIT_H__D73C8333_0FA3_11D2_8F6D_0060085FC1CE__INCLUDED_)
#define AFX_MASKEDIT_H__D73C8333_0FA3_11D2_8F6D_0060085FC1CE__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000
// Machine generated IDispatch wrapper class(es) created by Microsoft Visual C++

// NOTE: Do not modify the contents of this file.  If this class is regenerated by
//  Microsoft Visual C++, your modifications will be overwritten.

/////////////////////////////////////////////////////////////////////////////
// CMaskEdit wrapper class

class CMaskEdit : public CWnd
{
protected:
	DECLARE_DYNCREATE(CMaskEdit)
public:
	CLSID const& GetClsid()
	{
		static CLSID const clsid
			= { 0x51bb3ddf, 0xc38, 0x11d2, { 0x8f, 0x6b, 0x0, 0x60, 0x8, 0x5f, 0xc1, 0xce } };
		return clsid;
	}
	virtual BOOL Create(LPCTSTR lpszClassName,
		LPCTSTR lpszWindowName, DWORD dwStyle,
		const RECT& rect,
		CWnd* pParentWnd, UINT nID,
		CCreateContext* pContext = NULL)
	{ return CreateControl(GetClsid(), lpszWindowName, dwStyle, rect, pParentWnd, nID); }

    BOOL Create(LPCTSTR lpszWindowName, DWORD dwStyle,
		const RECT& rect, CWnd* pParentWnd, UINT nID,
		CFile* pPersist = NULL, BOOL bStorage = FALSE,
		BSTR bstrLicKey = NULL)
	{ return CreateControl(GetClsid(), lpszWindowName, dwStyle, rect, pParentWnd, nID,
		pPersist, bStorage, bstrLicKey); }

// Attributes
public:

// Operations
public:
	void SetBackColor(unsigned long newValue);
	unsigned long GetBackColor();
	void SetBorderColor(unsigned long newValue);
	unsigned long GetBorderColor();
	void SetBorderStyle(long nNewValue);
	long GetBorderStyle();
	void SetRefFont(LPDISPATCH newValue);
	void SetFont(LPDISPATCH newValue);
	LPDISPATCH GetFont();
	void SetBorderVisible(BOOL bNewValue);
	BOOL GetBorderVisible();
	CString GetMask();
	void SetMask(LPCTSTR lpszNewValue);
	CString GetPromptChar();
	void SetPromptChar(LPCTSTR lpszNewValue);
	CString GetEscapeChar();
	CString GetText(short DelimterCharacter);
	void SetText(short DelimterCharacter, LPCTSTR lpszNewValue);
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Developer Studio will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MASKEDIT_H__D73C8333_0FA3_11D2_8F6D_0060085FC1CE__INCLUDED_)
