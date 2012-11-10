// $Header: $
// Copyright� 1999-2004 Hartmut Kaiser, All rights reserved
// Created: 05.09.2001 13:17:59 
//
// @doc
// @module ORWndValuePageCtrl.h | Declaration of the <c CORWndValuePageCtrl> class

#if !defined(_ORWndValuePageCtrl_H__BE59207D_DEC6_455D_B5FD_EDC6B14A6E12__INCLUDED_)
#define _ORWndValuePageCtrl_H__BE59207D_DEC6_455D_B5FD_EDC6B14A6E12__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

// Header include diagnostics
#if defined(_TRIAS_DBG_HEADER_DIAGNOSTICS)
#pragma message(__TIME__": include " __FILE__ )
#endif

#include <atlctl.h>

#include "resource.h"       // main symbols
#include "ProjectValuesView.h"

/////////////////////////////////////////////////////////////////////////////
// Objektklassenspezifische ValueStatistics
class ATL_NO_VTABLE CORWndValuePageCtrl : 
	public CComObjectRootEx<CComSingleThreadModel>,
	public CStockPropImpl<CORWndValuePageCtrl, IProjectValuePageCtrl, 
		&IID_IProjectValuePageCtrl, &LIBID_TRiASStatistics>,
	public CComCompositeControl<CORWndValuePageCtrl>,
	public IPersistStreamInitImpl<CORWndValuePageCtrl>,
	public IOleControlImpl<CORWndValuePageCtrl>,
	public IOleObjectImpl<CORWndValuePageCtrl>,
	public IOleInPlaceActiveObjectImpl<CORWndValuePageCtrl>,
	public IViewObjectExImpl<CORWndValuePageCtrl>,
	public IOleInPlaceObjectWindowlessImpl<CORWndValuePageCtrl>,
	public ISupportErrorInfo,
	public IPersistStorageImpl<CORWndValuePageCtrl>,
	public ISpecifyPropertyPagesImpl<CORWndValuePageCtrl>,
	public IQuickActivateImpl<CORWndValuePageCtrl>,
	public IConnectionPointContainerImpl<CORWndValuePageCtrl>,
	public IDataObjectImpl<CORWndValuePageCtrl>,
	public IPropertyNotifySinkCP<CORWndValuePageCtrl>,
	public IProvideClassInfo2Impl<&CLSID_ORWndValuePageCtrl, &DIID__IProjectValuePageCtrlEvents, 
		&LIBID_TRiASStatistics, TYPELIB_STATIST_MAJOR_VERSION, TYPELIB_STATIST_MINOR_VERSION>,
	public CComCoClass<CORWndValuePageCtrl, &CLSID_ORWndValuePageCtrl>
{
public:
	typedef CORWndValuePageCtrl this_t;

	CORWndValuePageCtrl() :
		m_fIsInitialized(false)
	{
		m_bWindowOnly = TRUE;
		CalcExtent(m_sizeExtent);
	}
	~CORWndValuePageCtrl()
	{
	}

	DECLARE_NOT_AGGREGATABLE(CORWndValuePageCtrl)
	DECLARE_PROTECT_FINAL_CONSTRUCT()

	DECLARE_REGISTRY_RESOURCEID(IDR_ORWNDVALUEPAGECTRL)

	enum { IDD = IDD_PROJECTVALUEPAGECTRL };

	BEGIN_COM_MAP(CORWndValuePageCtrl)
		COM_INTERFACE_ENTRY(IProjectValuePageCtrl)
		COM_INTERFACE_ENTRY(IDispatch)
		COM_INTERFACE_ENTRY(IViewObjectEx)
		COM_INTERFACE_ENTRY(IViewObject2)
		COM_INTERFACE_ENTRY(IViewObject)
		COM_INTERFACE_ENTRY(IOleInPlaceObjectWindowless)
		COM_INTERFACE_ENTRY(IOleInPlaceObject)
		COM_INTERFACE_ENTRY2(IOleWindow, IOleInPlaceObjectWindowless)
		COM_INTERFACE_ENTRY(IOleInPlaceActiveObject)
		COM_INTERFACE_ENTRY(IOleControl)
		COM_INTERFACE_ENTRY(IOleObject)
		COM_INTERFACE_ENTRY(IPersistStreamInit)
		COM_INTERFACE_ENTRY2(IPersist, IPersistStreamInit)
		COM_INTERFACE_ENTRY(ISupportErrorInfo)
		COM_INTERFACE_ENTRY(IConnectionPointContainer)
		COM_INTERFACE_ENTRY(ISpecifyPropertyPages)
		COM_INTERFACE_ENTRY(IQuickActivate)
		COM_INTERFACE_ENTRY(IPersistStorage)
		COM_INTERFACE_ENTRY(IDataObject)
		COM_INTERFACE_ENTRY(IProvideClassInfo)
		COM_INTERFACE_ENTRY(IProvideClassInfo2)
	END_COM_MAP()

	BEGIN_PROP_MAP(this_t)
		PROP_DATA_ENTRY("_cx", m_sizeExtent.cx, VT_UI4)
		PROP_DATA_ENTRY("_cy", m_sizeExtent.cy, VT_UI4)
		PROP_ENTRY("Font", DISPID_FONT, CLSID_StockFontPage)
		PROP_ENTRY("Enabled", DISPID_ENABLED, CLSID_NULL)
		PROP_ENTRY("TabStop", DISPID_TABSTOP, CLSID_NULL)
		PROP_ENTRY("Valid", DISPID_VALID, CLSID_NULL)
		// Example entries
		// PROP_ENTRY("Property Description", dispid, clsid)
		// PROP_PAGE(CLSID_StockColorPage)
	END_PROP_MAP()

	BEGIN_MSG_MAP_EX(this_t)
		MSG_WM_INITDIALOG(OnInitDialog)
		MSG_WM_SIZE(OnSize)
		CHAIN_MSG_MAP(CComCompositeControl<CORWndValuePageCtrl>)
	END_MSG_MAP()

	BEGIN_CONNECTION_POINT_MAP(CORWndValuePageCtrl)
		CONNECTION_POINT_ENTRY(IID_IPropertyNotifySink)
	END_CONNECTION_POINT_MAP()

// Message handlers
	LRESULT OnInitDialog(HWND hFocus, LPARAM lParam)
	{
		m_Values.SubclassWindow(GetDlgItem(IDC_STATISTVALUES));
		m_fIsInitialized = true;
		m_Values.Init();
		AdjustSizes();
		return TRUE;
	}

// Tree genauso gro� machen, wie Dialog selbst
	void OnSize (UINT uiFlags, CSize szSize)
	{
		if (m_fIsInitialized) 
			AdjustSizes(szSize);
		SetMsgHandled(FALSE);
	}

// sink map
	BEGIN_SINK_MAP(this_t)
		//Make sure the Event Handlers have __stdcall calling convention
	END_SINK_MAP()

	STDMETHOD(OnAmbientPropertyChange)(DISPID dispid)
	{
		if (dispid == DISPID_AMBIENT_BACKCOLOR)
		{
			SetBackgroundColorFromAmbient();
			FireViewChange();
		}
		return IOleControlImpl<CORWndValuePageCtrl>::OnAmbientPropertyChange(dispid);
	}

// ISupportsErrorInfo
	STDMETHOD(InterfaceSupportsErrorInfo)(REFIID riid)
	{
		static const IID* arr[] = 
		{
			&IID_IProjectValuePageCtrl,
		};
		for (int i=0; i<sizeof(arr)/sizeof(arr[0]); i++)
		{
			if (InlineIsEqualGUID(*arr[i], riid))
				return S_OK;
		}
		return S_FALSE;
	}

// IViewObjectEx
	DECLARE_VIEW_STATUS(0)

// IProjectValuePageCtrl
public:
	CComPtr<IFontDisp> m_pFont;

protected:
	bool AdjustSizes()
	{
		_ASSERTE(m_fIsInitialized);

	CSize szSize;

		AtlHiMetricToPixel(&m_sizeExtent, &szSize);
		return AdjustSizes(szSize);
	}
	bool AdjustSizes(CSize szSize)
	{
		_ASSERTE(m_fIsInitialized);

		m_Values.SetWindowPos(NULL, 0, 0, szSize.cx, szSize.cy, SWP_NOMOVE|SWP_NOZORDER);
		return true;
	}

private:
	bool m_fIsInitialized;
	CProjectValuesView<CORWndStatistics> m_Values;
};

#endif // !defined(_ORWndValuePageCtrl_H__BE59207D_DEC6_455D_B5FD_EDC6B14A6E12__INCLUDED_)
