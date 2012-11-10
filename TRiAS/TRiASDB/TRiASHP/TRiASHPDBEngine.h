// $Header: $
// Copyright� 1998-2000 TRiAS GmbH Potsdam, All rights reserved
// Created: 10.05.2000 19:36:40
//
// This file was generated by the TRiASDB Data Server Wizard V1.02.086 (#HK000510)
//
// @doc 
// @module TRiASHPEngine.h | Databaseengine f�r TRiASDB Data Server TRiASHP

#if !defined(_TRIASHPDBENGINE_H__BA7D16B6_0AA7_410C_9E52_3555F1273794__INCLUDED_)
#define _TRIASHPDBENGINE_H__BA7D16B6_0AA7_410C_9E52_3555F1273794__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

// Header include diagnostics
#if defined(_TRIAS_DBG_HEADER_DIAGNOSTICS)
#pragma message(__TIME__": include " __FILE__ )
#endif

#include <Atl/ClassFactorySingletonLic.h>
#include "resource.h"       // main symbols

///////////////////////////////////////////////////////////////////////////////
// Lizensierung
#if defined(_DEBUG)
extern bool g_fGlobalLic;
#else
#define g_fGlobalLic false
#endif // defined(_DEBUG)

BOOL GetLicenseKey (LPWSTR pwKey, size_t iLen);
BOOL GetLicensed (void);
BOOL SetLicensed (LPCSTR lpNewKey);

class CVerifyLicense 
{
protected:
	static BOOL VerifyLicenseKey(BSTR bstr)
	{
	CComBSTR strKey;

		USES_CONVERSION;
		if ((GetLicenseKey(0, &strKey) && 0 == wcscmp (strKey, bstr)) || ::SetLicensed (OLE2A(bstr))) 
		{
			return TRUE;
		}
		return FALSE;
	}

	static BOOL GetLicenseKey (DWORD, BSTR *pBstr)
	{
	CComBSTR bstrKey (_MAX_PATH, (LPCOLESTR)NULL);

		if (!::GetLicenseKey (bstrKey.m_str, _MAX_PATH))
			return FALSE;
			
		*pBstr = bstrKey.Detach(); 
		return TRUE;
	}

	static BOOL IsLicenseValid()
	{
		return g_fGlobalLic || ::GetLicensed(); 
	}
};


/////////////////////////////////////////////////////////////////////////////
// SmartIF's
DefineSmartInterface(TRiASCSStorageService);

/////////////////////////////////////////////////////////////////////////////
// CTRiASHPDBEngine
class ATL_NO_VTABLE CTRiASHPDBEngine : 
	public CComObjectRootEx<CComObjectThreadModel>,
	public CErrSupport<CTRiASHPDBEngine, &IID_ITRiASDBEngine>,
	public CComCoClass<CTRiASHPDBEngine, &CLSID_TRiASHPDBEngine>,
	public IDispatchImpl<ITRiASDBEngine, &IID_ITRiASDBEngine, &LIBID_TRiASDB,
		TYPELIB_TRiASDB_VERSION_MAJOR, TYPELIB_TRiASDB_VERSION_MINOR>
{
public:
	CTRiASHPDBEngine()
		: m_fIsStarted(false),
		  m_bstrUserName(g_cbNil), m_bstrPassword(g_cbNil)
	{
	}

	_ATLX_DEBUG_OBJECTCOUNT_IMPL(CTRiASHPDBEngine)

	DECLARE_REGISTRY_RESOURCEID(IDR_TRIASHPDBENGINE_RGS)
	DECLARE_PROTECT_FINAL_CONSTRUCT()
	DECLARE_CLASSFACTORY_SINGLETON2(CTRiASHPDBEngine, CVerifyLicense)	// DBEngines existieren nur einmal (mit Lizensierung)

	BEGIN_COM_MAP(CTRiASHPDBEngine)
		COM_INTERFACE_ENTRY(ITRiASDBEngine)
		COM_INTERFACE_ENTRY(ISupportErrorInfo)
		COM_INTERFACE_ENTRY(IDispatch)
		COM_INTERFACE_ENTRY_THIS()
	END_COM_MAP()

	HRESULT FinalConstruct();
	void FinalRelease();

// ISupportsErrorInfo
	STDMETHOD(InterfaceSupportsErrorInfo)(REFIID riid);

// ITRiASDBEngine
public:
	STDMETHOD(get_Version)(BSTR *pVal);
	STDMETHOD(put_Password)(BSTR bstrPwd);
	STDMETHOD(put_UserName)(BSTR bstrUser);
	STDMETHOD(get_Description)(BSTR *pVal);

	STDMETHOD(Start)(STARTMODE Mode);
	STDMETHOD(EnumDataBaseTypes)(IUnknown **ppIEnum);
	STDMETHOD(Stop)();

public:
// Konvertieren Blob <--> _DGMGeometry
	HRESULT StorageToGeometry (const VARIANT &Blob, GEOMETRYTYPE *prgType, IDispatch **ppIGeometry) throw(_com_error &)
	{
		_ASSERTE(m_Service.IsValid());
		return m_Service -> StorageToGeometry (Blob, prgType, ppIGeometry);
	}
	HRESULT GeometryToStorage (GEOMETRYTYPE rgType, IDispatch *pIGeometry, VARIANT *pBlob) throw(_com_error &)
	{
		_ASSERTE(m_Service.IsValid());
		return m_Service -> GeometryToStorage (rgType, pIGeometry, pBlob);
	}

private:
	bool m_fIsStarted;			// Engine wurde gestartet
	CComBSTR m_bstrUserName;	// Nutzername (optional)
	CComBSTR m_bstrPassword;	// Pa�word (optional)

	WTRiASCSStorageService m_Service;	// Service f�r Geometrieoperationen
};

/////////////////////////////////////////////////////////////////////////////
// globale Instanz der DBEngine
extern CTRiASHPDBEngine *g_pDBEngine;
extern STARTMODE g_rgStartMode;

#endif // !defined(_TRIASHPDBENGINE_H__BA7D16B6_0AA7_410C_9E52_3555F1273794__INCLUDED_)