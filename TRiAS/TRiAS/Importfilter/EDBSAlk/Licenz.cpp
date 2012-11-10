// Lizensierung dieser InputErweiterung
// File: Lizenz.cpp

#include "stdafx.h"

#include <Esnecil.h>
#include <EsnecilExt.h>

#include "resource.h"

#if _TRiAS_VER < 0x0400

#include <registrx.hxx>

///////////////////////////////////////////////////////////////////////////////
// Versionskontrolle
extern DWORD g_dwVer4;

///////////////////////////////////////////////////////////////////////////////
// Registrierung �ber eigene Seriennummer, die in Registry steht
const char g_cbRegVersion[]	= TEXT("SOFTWARE\\" REG_COMPANY_KEY "\\" REG_PRODUCT_KEY "\\3.0");
const char g_cbSerial[] = TEXT("Serial");

HRESULT IsLegalRegNumber (LPCSTR pcRegEntry);

BOOL GetLicenseKeyObsolete (LPWSTR pwKey, size_t iLen)
{
CLocalMachine regName (KEY_READ, g_cbRegVersion);
char cbRegEntry[65];
DWORD dwLen = sizeof(cbRegEntry);

	if (regName.GetSubSZ (g_cbSerial, cbRegEntry, dwLen) &&
		S_OK == IsLegalRegNumber (cbRegEntry)) 
	{
		if (NULL != pwKey)		// Key kopieren
			mbstowcs (pwKey, cbRegEntry, min(dwLen, iLen));
		return true;
	} 
	return false;
}

BOOL GetLicensedObsolete (void)
{
CLocalMachine regName (KEY_READ, g_cbRegVersion);
char cbRegEntry[65];
DWORD dwLen = sizeof(cbRegEntry);

	if (!regName.GetSubSZ (g_cbSerial, cbRegEntry, dwLen))
		return false;

	return S_OK == IsLegalRegNumber (cbRegEntry) ? true : false;	// lizensiert ??
}

BOOL SetLicensedObsolete (LPCSTR lpNewKey)		// Lizensierung ist erfolgt
{
	if (S_OK != IsLegalRegNumber(lpNewKey))
		return false;

CLocalMachine regName (g_cbRegVersion, true);

	return regName.SetSubSZ (g_cbSerial, lpNewKey);
}
#endif // _TRiAS_VER < 0x0400

BOOL GetLicenseKey (LPWSTR pwKey, size_t iLen)
{
#if _TRiAS_VER < 0x0400
	if (0 == g_dwVer4) 
		return GetLicenseKeyObsolete(pwKey, iLen);
#endif // _TRiAS_VER < 0x0400

VERIFYLICENSE VL;

	INITSTRUCT(VL, VERIFYLICENSE);
	VL.iMode = VERIFYMODE_DontShowDialog;
	VL.lLevelOrOption = CKIOPTION_ALK;
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
		return GetLicensedObsolete();
#endif // _TRiAS_VER < 0x0400

	AFX_MANAGE_STATE(AfxGetAppModuleState());
	
VERIFYLICENSE VL;
CString resLicCap;

	VERIFY(resLicCap.LoadString (IDS_LONGCLASSNAME));

	INITSTRUCT(VL, VERIFYLICENSE);
	VL.iMode = VERIFYMODE_LessOrEqual;
	VL.lLevelOrOption = CKIOPTION_ALK;
	VL.pcCaption = resLicCap;
	return DEX_VerifyLicenseOption(VL);
}

BOOL SetLicensed (LPCSTR lpNewKey)		// Lizensierung ist erfolgt
{
#if _TRiAS_VER < 0x0400
	if (0 == g_dwVer4) 
		return SetLicensedObsolete(lpNewKey);
#endif // _TRiAS_VER < 0x0400

CEsnecilExt Lic;

	return Lic.Authorize(lpNewKey);
}

