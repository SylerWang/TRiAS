/*
Module : DDXGETFOLDER.CPP
Purpose: Defines the interface to a for a MFC DDX_ routine to get a directory/folder
         Using the file open/save as common dialogs
Created: PJN / DDXGETFOLDER/1 / 26-03-1997
History: None

Copyright (c) 1997 by PJ Naughter.  
All rights reserved.

*/


#ifndef _DDXGETFOLDER_H__
#define _DDXGETFOLDER_H__

#include <ospace/std/set>

///////////////////////////////////////////////////////////////////////////////
// Consts 
// flags used to control how the DDX_GetFolderControl routine workds
const DWORD GFLDR_OLD_STYLE_DIALOG = 0x0001;   //Use the old style file open dialog instead of the
                                               //style as used in Windows Explorer
const DWORD GFLDR_SAVEASDIALOG = 0x0002;	// Show Create Folder button

const UINT WM_DIRSELECTED			= WM_USER+1001;		// Notification


///////////////////////////////////////////////////////////////////////////////
// foward declaration 
class CGetFolderControl;

///////////////////////////////////////////////////////////////////////////////
// Classes 
class CModifyButtonFolder : public CButton
{
public:
  CModifyButtonFolder();
  void SetBuddy(CGetFolderControl* pBuddy);
	void Reset();

protected:
  //{{AFX_VIRTUAL(CModifyButtonFolder)
  public:
  virtual BOOL PreTranslateMessage(MSG* pMsg);
  //}}AFX_VIRTUAL

  //{{AFX_MSG(CModifyButtonFolder)
  afx_msg void OnClicked();
	afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
	afx_msg void OnDestroy();
  //}}AFX_MSG

  DECLARE_MESSAGE_MAP()

  CGetFolderControl* m_pBuddy;
  BOOL m_bFirstCall;
	BOOL m_fTTCreated;
  CToolTipCtrl m_ToolTip;
};

class CGetFolderControl : public CStatic
{
public:
  CGetFolderControl();

  BOOL SubclassEdit(HWND hEdit);
  void SetFlags(DWORD dwFlags, const CString& sTitle, const CString &sDir);
  void Edit(BOOL fShowDlg = TRUE);
	BOOL Reset (void);
	CFiles &GetFiles() { return m_Files; }

protected:
  //{{AFX_VIRTUAL(CGetFolderControl)
  //}}AFX_VIRTUAL

  //{{AFX_MSG(CGetFolderControl)
  //}}AFX_MSG

  DECLARE_MESSAGE_MAP()

  BOOL AddEditButton();
	BOOL RemoveEditButton();

  CModifyButtonFolder m_Edit;
  DWORD         m_dwFlags;
  CString       m_sTitle;
  CString       m_sExtFilter;
  CString		m_sDir;

public:
	CFiles m_Files;
};

///////////////////////////////////////////////////////////////////////////////
// MFC Data exchange routines 
void DDX_GetFolderControl(CDataExchange* pDX, int nIDC, 
	CGetFolderControl& rCGetFolderControl, DWORD dwFlags, const CString& sTitle, 
	const CString &sDir);

/////////////////////////////////////////////////////////////////////////////
// CFindTreeView window

class CFindTreeView : public CTreeCtrl
{
// Construction
public:
	CFindTreeView();

// Attributes
public:

// Operations
public:
	HTREEITEM FindItem (HTREEITEM hItem, LPCSTR pcItem);
	HTREEITEM FindString (LPCSTR pcItem);

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CFindTreeView)
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CFindTreeView();

	// Generated message map functions
protected:
	//{{AFX_MSG(CFindTreeView)
	//}}AFX_MSG

	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

#endif //_DDXGETFOLDER_H__

