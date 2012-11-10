// $Header: $
// Copyrightę 1998-2000 TRiAS GmbH Potsdam, All rights reserved
// Created: 25.02.2000 11:15:18
//
// This file was generated by the TRiASDB Data Server Wizard V1.01.076 (#HK000225)
//
// @doc
// Fastdb.cpp : Implementation of DLL Exports.

// Note: Proxy/Stub Information
//      To merge the proxy/stub code into the object DLL, add the file 
//      dlldatax.c to the project.  Make sure precompiled headers 
//      are turned off for this file, and add _MERGE_PROXYSTUB to the 
//      defines for the project.  
//
//      If you are not running WinNT4.0 or Win95 with DCOM, then you
//      need to remove the following define from dlldatax.c
//      #define _WIN32_WINNT 0x0400
//
//      Further, if you are running MIDL without /Oicf switch, you also 
//      need to remove the following define from dlldatax.c.
//      #define USE_STUBLESS_PROXY
//
//      Modify the custom build rule for Fastdb.idl by adding the following 
//      files to the Outputs.
//          Fastdb_p.c
//          dlldata.c
//      To build a separate proxy/stub DLL, 
//      run nmake -f Fastdbps.mk in the project directory.

#include "stdafx.h"
#include "resource.h"

#include <initguid.h>

#include "Fastdb.h"
#include "dlldatax.h"
#include "Strings.h"

#include "Fastdb_i.c"

#include "FastdbApp.h"

#include "FastdbDBEngine.h"
#include "FastdbDatabase.h"
#include "FastdbObjectsCollection.h"
#include "FastdbObjects.h"
#include "FastdbObject.h"
#include "FastdbFeatures.h"
#include "FastdbFeature.h"
#include "FastdbGeoFeatures.h"
#include "FastdbGeoFeature.h"
#include "FastdbCursorProperty.h"

#ifdef _MERGE_PROXYSTUB
extern "C" HINSTANCE hProxyDll;
#endif

CComModule _Module;

BEGIN_OBJECT_MAP(ObjectMap)
	OBJECT_ENTRY(CLSID_FastdbDBEngine, CFastdbDBEngine)
	OBJECT_ENTRY(CLSID_FastdbDatabase, CFastdbDatabase)
	OBJECT_ENTRY(CLSID_FastdbObjectsCollection, CFastdbObjectsCollection)
	OBJECT_ENTRY(CLSID_FastdbObjects, CFastdbObjects)
	OBJECT_ENTRY(CLSID_FastdbObject, CFastdbObject)
	OBJECT_ENTRY(CLSID_FastdbFeatures, CFastdbFeatures)
	OBJECT_ENTRY(CLSID_FastdbFeature, CFastdbFeature)
	OBJECT_ENTRY(CLSID_FastdbGeoFeatures, CFastdbGeoFeatures)
	OBJECT_ENTRY(CLSID_FastdbGeoFeature, CFastdbGeoFeature)
	OBJECT_ENTRY(CLSID_FastdbCursorProperty, CFastdbCursorProperty)
END_OBJECT_MAP()

BEGIN_MESSAGE_MAP(CFastdbApp, CWinApp)
	//{{AFX_MSG_MAP(CFastdbApp)
		// NOTE - the ClassWizard will add and remove mapping macros here.
		//    DO NOT EDIT what you see in these blocks of generated code!
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

CFastdbApp theApp;

///////////////////////////////////////////////////////////////////////////////
// WindowsVersion
bool IsWin31 (void) { return theApp.IsWin31(); }
bool IsWin40 (void) { return theApp.IsWin40(); }
bool IsWin41 (void) { return theApp.IsWin41(); }
bool IsWin50 (void) { return theApp.IsWin50(); }
bool IsWin32s (void) { return theApp.IsWin32s(); }
bool IsWinNT (void) { return theApp.IsWinNT(); }

BOOL CFastdbApp::InitInstance()
{
#ifdef _MERGE_PROXYSTUB
    hProxyDll = m_hInstance;
#endif
    _Module.Init(ObjectMap, m_hInstance, &LIBID_FastdbLib);
   
CRegKey key;

	if (ERROR_SUCCESS == key.Open(HKEY_CURRENT_USER, TEXT("Software")) &&
		ERROR_SUCCESS == key.Open(key, REG_COMPANY_KEY) &&
		ERROR_SUCCESS == key.Open(key, REG_PRODUCT_KEY))
	{
	CRegKey dirkey;

		if (ERROR_SUCCESS == dirkey.Open(key, TEXT("Directories"))) {
		DWORD dwCount = _countof(g_cbProjects);

			if (ERROR_SUCCESS != dirkey.QueryValue (g_cbProjects, TEXT("DefaultProjectDir"), &dwCount)) 
			{
				::GetModuleFileName (m_hInstance, g_cbProjects, _countof(g_cbProjects));	// Standard verwenden
			}
		}
	}
	return CWinApp::InitInstance();
}

int CFastdbApp::ExitInstance()
{
    _Module.Term();
    return CWinApp::ExitInstance();
}

/////////////////////////////////////////////////////////////////////////////
// Used to determine whether the DLL can be unloaded by OLE

STDAPI DllCanUnloadNow(void)
{
#ifdef _MERGE_PROXYSTUB
    if (PrxDllCanUnloadNow() != S_OK)
        return S_FALSE;
#endif
    AFX_MANAGE_STATE(AfxGetStaticModuleState());
    return (AfxDllCanUnloadNow()==S_OK && _Module.GetLockCount()==0) ? S_OK : S_FALSE;
}

/////////////////////////////////////////////////////////////////////////////
// Returns a class factory to create an object of the requested type

STDAPI DllGetClassObject(REFCLSID rclsid, REFIID riid, LPVOID* ppv)
{
#ifdef _MERGE_PROXYSTUB
    if (PrxDllGetClassObject(rclsid, riid, ppv) == S_OK)
        return S_OK;
#endif
    return _Module.GetClassObject(rclsid, riid, ppv);
}

/////////////////////////////////////////////////////////////////////////////
// DllRegisterServer - Adds entries to the system registry

STDAPI DllRegisterServer(void)
{
#ifdef _MERGE_PROXYSTUB
    HRESULT hRes = PrxDllRegisterServer();
    if (FAILED(hRes))
        return hRes;
#endif
    // registers object, typelib and all interfaces in typelib
    return _Module.RegisterServer(TRUE);
}

/////////////////////////////////////////////////////////////////////////////
// DllUnregisterServer - Removes entries from the system registry

STDAPI DllUnregisterServer(void)
{
#ifdef _MERGE_PROXYSTUB
    PrxDllUnregisterServer();
#endif
    return _Module.UnregisterServer(TRUE);
}


