// $Header: $
// Copyrightę 1998-2002 GEOPunkt GmbH & Co. KG, NL Potsdam, All rights reserved
// Created: 25.02.2002 16:45:45 
//
// This file was generated by the TRiASDB Data Server Wizard V1.02.117 (#HK010502)
//
// THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY 
// KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A PARTICULAR 
// PURPOSE.
//
// @doc
// @module TDBPGISGeoFeatures.h | Declaration of the <c CTDBPGISGeoFeatures> class

#if !defined(_TDBPGISGEOFEATURES_H__F5FF2EDB_0674_4E9B_A7BE_24E8618F3D01__INCLUDED_)
#define _TDBPGISGEOFEATURES_H__F5FF2EDB_0674_4E9B_A7BE_24E8618F3D01__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

// Header include diagnostics
#if defined(_TRIAS_DBG_HEADER_DIAGNOSTICS)
#pragma message(__TIME__": include " __FILE__ )
#endif

#include "resource.h"       // main symbols

/////////////////////////////////////////////////////////////////////////////
// CTDBPGISGeoFeatures
class ATL_NO_VTABLE CTDBPGISGeoFeatures : 
	public CComObjectRootEx<CComObjectThreadModel>,
	public CComCoClass<CTDBPGISGeoFeatures, &CLSID_TRiASSimpleGeoFeatures>,
	public CErrSupport<CTDBPGISGeoFeatures, &IID_ITRiASFeatures>,
	public ITRiASFeaturesCallback
{
public:
	CTDBPGISGeoFeatures()
	{
	}

	_ATLX_DEBUG_OBJECTCOUNT_IMPL(CTDBPGISGeoFeatures)

	DECLARE_REGISTRY_RESOURCEID(IDR_TDBPGISGEOFEATURES_RGS)
	DECLARE_AGGREGATE_EX_SUPPORT();

	BEGIN_COM_MAP(CTDBPGISGeoFeatures)
		COM_INTERFACE_ENTRY(ITRiASFeaturesCallback)
		COM_INTERFACE_ENTRY(ISupportErrorInfo)

	// durch aggregiertes Objekt implementierte Interfaces
		COM_INTERFACE_ENTRY_AGGREGATE_EX(IID_ITRiASFeatures, m_BaseUnk.p)
		COM_INTERFACE_ENTRY_AGGREGATE_EX(IID_ITRiASBase, m_BaseUnk.p)
		COM_INTERFACE_ENTRY_AGGREGATE_EX(IID_IDispatch, m_BaseUnk.p)
		COM_INTERFACE_ENTRY_AGGREGATE_BLIND(m_BaseUnk.p)		// alles andere nicht gesondert behandeln
	END_COM_MAP()

	DECLARE_GET_CONTROLLING_UNKNOWN()
	DECLARE_PROTECT_FINAL_CONSTRUCT()
	HRESULT FinalConstruct()
	{
		RETURN_FAILED_HRESULT(m_BaseUnk.CreateInstance (CLSID_TRiASFeatures, CLSCTX_ALL, GetControllingUnknown()));

	WTRiASFeatures BaseObjs;

		RETURN_FAILED_HRESULT(m_BaseUnk -> QueryInterface(BaseObjs.ppi()));
		return BaseObjs -> putref_FeaturesCallback(this);
	}
	void FinalRelease (void)
	{
		m_BaseUnk.Assign(NULL);
	}

// ISupportsErrorInfo
	STDMETHOD(InterfaceSupportsErrorInfo)(REFIID riid);

// ITRiASFeaturesCallback
public:
	STDMETHOD(get_DefaultType)(BSTR *pbstrType);
	STDMETHOD(SetupFeatures)(IDispatch *pIObjs, SETUPFEATURESMODE rgMode);
	STDMETHOD(OnCreate)(VARIANT NameOrHandle, BSTR Type, FEATURETYPE rgType, ITRiASFeature **ppIFeat);
	STDMETHOD(OnDelete)(VARIANT vWhich);
	STDMETHOD(OnChanging)(CHANGEDFEATURES rgWhat, VARIANT vNewValue, VARIANT_BOOL *pDisAllow);
	STDMETHOD(OnChanged)(CHANGEDFEATURES rgWhat, VARIANT vOldValue);
	STDMETHOD(OnFinalRelease)();

private:
	WUnknown m_BaseUnk;				// aggregiertes Objekt (TRiASFeatures)
};

#endif // !defined(_TDBPGISGEOFEATURES_H__F5FF2EDB_0674_4E9B_A7BE_24E8618F3D01__INCLUDED_)
