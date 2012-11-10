// $Header: $
// Copyrightę 1999-2000 TRiAS GmbH Potsdam, All rights reserved
// Created: 12.12.2000 18:41:06 
//
// @doc
// @module TRiASCFG.cpp | Definition of the <c CTRiASCFG> class

#include "stdafx.h"

#include "resource.h"

#include <initguid.h>
#include "TRiASCFG.h"
#include "TRiASCFG_i.c"
#include "LoadXmlService.h"

CComModule _Module;

BEGIN_OBJECT_MAP(ObjectMap)
	OBJECT_ENTRY(CLSID_LoadXmlService, CLoadXmlService)
END_OBJECT_MAP()

/////////////////////////////////////////////////////////////////////////////
// DLL Entry Point

extern "C"
BOOL WINAPI DllMain(HINSTANCE hInstance, DWORD dwReason, LPVOID /*lpReserved*/)
{
    if (dwReason == DLL_PROCESS_ATTACH)
    {
        _Module.Init(ObjectMap, hInstance, &LIBID_TRiASCFG);
        DisableThreadLibraryCalls(hInstance);
    }
    else if (dwReason == DLL_PROCESS_DETACH)
        _Module.Term();
    return TRUE;    // ok
}

/////////////////////////////////////////////////////////////////////////////
// Used to determine whether the DLL can be unloaded by OLE

STDAPI DllCanUnloadNow(void)
{
    return (_Module.GetLockCount()==0) ? S_OK : S_FALSE;
}

/////////////////////////////////////////////////////////////////////////////
// Returns a class factory to create an object of the requested type

STDAPI DllGetClassObject(REFCLSID rclsid, REFIID riid, LPVOID* ppv)
{
    return _Module.GetClassObject(rclsid, riid, ppv);
}

/////////////////////////////////////////////////////////////////////////////
// DllRegisterServer - Adds entries to the system registry

STDAPI DllRegisterServer(void)
{
CComBSTR bstrPath;

	if (SUCCEEDED(EnsureXmlPath(&bstrPath))) {
		USES_CONVERSION;

		bstrPath.Append(L"\\GeoComponentSequence.dtd");
		DeleteFile(OLE2A(bstrPath));
	}

    // registers object, typelib and all interfaces in typelib
    return _Module.RegisterServer(TRUE);
}

/////////////////////////////////////////////////////////////////////////////
// DllUnregisterServer - Removes entries from the system registry

STDAPI DllUnregisterServer(void)
{
    return _Module.UnregisterServer(TRUE);
}


