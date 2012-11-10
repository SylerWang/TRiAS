// $Header: $
// Copyright� 1999 TRiAS GmbH Potsdam, All rights reserved
// Created: 13.09.99 11:41:57
//
// @doc
// @module TDBGeoApp.h | Declaration of the <c CTDBGeoApp> class

#if !defined(_TDBGEOAPP_H__832E4D40_E5FB_4B3F_994F_B8F796B5B4A3__INCLUDED_)
#define _TDBGEOAPP_H__832E4D40_E5FB_4B3F_994F_B8F796B5B4A3__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

// Header include diagnostics
#if defined(_TRIAS_DBG_HEADER_DIAGNOSTICS)
#pragma message(__TIME__": include " __FILE__ )
#endif

#include <WinVersion.h>

///////////////////////////////////////////////////////////////////////////////
//
const DWORD REG_USE_PROXYSTUB = 0x01;		// use ProxyStub
const DWORD REG_USE_PERFCOUNTERS = 0x02;	// use PerfCounters

///////////////////////////////////////////////////////////////////////////////
// Name der PerfMon.dll
#if defined(_USE_PERFMON_COUNTERS)
#if defined(_USE_DYNAMIC_PERFMON_COUNTERS)
// counter dll dynamisch binden
#if defined(_DEBUG)
const TCHAR g_cbPerfMonDll[] = _T("PERFMOND.DLL");
#else
const TCHAR g_cbPerfMonDll[] = _T("PERFMON.DLL");
#endif // _DEBUG

#else
// counter dll statisch binden
#if defined(_DEBUG)
#pragma comment(lib, "perfmond.lib")
#else
#pragma comment(lib, "perfmon.lib")
#endif // _DEBUG

#endif // defined(_USE_DYNAMIC_PERFMON_COUNTERS)
#endif // defined(_USE_PERFMON_COUNTERS)

///////////////////////////////////////////////////////////////////////////////
// Application Objekt f�r diese DLL
class CTDBGeoApp :
	public CWinApp
{
public:
	CTDBGeoApp()
#if defined(_USE_PERFMON_COUNTERS)
		: m_fCountersInstalled(false)
#if defined(_USE_DYNAMIC_PERFMON_COUNTERS)
		, m_PerfMon(g_cbPerfMonDll)
#endif // defined(_USE_DYNAMIC_PERFMON_COUNTERS)
#endif // defined(_USE_PERFMON_COUNTERS)
	{
	}

	virtual BOOL InitInstance();
	virtual int ExitInstance();

	bool IsWin31 (void) { return m_Version.IsWin31(); }
	bool IsWin40 (void) { return m_Version.IsWin40(); }
	bool IsWin41 (void) { return m_Version.IsWin41(); }
	bool IsWin50 (void) { return m_Version.IsWin50(); }
	bool IsWin32s (void) { return m_Version.IsWin32s(); }
	bool IsWinNT (void) { return m_Version.IsWinNT(); }

	BOOL StartPerfCounters();
	BOOL StopPerfCounters();
	HRESULT RegisterPerfCounters();
	HRESULT UnRegisterPerfCounters();

private:
	CWinVersion m_Version;

#if defined(_USE_PERFMON_COUNTERS)
#if defined(_USE_DYNAMIC_PERFMON_COUNTERS)
///////////////////////////////////////////////////////////////////////////////
// dynamisches binden einer DLL
	typedef HRESULT (* GETPERFMONCTXPROC)(LPCOLESTR pcoleContext , PerfMon::IPerfContext * * ppICtx);

	class CDllBind
	{
	private:
		HMODULE m_hLib;		// Handle der gebundenen DLL

	public:
		// Konstruktor
		CDllBind (const char * pcDLLName)
		{
		// WindowsFehlerMeldung unterdr�cken
		unsigned int oldErrMode = SetErrorMode (SEM_NOOPENFILEERRORBOX);

		// #HK990620 work around WinNT4 LoadProcess bug
		char szModuleShort[_MAX_PATH];
		int cbShortName = GetShortPathName (pcDLLName , szModuleShort , _MAX_PATH);
		LPCSTR pcModule = NULL;

			if (_MAX_PATH != cbShortName)
			{
				pcModule = (cbShortName == 0 || cbShortName == ERROR_INVALID_PARAMETER) ? pcDLLName : szModuleShort;
				m_hLib = LoadLibrary (pcModule);
			}

		// vorherigen Zustand wieder einstellen
			SetErrorMode (oldErrMode);
		}

	// Memberfunktion
		HMODULE hLib (void) const { return m_hLib; }
		FARPROC GetProcAddress (const char * pcFcnName)
		{
			if (NULL != m_hLib)
				return ::GetProcAddress (m_hLib , pcFcnName);
			return NULL;
		}

		// Destruktor
		~CDllBind (void)
		{
			if (NULL != m_hLib)
			{
				FreeLibrary(m_hLib);
				m_hLib = NULL;
			}
		}
	};
	CDllBind m_PerfMon;
#endif // defined(_USE_DYNAMIC_PERFMON_COUNTERS)

	bool m_fCountersInstalled;
#endif // defined(_USE_PERFMON_COUNTERS)
};

extern CTDBGeoApp theApp;

#endif // !defined(_TDBGEOAPP_H__832E4D40_E5FB_4B3F_994F_B8F796B5B4A3__INCLUDED_)
