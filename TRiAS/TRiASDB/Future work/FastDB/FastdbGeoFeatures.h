// $Header: $
// Copyrightę 1998-2000 TRiAS GmbH Potsdam, All rights reserved
// Created: 25.02.2000 11:15:18 
//
// This file was generated by the TRiASDB Data Server Wizard V1.01.076 (#HK000225)
//
// @doc
// @module FastdbGeoFeatures.h | Declaration of the <c CFastdbGeoFeatures> class

#if !defined(_FASTDBGEOFEATURES_H__E8E0A6A2_F26C_46C4_AAEC_175D565BECA3__INCLUDED_)
#define _FASTDBGEOFEATURES_H__E8E0A6A2_F26C_46C4_AAEC_175D565BECA3__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

// Header include diagnostics
#if defined(_TRIAS_DBG_HEADER_DIAGNOSTICS)
#pragma message(__TIME__": include " __FILE__ )
#endif

#include "resource.h"       // main symbols

/////////////////////////////////////////////////////////////////////////////
// SmartIF's
DefineSmartInterface(TRiASFeatures);

/////////////////////////////////////////////////////////////////////////////
// CFastdbGeoFeatures
class ATL_NO_VTABLE CFastdbGeoFeatures : 
	public CComObjectRootEx<CComObjectThreadModel>,
	public CComCoClass<CFastdbGeoFeatures, &CLSID_TRiASSimpleGeoFeatures>,
	public CErrSupport<CFastdbGeoFeatures, &IID_ITRiASFeatures>,
	public ITRiASFeaturesCallback
{
public:
	CFastdbGeoFeatures()
	{
	}

	DECLARE_REGISTRY_RESOURCEID(IDR_FASTDBGEOFEATURES_RGS)
	DECLARE_AGGREGATE_EX_SUPPORT();

	BEGIN_COM_MAP(CFastdbGeoFeatures)
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

#endif // !defined(_FASTDBGEOFEATURES_H__E8E0A6A2_F26C_46C4_AAEC_175D565BECA3__INCLUDED_)
