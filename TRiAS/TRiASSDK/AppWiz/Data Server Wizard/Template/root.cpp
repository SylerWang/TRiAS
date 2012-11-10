// $Header: $
// Copyright� 1998-$$year$$ $$company$$, All rights reserved
// Created: $$date_n_time$$
//
// This file was generated by the TRiASDB Data Server Wizard $$this_version$$
//
$$IF(EMIT_WARRANTIES)
// THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY 
// KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A PARTICULAR 
// PURPOSE.
//
$$ENDIF // EMIT_WARRANTIES
// @doc
// $$root$$.cpp : Implementation of DLL Exports.

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
//      Modify the custom build rule for $$root$$.idl by adding the following 
//      files to the Outputs.
//          $$root$$_p.c
//          dlldata.c
//      To build a separate proxy/stub DLL, 
//      run nmake -f $$root$$ps.mk in the project directory.

#include "stdafx.h"
#include "resource.h"

#include <initguid.h>
#if defined(_DEBUG)
#include <ospace/file/path.h>
#endif // defined(_DEBUG)

#include "$$root$$.h"
#include "dlldatax.h"
#include "Strings.h"

#include "$$root$$_i.c"

#include "$$root$$App.h"

#include "$$root$$DBEngine.h"
#include "$$root$$Database.h"
#include "$$root$$ObjectsCollection.h"
#include "$$root$$Objects.h"
#include "$$root$$Object.h"
#include "$$root$$Features.h"
#include "$$root$$Feature.h"
#include "$$root$$GeoFeatures.h"
#include "$$root$$GeoFeature.h"
$$IF(EMIT_SAMPLE_CODE)
// BEGIN_SAMPLE_DATA
#include "$$root$$CursorProperty.h"
// END_SAMPLE_DATA
$$ENDIF // $$IF(EMIT_SAMPLE_CODE)

#ifdef _MERGE_PROXYSTUB
extern "C" HINSTANCE hProxyDll;
#endif

CComModule _Module;

BEGIN_OBJECT_MAP(ObjectMap)
	OBJECT_ENTRY(CLSID_$$safe_root$$DBEngine, C$$safe_root$$DBEngine)
	OBJECT_ENTRY(CLSID_$$safe_root$$Database, C$$safe_root$$Database)
	OBJECT_ENTRY(CLSID_$$safe_root$$ObjectsCollection, C$$safe_root$$ObjectsCollection)
	OBJECT_ENTRY(CLSID_$$safe_root$$Objects, C$$safe_root$$Objects)
	OBJECT_ENTRY(CLSID_$$safe_root$$Object, C$$safe_root$$Object)
	OBJECT_ENTRY(CLSID_$$safe_root$$Features, C$$safe_root$$Features)
	OBJECT_ENTRY(CLSID_$$safe_root$$Feature, C$$safe_root$$Feature)
	OBJECT_ENTRY(CLSID_$$safe_root$$GeoFeatures, C$$safe_root$$GeoFeatures)
	OBJECT_ENTRY(CLSID_$$safe_root$$GeoFeature, C$$safe_root$$GeoFeature)
$$IF(EMIT_SAMPLE_CODE)
// BEGIN_SAMPLE_DATA
$$IF(READ_WRITE)
	OBJECT_ENTRY(CLSID_$$safe_root$$CursorProperty, C$$safe_root$$CursorProperty)
$$ELSE
	OBJECT_ENTRY(CLSID_$$safe_root$$ObjectCursorProperty, C$$safe_root$$ObjectCursorProperty)
$$ENDIF // $$IF(READ_WRITE)
// END_SAMPLE_DATA
$$ENDIF
END_OBJECT_MAP()

///////////////////////////////////////////////////////////////////////////////
// MFC specifics
#if defined(_MFC_VER)
BEGIN_MESSAGE_MAP(C$$Safe_root$$App, CWinApp)
	//{{AFX_MSG_MAP(C$$Safe_root$$App)
		// NOTE - the ClassWizard will add and remove mapping macros here.
		//    DO NOT EDIT what you see in these blocks of generated code!
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

C$$Safe_root$$App theApp;

BOOL C$$Safe_root$$App::InitInstance()
{
#ifdef _MERGE_PROXYSTUB
    hProxyDll = m_hInstance;
#endif
    _Module.Init(ObjectMap, m_hInstance, &LIBID_$$safe_root$$Lib);
    return CWinApp::InitInstance();
}

int C$$Safe_root$$App::ExitInstance()
{
    _Module.Term();

#if defined(_DEBUG)
char cbBuffer[_MAX_PATH];

	::GetModuleFileName (m_hInstance, cbBuffer, sizeof(cbBuffer));

os_path path (cbBuffer);
os_string str (path.filename());

	TRACE1(TEXT("%s: exiting: \r\n"), str.c_str());
	if (_Module.GetLockCount() != 0) 
		TRACE1(TEXT("\tInfo: Global ATL lock count: %ld\r\n"), _Module.GetLockCount());
	
	TRACE0(TEXT("\t"));

HRESULT hr = AfxDllCanUnloadNow();

	if (S_OK != hr)
		TRACE1(TEXT("Info: AfxDllCanUnloadNow returns: 0x%lx\r\n"), hr);
#endif // _DEBUG

    return CWinApp::ExitInstance();
}

#else

/////////////////////////////////////////////////////////////////////////////
// DLL Entry Point (without MFC)

extern "C"
BOOL WINAPI DllMain(HINSTANCE hInstance, DWORD dwReason, LPVOID lpReserved)
{
    lpReserved;
#ifdef _MERGE_PROXYSTUB
    if (!PrxDllMain(hInstance, dwReason, lpReserved))
        return FALSE;
#endif
    if (dwReason == DLL_PROCESS_ATTACH)
    {
        _Module.Init(ObjectMap, hInstance, &LIBID_TRiASOGCLib);
        DisableThreadLibraryCalls(hInstance);
    }
    else if (dwReason == DLL_PROCESS_DETACH)
	{
        _Module.Term();
#if defined(_DEBUG)
	char cbBuffer[_MAX_PATH];

		::GetModuleFileName (m_hInstance, cbBuffer, sizeof(cbBuffer));

	os_path path (cbBuffer);
	os_string str (path.filename());

		TRACE1(TEXT("%s: exiting: \r\n"), str.c_str());
		if (_Module.GetLockCount() != 0) 
			TRACE1(TEXT("\tInfo: Global ATL lock count: %ld\r\n"), _Module.GetLockCount());
#endif // defined(_DEBUG)
	}
    return TRUE;    // ok
}

#endif // defined(_MFC_VER)

/////////////////////////////////////////////////////////////////////////////
// Used to determine whether the DLL can be unloaded by OLE

STDAPI DllCanUnloadNow(void)
{
#ifdef _MERGE_PROXYSTUB
    if (PrxDllCanUnloadNow() != S_OK)
        return S_FALSE;
#endif
#if defined(_MFC_VER)
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
    return (AfxDllCanUnloadNow()==S_OK && _Module.GetLockCount()==0) ? S_OK : S_FALSE;
#else
	return (0 == _Module.GetLockCount()) ? S_OK : S_FALSE;
#endif // defined(_MFC_VER)
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

