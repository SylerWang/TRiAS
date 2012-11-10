// $Header: $
// Copyright� 1998-2001 TRiAS GmbH Potsdam, All rights reserved
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
// @module TRiASOGCCursorProperty.h | Declaration of the <c CTRiASOGCCursorProperty> class

#if !defined(_TRIASOGCCURSORPROPERTY_H__9A942D2C_E6A8_4939_AC60_625A376E110F__INCLUDED_)
#define _TRIASOGCCURSORPROPERTY_H__9A942D2C_E6A8_4939_AC60_625A376E110F__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

// Header include diagnostics
#if defined(_TRIAS_DBG_HEADER_DIAGNOSTICS)
#pragma message(__TIME__": include " __FILE__ )
#endif

#include "resource.h"       // main symbols

/////////////////////////////////////////////////////////////////////////////
// CTRiASOGCCursorProperty
class ATL_NO_VTABLE CTRiASOGCCursorProperty : 
	public CComObjectRootEx<CComObjectThreadModel>,
	public CComCoClass<CTRiASOGCCursorProperty, &CLSID_TRiASOGCCursorProperty>,
	public ITRiASPropertyCallback,
	public IObjectWithSite,
	public IObjectWithName
{
public:
	CTRiASOGCCursorProperty()
	{
	}

	_ATLX_DEBUG_OBJECTCOUNT_IMPL(CTRiASOGCCursorProperty)

	DECLARE_REGISTRY_RESOURCEID(IDR_TRIASOGCCURSORPROPERTY_RGS)
	DECLARE_NOT_AGGREGATABLE(CTRiASOGCCursorProperty)

	BEGIN_COM_MAP(CTRiASOGCCursorProperty)
		COM_INTERFACE_ENTRY(ITRiASPropertyCallback)
		COM_INTERFACE_ENTRY(IObjectWithSite)
		COM_INTERFACE_ENTRY(IObjectWithName)
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

// IObjectWithName
	STDMETHOD(put_Name)(BSTR bstrName);
	STDMETHOD(get_Name)(BSTR *pbstrName);

protected:
	HRESULT GetCursorMap (ITRiASObjectHandleMap **ppIMap);
	HRESULT SetCursor();
	HRESULT ResetCursor();

private:
	WUnknown m_Obj;			// h�ngt an diesem Objekt
	CComVariant m_Value;	// Wert des ObjektCursors
	CComBSTR m_bstrName;	// Name der Property
};

#endif // !defined(_TRIASOGCCURSORPROPERTY_H__9A942D2C_E6A8_4939_AC60_625A376E110F__INCLUDED_)
