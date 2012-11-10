// $Header: $
// Copyright� 1998-2000 TRiAS GmbH Potsdam, All rights reserved
// Created: 25.02.2000 11:15:18 
//
// This file was generated by the TRiASDB Data Server Wizard V1.01.076 (#HK000225)
//
// @doc
// @module FastdbObjectCursorProperty.h | Declaration of the <c CFastdbObjectCursorProperty> class

#if !defined(_FASTDBOBJECTCURSORPROPERTY_H__278EC98E_0EB3_44CF_A685_2C99BF9748CA__INCLUDED_)
#define _FASTDBOBJECTCURSORPROPERTY_H__278EC98E_0EB3_44CF_A685_2C99BF9748CA__INCLUDED_

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
DefineSmartInterface(TRiASObject);

/////////////////////////////////////////////////////////////////////////////
// CFastdbObjectCursorProperty
class ATL_NO_VTABLE CFastdbObjectCursorProperty : 
	public CComObjectRootEx<CComObjectThreadModel>,
	public CComCoClass<CFastdbObjectCursorProperty, &CLSID_FastdbObjectCursorProperty>,
	public ITRiASPropertyCallback,
	public IObjectWithSite
{
public:
	CFastdbObjectCursorProperty()
	{
	}

	DECLARE_REGISTRY_RESOURCEID(IDR_FASTDBOBJECTCURSORPROPERTY_RGS)
	DECLARE_NOT_AGGREGATABLE(CFastdbObjectCursorProperty)

	BEGIN_COM_MAP(CFastdbObjectCursorProperty)
		COM_INTERFACE_ENTRY(ITRiASPropertyCallback)
		COM_INTERFACE_ENTRY(IObjectWithSite)
	END_COM_MAP()

	HRESULT FinalConstruct()
	{
		return S_OK;
	}
	void FinalRelease();

// ITRiASPropertyCallback
public:
	STDMETHOD(PutValue)(BSTR Name, VARIANT newVal);
	STDMETHOD(GetValue)(BSTR Name, VARIANT *pVal);
	STDMETHOD(PutType)(BSTR Name, PROPERTY_TYPE newVal);
	STDMETHOD(GetType)(BSTR Name, PROPERTY_TYPE *pVal);
	STDMETHOD(GetValueAndType)(BSTR Name, VARIANT *pVal, PROPERTY_TYPE *pType);
	STDMETHOD(PutValueAndType)(BSTR Name, VARIANT Val, PROPERTY_TYPE Type);
	STDMETHOD(Refresh)(BSTR Name);

// IObjectWithSite
	STDMETHOD(SetSite)(IUnknown *pISite);
	STDMETHOD(GetSite)(REFIID riid, void **ppvSite);

protected:
	HRESULT GetObjectCursorMap (ITRiASObjectHandleMap **ppIMap);
	HRESULT SetCursor();
	HRESULT ResetCursor();

private:
	WTRiASObject m_Obj;		// h�ngt an diesem Objekt
	CComVariant m_Value;	// Wert des ObjektCursors
};

#endif // !defined(_FASTDBOBJECTCURSORPROPERTY_H__278EC98E_0EB3_44CF_A685_2C99BF9748CA__INCLUDED_)
