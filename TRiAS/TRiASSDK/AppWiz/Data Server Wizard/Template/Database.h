// $Header: $
// Copyright� 1998-$$year$$ $$company$$, All rights reserved
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
// @module $$root$$Database.h | Datenbankobjekt TRiASDB Data Server $$root$$

#if !defined(_$$SAFE_ROOT$$DATABASE_H__$$GUID_DATABASE_H$$__INCLUDED_)
#define _$$SAFE_ROOT$$DATABASE_H__$$GUID_DATABASE_H$$__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

// Header include diagnostics
#if defined(_TRIAS_DBG_HEADER_DIAGNOSTICS)
#pragma message(__TIME__": include " __FILE__ )
#endif

#include "resource.h"       // main symbols

#include <Com/OleItemContainerSupport.h>

#include "$$root$$PropertyBase.h"
#include "$$root$$PropertySupport.h"

/////////////////////////////////////////////////////////////////////////////
// ProgID des zugeh�rigen Database-Objektes
extern "C" const OLECHAR __declspec(selectany) g_cbDatabase[] = L"TRiASDB.$$safe_root$$.Database.1";

/////////////////////////////////////////////////////////////////////////////
// C$$safe_root$$Database
class ATL_NO_VTABLE C$$safe_root$$Database : 
	public CComObjectRootEx<CComObjectThreadModel>,
	public CComCoClass<C$$safe_root$$Database, &CLSID_$$safe_root$$Database>,
	public CErrSupport<C$$safe_root$$Database, &IID_ITRiASDatabase>,
	public CManagePropertyBase<C$$safe_root$$Database>,
	public CManagePropertySupport<C$$safe_root$$Database>,
	public COleItemContainerSupport<C$$safe_root$$Database>,
	public IDispatchImpl<ITRiASAccessDatabase, &IID_ITRiASAccessDatabase, &LIBID_TRiASDB,
		TYPELIB_TRiASDB_VERSION_MAJOR, TYPELIB_TRiASDB_VERSION_MINOR>,
	public IDispatchImpl<ITRiASDatabase, &IID_ITRiASDatabase, &LIBID_TRiASDB,
		TYPELIB_TRiASDB_VERSION_MAJOR, TYPELIB_TRiASDB_VERSION_MINOR>
{
public:
	C$$safe_root$$Database() :
		m_bstrName(g_cbNil), m_fOpened(false), m_fIsDirty(false)
	{
	}

$$IF(EMIT_OBJECTCOUNT_DEBUG)
	_ATLX_DEBUG_OBJECTCOUNT_IMPL(C$$safe_root$$Database)
$$ENDIF // IF(EMIT_OBJECTCOUNT_DEBUG)

	DECLARE_REGISTRY_RESOURCEID(IDR_$$SAFE_ROOT$$DATABASE_RGS)
	DECLARE_PROTECT_FINAL_CONSTRUCT()

	BEGIN_COM_MAP(C$$safe_root$$Database)
		COM_INTERFACE_ENTRY(ITRiASDatabase)
		COM_INTERFACE_ENTRY(ITRiASAccessDatabase)
		COM_INTERFACE_ENTRY(ITRiASBase)
		COM_INTERFACE_ENTRY(ITRiASPropertyBase)			// --> CManagePropertyBase
		COM_INTERFACE_ENTRY(ITRiASPropertySupport)		// --> CManagePropertySupport
		COM_INTERFACE_ENTRY(ISupportErrorInfo)
		COM_INTERFACE_ENTRY(IOleItemContainer)			// --> COleItemContainerSupport
		COM_INTERFACE_ENTRY(IOleContainer)				// --> COleItemContainerSupport
		COM_INTERFACE_ENTRY(IParseDisplayName)			// --> COleItemContainerSupport
		COM_INTERFACE_ENTRY2(IDispatch, ITRiASDatabase)
	END_COM_MAP()

	BEGIN_PROPERTYSUPPORT_MAP(C$$safe_root$$Database)
$$IF(EMIT_SAMPLE_CODE)
// BEGIN_SAMPLE_CODE
$$IF(READ_WRITE)
		PROPERTYSUPPORT_ENTRY(g_cbObjectMap, CLSID_GenObjectMap)		// Zuordnung ObjectCursor --> pIObject
		PROPERTYSUPPORT_ENTRY(g_cbObjectsMap, CLSID_GenObjectMap)		// Zuordnung ObjectsCursor --> pIObjects
		PROPERTYSUPPORT_ENTRY(g_cbFeatureMap, CLSID_GenObjectMap)		// Zuordnung FeatureCursor --> pIFeature
$$ELSE
		PROPERTYSUPPORT_ENTRY(g_cbObjectMap, CLSID_GenObjectMap)		// Zuordnung ObjectCursor --> pIObject
$$ENDIF // $$IF(READ_WRITE)
// END_SAMPLE_CODE
$$ENDIF
		PROPERTYSUPPORT_ENTRY_DEFAULT(CLSID_TRiASAutoSaveProperty)
	END_PROPERTYSUPPORT_MAP()

	BEGIN_OLEITEMCONTAINERSUPPORT_MAP(C$$safe_root$$Database)
		OLEITEMCONTAINERSUPPORT_ENTRYEX(g_cbMkObjectsDef, GetObjectsDef, ParseObjectsDef)
		OLEITEMCONTAINERSUPPORT_ENTRYEX(g_cbMkObjectDef, GetObjectDef, ParseObjectDef)
	END_OLEITEMCONTAINERSUPPORT_MAP()

	HRESULT FinalConstruct();
	void FinalRelease();

	IDispatch *GetDispatch() { return static_cast<ITRiASDatabase *>(this); }

// ISupportsErrorInfo
	STDMETHOD(InterfaceSupportsErrorInfo)(REFIID riid);

public:
// ITRiASDatabase
	STDMETHOD(get_VersionLong)(LONG * pVal);
	STDMETHOD(get_Handle)(INT_PTR * pVal);
	STDMETHOD(get_IsDirty)(VARIANT_BOOL * pVal);
	STDMETHOD(put_IsDirty)(VARIANT_BOOL pVal);
	STDMETHOD(get_OpenedAsCopy)(VARIANT_BOOL * pVal);
	STDMETHOD(get_CouldOpenTarget)(VARIANT_BOOL * pVal);
	STDMETHOD(get_SchemaUpdatable)(VARIANT_BOOL * pVal);
	STDMETHOD(get_Name)(BSTR * pVal);
	STDMETHOD(get_Version)(BSTR * pVal);
	STDMETHOD(get_CollatingOrder)(LONG * pVal);
	STDMETHOD(get_Connect)(BSTR * pVal);
	STDMETHOD(get_Transactions)(VARIANT_BOOL * pVal);
	STDMETHOD(get_Updatable)(VARIANT_BOOL * pVal);
	STDMETHOD(get_Temporary)(VARIANT_BOOL * pVal);
	STDMETHOD(put_Temporary)(VARIANT_BOOL pVal);
	STDMETHOD(get_TemporaryName)(BSTR * pVal);
	STDMETHOD(get_Type)(BSTR * pVal);
	STDMETHOD(get_StorageMode)(DATABASESTORAGEMODE * pVal);
	STDMETHOD(CreateDatabase)(BSTR Name, BSTR Locale, BSTR Source);
	STDMETHOD(CreateDatabaseFromFiles)(IUnknown * FileNames, BSTR Locale, BSTR Source);
	STDMETHOD(CreateDatabaseOnStg)(IUnknown *pIUnk, BSTR Name, BSTR Locale, BSTR Source);
	STDMETHOD(OpenDatabase)(BSTR Name, VARIANT_BOOL Exclusive, VARIANT_BOOL ReadOnly, VARIANT_BOOL ModTrack, BSTR Source);
	STDMETHOD(OpenFilesAsDatabase)(IUnknown * FileNames, VARIANT_BOOL Exclusive, VARIANT_BOOL ReadOnly, VARIANT_BOOL ModTrack, BSTR Source);
	STDMETHOD(OpenStorageAsDatabase)(IUnknown *pIStorage, VARIANT_BOOL Exclusive, VARIANT_BOOL fReadOnly, VARIANT_BOOL ModTrack, BSTR Source);
	STDMETHOD(Save)();
	STDMETHOD(SaveAs)(BSTR NewName);
	STDMETHOD(Close)();
	STDMETHOD(BeginTrans)();
	STDMETHOD(ClearModificationLog)(LONG Entry);
	STDMETHOD(CommitTrans)();
	STDMETHOD(Rollback)();
	STDMETHOD(ReLoad)(RELOADDATABASE ToReLoad);
	STDMETHOD(RefreshChangesFromModificationLog)(/*[in]*/ ITRiASRefreshChangesCallback *pICallback);

// ITRiASBase
	STDMETHODIMP get_Application(IDispatch **pVal);
	STDMETHODIMP put_Application(IDispatch *newVal);
	STDMETHODIMP get_Parent(IDispatch **pVal);
	STDMETHODIMP put_Parent(IDispatch *newVal);

// ITRiASAccessDatabase
	STDMETHOD(get_Views)(ITRiASViews **pVal);
	STDMETHOD(get_StartViewName)(BSTR *pVal);
	STDMETHOD(get_ObjectsDefs)(ITRiASObjectsCollection **pVal);
	STDMETHOD(get_ObjectsDef)(VARIANT vItem, VARIANT_BOOL fCreate, BSTR Type, ITRiASObjects * *pVal);
	STDMETHOD(get_Envelope)(ENVELOPETYPE rgType, IDispatch **pVal);
	STDMETHOD(get_ObjectCount)(long *pVal);
	STDMETHOD(get_AttachedCS)(/*[in]*/ BSTR bstrDbName, /*[out, retval]*/ BSTR *AssocCS);
	STDMETHOD(get_ConnectionFilter)(ITRiASConnectionFilter **ppIGeom);
	STDMETHOD(put_ConnectionFilter)(ITRiASConnectionFilter *pIGeom);

// ITRiASPropertyBase
	STDMETHOD(CreateProperty)(BSTR bstrKey, ITRiASProperty **ppIProp)
		{ return CManagePropertySupport<C$$safe_root$$Database>::CreateProperty (bstrKey, ppIProp); }
	STDMETHOD(RemoveProperty)(BSTR bstrKey)
		{ return CManagePropertySupport<C$$safe_root$$Database>::RemoveProperty (bstrKey); }

protected:
// Koordinatensystem behandeln
	HRESULT InitCoordSystemService();
	HRESULT ShutdownCoordSystemService();

// ReLoad-Funktionalit�t
	HRESULT OnReLoadObjects();
	HRESULT OnReLoadEnvelope();

	HRESULT EnsureObjectsDefs (ITRiASObjectsCollection **pVal = NULL);

// Datenbank ist ge�ffnet
	BOOL IsOpened() { return m_fOpened ? TRUE : FALSE; }

// OleItemContainerSupport (s. BEGIN_OLEITEMCONTAINERSUPPORT_MAP)
	HRESULT GetObjectsDef (LPCTSTR pcItem, DWORD dwSpeedNeeded, REFIID riid, LPVOID *ppvObj, bool fTestRunningOnly);
	HRESULT GetObjectDef (LPCTSTR pcItem, DWORD dwSpeedNeeded, REFIID riid, LPVOID *ppvObj, bool fTestRunningOnly);
	HRESULT ParseObjectsDef (LPCTSTR pcItem, ULONG ulSkipped, ULONG *pulEaten, IMoniker **ppmkOut);
	HRESULT ParseObjectDef (LPCTSTR pcItem, ULONG ulSkipped, ULONG *pulEaten, IMoniker **ppmkOut);

private:
	__Interface<IDispatch> m_Application;
	__Interface<IDispatch> m_Parent;

	CComBSTR m_bstrName;		// Name dieser Database

	bool m_fOpened;
	bool m_fIsDirty;

	CIID m_CtfGuid;				// Guid des Koordinatensystems dieser Datenquelle

	WTRiASObjectsCollection m_ObjectsDefs;	// alle Objektklassen dieser Datenquelle
};

#endif // !defined(_$$SAFE_ROOT$$DATABASE_H__$$GUID_DATABASE_H$$__INCLUDED_)
