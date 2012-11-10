// stdafx.h : include file for standard system include files,
//      or project specific include files that are used frequently,
//      but are changed infrequently

#if !defined(AFX_STDAFX_H__67689A8A_BCEF_4B38_8769_EE1189B496C1__INCLUDED_)
#define AFX_STDAFX_H__67689A8A_BCEF_4B38_8769_EE1189B496C1__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include <Pragmas.h>

#define	__ATL_USED__
#include <TRiASConfig.h>
#include "../ExportConfig.h"

#if defined(_DEBUG)
#define	_ASSERT_ON_THROW_FAILED_HRESULT	// THROW_FAILED_HRESULT liefert Assertion
#define _ATLX_ASSERT_ON_FAILURE
// evtl. ausf�hrliches AddRef/Release Tracking zuschalten
//#define _ATLX_DEBUG_REFCOUNT_WALKSTACK
//#define _USE_IMAGE_HELP					// dabei MSSymbols verwenden

// evtl. Objekte global z�hlen
#define _ATLX_DEBUG_REFCOUNT
#define _ATLX_DEBUG_OBJECTCOUNT

// Interfaces verfolgen
//#define _ATL_DEBUG_INTERFACES
//#define _ATL_DEBUG_QI
#endif // _DEBUG


///////////////////////////////////////////////////////////////////////////////
// speziell f�r Extension, Commonview etc.
#define	__CV__
#define	DLL
#define	__XT
#define	__DEXPROCS		// keine Messages, sondern direkte Funktionsaufrufe
//#define	__EXPFLTDLL__

///////////////////////////////////////////////////////////////////////////////
// STL-related stuff 
#define __STL_OSPACE5__
#include <stl.h>

// ospace stl
#include <tstring>

#include <atlbase.h>
//You may derive a class from CComModule and use it if you want to override
//something, but do not change the name of _Module
extern CComModule _Module;
#include <atlcom.h>
//#include <atlwin.h>
//#include <atlctl.h>

#include <ospace/com/smartif.h>
#include <com/DefSmartIf.h>

#include <ospace/com/ComErrorMacros.h>
#include <com/Errormacros2.h>
#include <com/VariantHelpers.h>
#include <com/BSTRHelpers.h>
#include <com/GUIDHelpers.h>
#include <com/StreamHelpers.h>

///////////////////////////////////////////////////////////////////////////////


//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_STDAFX_H__67689A8A_BCEF_4B38_8769_EE1189B496C1__INCLUDED)