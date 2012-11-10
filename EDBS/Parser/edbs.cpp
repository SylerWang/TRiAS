// edbs.cpp : Implementierung der DLL-Exporte.


// Hinweis: Proxy/Stub-Information
//      Zur Aufnahme des Proxy/Stub-Codes in die Objekt-DLL f�gen Sie die Datei 
//      dlldatax.c dem Projekt hinzu.  Stellen Sie sicher, dass vorcompilierte Header 
//      f�r diese Datei deaktiviert sind und f�gen Sie _MERGE_PROXYSTUB zu 
//      den Projektdefinitionen hinzu.  
//
//      Wenn Sie WinNT4.0 oder Win95 nicht mit DCOM ausf�hren,
//      m�ssen Sie die folgende define-Anweisung aus dlldatax.c entfernen.
//      #define _WIN32_WINNT 0x0400
//
//      Wenn Sie dar�ber hinaus MIDL ohne den Schalter /Oicf ausf�hren, 
//      m�ssen Sie auch die folgende define-Anweisung aus dlldatax.c entfernen.
//      #define USE_STUBLESS_PROXY
//
//      �ndern Sie die benutzerspezifische Build-Regel f�r edbs.idl durch Hinzuf�gen 
//      folgender Dateien.
//          edbs_p.c
//          dlldata.c
//      Um eine eigene Proxy/Stub-DLL zu erstellen, 
//      f�hren Sie nmake -f edbsps.mk im Projektverzeichnis aus.

#include "stdafx.h"
#include "resource.h"
#include <initguid.h>
#include "edbs.h"
#include "dlldatax.h"

#include "edbs_i.c"
#include "parser.h"
#include "EDBS_Objekt.h"
#include "EDBS_Objekte.h"
#include "EDBS_Linie.h"
#include "EDBS_Linien.h"
#include "EDBS_Fachparameter.h"
#include "EDBS_FachparameterDerLinie.h"
#include "EDBS_BesondereInformationen.h"
#include "EDBS_BesondereInformation.h"
#include "EDBS_ObjekteENUM.h"
#include "EDBS_LinienENUM.h"
#include "EDBS_Geometrie.h"
#include "EDBS_BesondereInformationenENUM.h"
#include "EDBS_FachparameterENUM.h"

#ifdef _MERGE_PROXYSTUB
extern "C" HINSTANCE hProxyDll;
#endif

CComModule _Module;

BEGIN_OBJECT_MAP(ObjectMap)
OBJECT_ENTRY(CLSID_parser, Cparser)
OBJECT_ENTRY(CLSID_EDBS_Objekt, CEDBS_Objekt)
OBJECT_ENTRY(CLSID_EDBS_Objekte, CEDBS_Objekte)
OBJECT_ENTRY(CLSID_EDBS_Linie, CEDBS_Linie)
OBJECT_ENTRY(CLSID_EDBS_Linien, CEDBS_Linien)
OBJECT_ENTRY(CLSID_EDBS_Fachparameter, CEDBS_Fachparameter)
OBJECT_ENTRY(CLSID_EDBS_FachparameterDerLinie, CEDBS_FachparameterDerLinie)
OBJECT_ENTRY(CLSID_EDBS_BesondereInformationen, CEDBS_BesondereInformationen)
OBJECT_ENTRY(CLSID_EDBS_BesondereInformation, CEDBS_BesondereInformation)
OBJECT_ENTRY(CLSID_EDBS_ObjekteENUM, CEDBS_ObjekteENUM)
OBJECT_ENTRY(CLSID_EDBS_LinienENUM, CEDBS_LinienENUM)
OBJECT_ENTRY(CLSID_EDBS_Geometrie, CEDBS_Geometrie)
OBJECT_ENTRY(CLSID_EDBS_BesondereInformationenENUM, CEDBS_BesondereInformationenENUM)
OBJECT_ENTRY(CLSID_EDBS_FachparameterENUM, CEDBS_FachparameterENUM)
END_OBJECT_MAP()

class CEdbsApp : public CWinApp
{
public:

// �berladungen
	// �berladungen f�r vom Klassen-Assistenten generierte virtuelle Funktionen
	//{{AFX_VIRTUAL(CEdbsApp)
	public:
    virtual BOOL InitInstance();
    virtual int ExitInstance();
	//}}AFX_VIRTUAL

	//{{AFX_MSG(CEdbsApp)
		// HINWEIS - der Klassen-Assistent f�gt hier Member-Funktionen hinzu oder l�scht sie.
		//    BEARBEITEN SIE NICHT, was Sie in diesen generierten Code-Bl�cken sehen !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

BEGIN_MESSAGE_MAP(CEdbsApp, CWinApp)
	//{{AFX_MSG_MAP(CEdbsApp)
		// HINWEIS - der Klassen-Assistent f�gt hier Umsetzungsmakros hinzu oder l�scht sie.
		//    BEARBEITEN SIE NICHT, was Sie in diesen generierten Code-Bl�cken sehen !
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

CEdbsApp theApp;

BOOL CEdbsApp::InitInstance()
{
#ifdef _MERGE_PROXYSTUB
    hProxyDll = m_hInstance;
#endif
    _Module.Init(ObjectMap, m_hInstance, &LIBID_TRiAS_EDBS);
    return CWinApp::InitInstance();
}

int CEdbsApp::ExitInstance()
{
    _Module.Term();
    return CWinApp::ExitInstance();
}

/////////////////////////////////////////////////////////////////////////////
// Verwendet, um zu entscheiden, ob die DLL von OLE aus dem Speicher entfernt werden kann

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
// Liefert eine Klassenfabrik zur�ck, um ein Objekt des angeforderten Typs anzulegen

STDAPI DllGetClassObject(REFCLSID rclsid, REFIID riid, LPVOID* ppv)
{
#ifdef _MERGE_PROXYSTUB
    if (PrxDllGetClassObject(rclsid, riid, ppv) == S_OK)
        return S_OK;
#endif
    return _Module.GetClassObject(rclsid, riid, ppv);
}

/////////////////////////////////////////////////////////////////////////////
// DllRegisterServer - F�gt der Systemregistrierung Eintr�ge hinzu

STDAPI DllRegisterServer(void)
{
#ifdef _MERGE_PROXYSTUB
    HRESULT hRes = PrxDllRegisterServer();
    if (FAILED(hRes))
        return hRes;
#endif
    // Registriert Objekt, Typelib und alle Schnittstellen in Typelib
    return _Module.RegisterServer(TRUE);
}

/////////////////////////////////////////////////////////////////////////////
// DllUnregisterServer - Entfernt Eintr�ge aus der Systemregistrierung

STDAPI DllUnregisterServer(void)
{
#ifdef _MERGE_PROXYSTUB
    PrxDllUnregisterServer();
#endif
    return _Module.UnregisterServer(TRUE);
}


