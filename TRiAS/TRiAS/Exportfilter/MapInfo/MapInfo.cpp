// $Header: $
// Copyright� 1999-2001 TRiAS GmbH Potsdam, All rights reserved
// Created: 23.01.2001 12:44:05 
//
// @doc
// @module MapInfo.cpp | DLL entry points, licensing

#include "stdafx.h"
#include "MapInfoImpl.h"

#include <Com/XMLHelpers.h>
#include <Registrx.hxx>

#include "../ExtDataEngineImpl.h"
#include "../CTRiASOEProxyImpl.h"

#include "MapInfoExport.h"

#include "initguid.h"
#include "MapInfo_i.c"
#include "TrCatIDs.h"

CComModule _Module;

BEGIN_OBJECT_MAP(ObjectMap)
	OBJECT_ENTRY(CLSID_MapInfoExport, CMapInfoExport)
END_OBJECT_MAP()

DEXEXTENSIONPROC g_pDexExtensionProc = NULL;
DEXEXTENSIONPROC2 g_pDexExtensionProc2 = NULL;
DEXNOTIFICATIONPROC g_pDexNotificationProc = NULL;

#if defined(_DEBUG)
extern "C" bool g_fGlobalLic = false;
#endif // defined(_DEBUG)

#if _TRiAS_VER < 0x0400
DWORD g_dwVer4 = 0;		// Versionskontrolle
#endif // _TRiAS_VER < 0x0400

BOOL WINAPI DllMain(HINSTANCE hInstance, DWORD dwReason, LPVOID /*lpReserved*/) 
{
	if (dwReason == DLL_PROCESS_ATTACH) {
		_Module.Init(ObjectMap, hInstance);
		DisableThreadLibraryCalls(hInstance);

	// TRiAS-Kopplung
	HMODULE hTrias = GetModuleHandle (NULL);

		g_pDexExtensionProc = (DEXEXTENSIONPROC)GetProcAddress (hTrias, TEXT("DEXEXTENSIONPROC"));
		g_pDexExtensionProc2 = (DEXEXTENSIONPROC2)GetProcAddress (hTrias, TEXT("DEXEXTENSIONPROC2"));
		g_pDexNotificationProc = (DEXNOTIFICATIONPROC)GetProcAddress (hTrias, TEXT("DEXNOTIFICATIONPROCEX"));

#if defined(_DEBUG)
		{
		// globale Lizensierung �berpr�fen
		CCurrentUser reg (KEY_READ, TEXT("Software\\" REG_COMPANY_KEY "\\" REG_PRODUCT_KEY "\\Config"));
		DWORD dwLic = 0;

			reg.GetDWORD (TEXT("GlobalLicense"), dwLic);
			g_fGlobalLic = dwLic ? true : false;
		}
#endif // defined(_DEBUG)
#if _TRiAS_VER < 0x0400
		{
		CCurrentUser reg (KEY_READ, TEXT("Software\\" REG_COMPANY_KEY "\\" REG_PRODUCT_KEY "\\Config"));

			g_dwVer4 = 0;
			reg.GetDWORD (TEXT("FakeTRiAS4"), g_dwVer4);
		}
#endif // _TRiAS_VER < 0x0400
	} 
	else if (dwReason == DLL_PROCESS_DETACH) {
		_Module.Term();
	}
	return TRUE;    // ok
}

STDAPI DllCanUnloadNow(void) {
	return (_Module.GetLockCount()==0) ? S_OK : S_FALSE;
}

STDAPI DllGetClassObject(REFCLSID rclsid, REFIID riid, LPVOID* ppv) {
	return _Module.GetClassObject(rclsid, riid, ppv);
}

STDAPI DllRegisterServer(void) {
	return _Module.RegisterServer(TRUE);
}

STDAPI DllUnregisterServer(void) {
	return _Module.UnregisterServer();
}

///////////////////////////////////////////////////////////////////////////////
// Lizensierung f�r Exportmodul
#include <Esnecil.h>
#include <EsnecilExt.h>

BOOL GetLicenseKey (LPWSTR pwKey, size_t iLen)
{
#if _TRiAS_VER < 0x0400
	if (0 == g_dwVer4) 
		return TRUE;
#endif // _TRiAS_VER < 0x0400

VERIFYLICENSE VL;

	INITSTRUCT(VL, VERIFYLICENSE);
	VL.iMode = VERIFYMODE_DontShowDialog;
	VL.lLevelOrOption = CKIOPTION_MAPINFO;
	if (!DEX_VerifyLicenseOption(VL))
		return FALSE;

CEsnecilExt Lic;
LPCSTR pcSiteCode = Lic.GetSiteCode();

	if (NULL != pwKey && NULL != pcSiteCode) 		// Key kopieren
		mbstowcs (pwKey, pcSiteCode, min(iLen, strlen(pcSiteCode)));

	return (NULL != pcSiteCode) ? TRUE : FALSE;
}

BOOL GetLicensed (void)
{
#if _TRiAS_VER < 0x0400
	if (0 == g_dwVer4) 
		return TRUE;
#endif // _TRiAS_VER < 0x0400

VERIFYLICENSE VL;
CComBSTR bstrLicCap;

	USES_CONVERSION;
	bstrLicCap.LoadString(IDS_LONGCLASSNAME);
	
	INITSTRUCT(VL, VERIFYLICENSE);
	VL.iMode = VERIFYMODE_DontShowDialog;
	VL.lLevelOrOption = CKIOPTION_MAPINFO;
	VL.pcCaption = OLE2A(bstrLicCap);
	return DEX_VerifyLicenseOption(VL);
}

BOOL SetLicensed (LPCSTR lpNewKey)		// Lizensierung ist erfolgt
{
#if _TRiAS_VER < 0x0400
	if (0 == g_dwVer4) 
		return TRUE;
#endif // _TRiAS_VER < 0x0400

CEsnecilExt Lic;

	return Lic.Authorize(lpNewKey);
}

