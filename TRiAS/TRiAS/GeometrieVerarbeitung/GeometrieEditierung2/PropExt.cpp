// PropertySheet, welcher zus�tzliche Pages �ber die Registry l�dt ------------
// File: PropExt.cpp
// H. Kaiser

#include "GeoEditP.h"

#include "PropExt.h"

#if _MSC_VER >= 1100
#include <new>
using std::bad_alloc;
#endif // _MSC_VER >= 1100


///////////////////////////////////////////////////////////////////////////////
// Konstruktor/Destruktor etc.
CEditObjectSheet::CEditObjectSheet (
		LPCSTR pszCaption, Window *pParentWnd, DWORD dwStyle, UINT iSelectPage)
	: CPropertySheet (pszCaption, pParentWnd, dwStyle, iSelectPage) 
{ 
	m_pPages = NULL;
}

CEditObjectSheet::~CEditObjectSheet (void)
{
	DELETE_OBJ(m_pPages);
	::CoFreeUnusedLibraries();			// DLL's wieder freigeben
}

///////////////////////////////////////////////////////////////////////////////
// alle registrierten Pages hinzuf�gen 
HRESULT CEditObjectSheet::LoadExtPagesFromRegistry (
		HKEY hKeyRoot, LPCSTR pcKey, LPCSTR pcSubKey, 
		ULONG ulCount, IUnknown **ppIUnk, LPDATAOBJECT pIDO)
{
// Key zusammenbauen
string strKey = string(pcKey) + TEXT("\\") + pcSubKey;

// Registrierte Pages enumerieren
HKEY hKey = NULL;
DWORD i = 0;
char pcEnumKey[_MAX_PATH];
DWORD retCode = RegOpenKey (hKeyRoot, strKey.c_str(), &hKey);

	if (retCode != ERROR_SUCCESS) return E_FAIL;

// alle registrierten EIntr�ge durchgehen
	while (RegEnumKey (hKey, i, pcEnumKey, _MAX_PATH) == ERROR_SUCCESS) {
		LoadExtPageFromRegistry (hKey, pcEnumKey, pcSubKey, ulCount, ppIUnk, pIDO);
		i++;
	}

// Schl�ssel wieder abschlie�en
	RegCloseKey (hKey);   // Close the key handle.

// keine Subschl�ssel vorhanden und noch nicht an der Application nachgesehen
	if (0 == i && string(pcKey) != g_cbApplication) 
		return LoadExtPagesFromRegistry (HKEY_CLASSES_ROOT, g_cbApplication, pcSubKey, ulCount, ppIUnk, pIDO);

	return S_OK;
}

///////////////////////////////////////////////////////////////////////////////
// Einen Key abarbeiten 
HRESULT CEditObjectSheet::LoadExtPageFromRegistry (
	HKEY hKey, LPCSTR pcKey, LPCSTR pcSubKey, 
	ULONG ulCount, IUnknown **ppIUnk, LPDATAOBJECT pIDO)
{
// ClassID aus Registry besorgen
	USES_CONVERSION;

CLSID clsID;

	if (FAILED(CLSIDFromProgID (A2OLE(pcKey), &clsID))) {
	// evtl. Zusammenfassung von SubKeys: �ber TRiAS.Application.2 versuchen
	string strKey = string(pcSubKey) + TEXT("\\") + pcKey;

		return LoadExtPagesFromRegistry (HKEY_CLASSES_ROOT, g_cbApplication, strKey.c_str(), ulCount, ppIUnk, pIDO);
	}

	try {
	// Objekt instantiieren
	WTriasExtInit IPSExtInit (clsID);			// throws_com_error

	// Objekt initialisieren
		THROW_FAILED_HRESULT(IPSExtInit -> Initialize (NULL, pIDO, hKey));

		try {
		WTriasExtInit2 IPSExtInit2 (IPSExtInit);			// throws_com_error

			THROW_FAILED_HRESULT(IPSExtInit2 -> SetObjects (ulCount, ppIUnk));
		
		} catch (_com_error&/* hr*/) {
			/* no error*/;
		}

	// Pages hinzuf�gen
	WTriasPropSheetExt IPSExt = IPSExtInit;		// (-> QueryInterface)

		THROW_FAILED_HRESULT(IPSExt -> AddPages (AddPropSheetPageProc, (LPARAM)this));

	// Objekt in unserem Container festhalten, damit selbige geladen bleiben
		if (NULL == m_pPages) {
			m_pPages = new CPageList;
			if (NULL == m_pPages) _com_issue_error(E_OUTOFMEMORY);
		}
		m_pPages -> push_back(IPSExt);	

	} catch (_com_error& hr) {
		return _COM_ERROR(hr);
	} catch (bad_alloc) {
		return E_OUTOFMEMORY;
	}

	return S_OK;
}

///////////////////////////////////////////////////////////////////////////////
// Funktion, die von au�en gerufen wird, um Page hinzuzuf�gen 
BOOL CALLBACK AddPropSheetPageProc (HPROPSHEETPAGE hPage, LPARAM lParam)
{
UINT uiPage = ((CPropertySheet *)lParam) -> AddPage (hPage);

	return uiPage < UINT_MAX;
}
