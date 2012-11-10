// $Header: $
// Copyrightę 1998-$$year$$ $$company$$, All rights reserved
// Created: $$date_n_time$$ 
//
// This file was generated by the TRiASDB Data Server Wizard $$this_version$$
//
$$IF(EMIT_WARRANTIES)
// THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY 
// KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A PARTICULAR 
// PURPOSE.
//
$$ENDIF // EMIT_WARRANTIES
// @doc
// @module $$root$$Objects.h | Declaration of the <c C$$safe_root$$Objects> class

#if !defined(_$$SAFE_ROOT$$OBJECTS_H__$$GUID_OBJECTS_H$$__INCLUDED_)
#define _$$SAFE_ROOT$$OBJECTS_H__$$GUID_OBJECTS_H$$__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

// Header include diagnostics
#if defined(_TRIAS_DBG_HEADER_DIAGNOSTICS)
#pragma message(__TIME__": include " __FILE__ )
#endif

#include "resource.h"       // main symbols

/////////////////////////////////////////////////////////////////////////////
// C$$safe_root$$Objects

class ATL_NO_VTABLE C$$safe_root$$Objects : 
	public CComObjectRootEx<CComObjectThreadModel>,
	public CComCoClass<C$$safe_root$$Objects, &CLSID_$$safe_root$$Objects>,
	public CErrSupport<C$$safe_root$$Objects, &IID_ITRiASObjects>,
$$IF(EMIT_PERSISTSTREAM_OBJECTS)
	public IPersistStreamInit,
$$ENDIF //IF(EMIT_PERSISTSTREAM_OBJECTS)
	public ITRiASObjectsCallback
{
public:
	C$$safe_root$$Objects()
		: m_fIsInitialized(false), m_fIsDirty(false), 
		  m_fHasFeatures(false), m_fHasGeoFeatures(false),
		  m_rgInitState(INITSTATE_NotInitialized)
	{
	}

$$IF(EMIT_OBJECTCOUNT_DEBUG)
	_ATLX_DEBUG_OBJECTCOUNT_IMPL(C$$safe_root$$Objects)
$$ENDIF // IF(EMIT_OBJECTCOUNT_DEBUG)

	DECLARE_REGISTRY_RESOURCEID(IDR_$$SAFE_ROOT$$OBJECTS_RGS)
	DECLARE_AGGREGATE_EX_SUPPORT();

	BEGIN_COM_MAP(C$$safe_root$$Objects)
		COM_INTERFACE_ENTRY(ITRiASObjectsCallback)
		COM_INTERFACE_ENTRY(ISupportErrorInfo)
$$IF(EMIT_PERSISTSTREAM_OBJECTS)
		COM_INTERFACE_ENTRY(IPersistStreamInit)
		COM_INTERFACE_ENTRY2(IPersistStream, IPersistStreamInit)
		COM_INTERFACE_ENTRY(IPersist)
$$ENDIF // IF(EMIT_PERSISTSTREAM_OBJECTS)

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

$$IF(EMIT_PERSISTSTREAM_OBJECTS)
// IPersist
	STDMETHOD(GetClassID)(CLSID *pClassID);

// IPersistStream
	STDMETHOD(IsDirty)();
	STDMETHOD(Load)(LPSTREAM pStm);
	STDMETHOD(Save)(LPSTREAM pStm, BOOL fClearDirty);
	STDMETHOD(GetSizeMax)(ULARGE_INTEGER *pcbSize);

// IPersistStreamInit
	STDMETHOD(InitNew)();

$$ENDIF // IF(EMIT_PERSISTSTREAM_OBJECTS)
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

$$IF(READ_WRITE)
#if defined(_READWRITE)
// irgend etwas wurde modifiziert
	HRESULT OnChangedName(VARIANT vOldValue);
	HRESULT OnChangedDescription(VARIANT vOldValue);
	HRESULT OnChangedOKS(VARIANT vOldValue);
	HRESULT OnChangedHandle(VARIANT vOldValue);
	HRESULT OnChangedTypes(VARIANT vOldValue);
	HRESULT OnChangedROMode(VARIANT vOldValue);
#endif // defined(_READWRITE)

$$ENDIF
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
$$IF(EMIT_PERSISTSTREAM_OBJECTS)

///////////////////////////////////////////////////////////////////////////////
// Versionen des PersistStream-Formates
const long $$SAFE_ROOT$$OBJECTS_SIGNATURE = 0x53424F54L;	// "TOBS"
const long $$SAFE_ROOT$$OBJECTS_VERSION_MINOR_MASK = 0xff;
const long $$SAFE_ROOT$$OBJECTS_VERSION = 0x0100L;
const long LASTKNOWN_$$SAFE_ROOT$$OBJECTS_VERSION = $$SAFE_ROOT$$OBJECTS_VERSION;
$$ENDIF // IF(EMIT_PERSISTSTREAM_OBJECTS)

#endif // !defined(_$$SAFE_ROOT$$OBJECTS_H__$$GUID_OBJECTS_H$$__INCLUDED_)
