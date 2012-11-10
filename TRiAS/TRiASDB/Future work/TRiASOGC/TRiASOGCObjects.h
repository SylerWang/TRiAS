// $Header: $
// Copyrightę 1998-2001 TRiAS GmbH Potsdam, All rights reserved
// Created: 27.04.2001 16:50:09 
//
// This file was generated by the TRiASDB Data Server Wizard V1.02.115 (#HK010427)
//
// THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY 
// KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A PARTICULAR 
// PURPOSE.
//
// @doc
// @module TRiASOGCObjects.h | Declaration of the <c CTRiASOGCObjects> class

#if !defined(_TRIASOGCOBJECTS_H__F247ACC7_DC17_4B75_B645_37691502FB12__INCLUDED_)
#define _TRIASOGCOBJECTS_H__F247ACC7_DC17_4B75_B645_37691502FB12__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

// Header include diagnostics
#if defined(_TRIAS_DBG_HEADER_DIAGNOSTICS)
#pragma message(__TIME__": include " __FILE__ )
#endif

#include "resource.h"       // main symbols

/////////////////////////////////////////////////////////////////////////////
// CTRiASOGCObjects

class ATL_NO_VTABLE CTRiASOGCObjects : 
	public CComObjectRootEx<CComObjectThreadModel>,
	public CComCoClass<CTRiASOGCObjects, &CLSID_TRiASOGCObjects>,
	public CErrSupport<CTRiASOGCObjects, &IID_ITRiASObjects>,
	public ITRiASObjectsCallback
{
public:
	CTRiASOGCObjects()
		: m_fIsInitialized(false), m_fIsDirty(false), 
		  m_fHasFeatures(false), m_fHasGeoFeatures(false),
		  m_rgInitState(INITSTATE_NotInitialized)
	{
	}

	_ATLX_DEBUG_OBJECTCOUNT_IMPL(CTRiASOGCObjects)

	DECLARE_REGISTRY_RESOURCEID(IDR_TRIASOGCOBJECTS_RGS)
	DECLARE_AGGREGATE_EX_SUPPORT();

	BEGIN_COM_MAP(CTRiASOGCObjects)
		COM_INTERFACE_ENTRY(ITRiASObjectsCallback)
		COM_INTERFACE_ENTRY(ISupportErrorInfo)

	// Interfaces, die durch das aggregierte Objekt implementiert werden
		COM_INTERFACE_ENTRY_AGGREGATE_EX(IID_ITRiASObjects, m_BaseUnk.p)
		COM_INTERFACE_ENTRY_AGGREGATE_EX(IID_ITRiASBase, m_BaseUnk.p)
		COM_INTERFACE_ENTRY_AGGREGATE_EX(IID_IDispatch, m_BaseUnk.p)
		COM_INTERFACE_ENTRY_AGGREGATE_EX(IID_IConnectionPointContainer, m_BaseUnk.p)
		COM_INTERFACE_ENTRY_AGGREGATE_BLIND(m_BaseUnk.p)		// alles andere nicht gesondert behandeln
	END_COM_MAP()

	DECLARE_GET_CONTROLLING_UNKNOWN()
	DECLARE_PROTECT_FINAL_CONSTRUCT()
	HRESULT FinalConstruct()
	{
		RETURN_FAILED_HRESULT(m_BaseUnk.CreateInstance (CLSID_TRiASObjects, CLSCTX_ALL, GetControllingUnknown()));

	WTRiASObjects BaseObjs;

		RETURN_FAILED_HRESULT(m_BaseUnk -> QueryInterface(BaseObjs.ppi()));
		return BaseObjs -> putref_ObjectsCallback(this);
	}
	void FinalRelease (void)
	{
		m_BaseUnk.Assign(NULL);
	}

// ISupportsErrorInfo
	STDMETHOD(InterfaceSupportsErrorInfo)(REFIID riid);

// ITRiASObjectsCallback
public:
	STDMETHOD(get_DefaultType)(/*[out, retval]*/ BSTR *pbstrType);
	STDMETHOD(SetupFeatures)(/*[in,optional,defaultvalue]*/ SETUPFEATURESMODE rgMode);
	STDMETHOD(SetupObjects)(/*[in]*/ SETUPOBJECTSMODE rgMode);
	STDMETHOD(OnDelete)(/*[in]*/ INT_PTR hObj);
	STDMETHOD(OnChanging)(/*[in]*/ CHANGEDOBJECTS rgWhat, /*[in]*/ VARIANT vNewValue, /*[out, retval]*/ VARIANT_BOOL *pDisAllow);
	STDMETHOD(OnChanged)(/*[in]*/ CHANGEDOBJECTS rgWhat, /*[in]*/ VARIANT vOldValue);
	STDMETHOD(OnCreate)(/*[in]*/ BSTR Name, /*[in]*/ BSTR Type, /*[in]*/ OBJECTTYPE rgType, /*[out, retval]*/ ITRiASObject **ppIObj);
	STDMETHOD(OnAdd)(/*[in]*/ ITRiASObject *pIObj, /*[in]*/ CLASSIFYMODE rgMode);
	STDMETHOD(OnRemove)(/*[in]*/ ITRiASObject *pIObj);
	STDMETHOD(MapFeatureHandle)(/*[in]*/ VARIANT vNameOrHandle, /*[out,retval]*/ VARIANT *pvNewNameOrHandle);
	STDMETHOD(OnFinalRelease)();

protected:
// Initialisierungsfunktionen
	HRESULT EnsureObjectsLoaded();
	HRESULT EnsureObjectsCount();

#if defined(_READWRITE)
// irgend etwas wurde modifiziert
	HRESULT OnChangedName(VARIANT vOldValue);
	HRESULT OnChangedDescription(VARIANT vOldValue);
	HRESULT OnChangedOKS(VARIANT vOldValue);
	HRESULT OnChangedHandle(VARIANT vOldValue);
	HRESULT OnChangedTypes(VARIANT vOldValue);
	HRESULT OnChangedROMode(VARIANT vOldValue);
#endif // defined(_READWRITE)

private:
	bool m_fIsDirty;
	bool m_fIsInitialized;
	bool m_fHasFeatures;
	bool m_fHasGeoFeatures;

	enum INITSTATE {				// Initialisierungszustand dieses Objektes
		INITSTATE_NotInitialized = 0x00,
		INITSTATE_CountsInitialized = 0x01,
		INITSTATE_ObjectsInitialized = 0x02,
	};
	INITSTATE m_rgInitState;

	WUnknown m_BaseUnk;				// aggregiertes Objekt (TRiASObjects)
};

#endif // !defined(_TRIASOGCOBJECTS_H__F247ACC7_DC17_4B75_B645_37691502FB12__INCLUDED_)
