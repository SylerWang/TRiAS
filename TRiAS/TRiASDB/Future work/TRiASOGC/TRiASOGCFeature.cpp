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
// @module TRiASOGCFeature.cpp | Implementation of the <c CTRiASOGCFeature> class

#include "stdafx.h"

#include "Strings.h"

#include "TRiASOGC.h"
#include "TRiASOGCFeature.h"
// BEGIN_SAMPLE_CODE
#include "TRiASOGCPropertySupport.h"
// END_SAMPLE_CODE

#if defined(_DEBUG)
#if defined(_MFC_VER)
#define new DEBUG_NEW
#endif // defined(_MFC_VER)
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif // _DEBUG

/////////////////////////////////////////////////////////////////////////////
// CTRiASOGCFeature

STDMETHODIMP CTRiASOGCFeature::InterfaceSupportsErrorInfo(REFIID riid)
{
	static const IID* arr[] = 
	{
		&IID_ITRiASFeature,
	};
	for (int i=0;i<sizeof(arr)/sizeof(arr[0]);i++)
	{
		if (InlineIsEqualGUID(*arr[i],riid))
			return S_OK;
	}
	return S_FALSE;
}

/////////////////////////////////////////////////////////////////////////////
// ITRiASFeatureCallback
STDMETHODIMP CTRiASOGCFeature::get_DefaultType (BSTR *pbstrType)
{
	CHECKOUTPOINTER(pbstrType);

CIID Guid (GetObjectCLSID());
CComBSTR bstrType (Guid.ProgID().c_str());

	*pbstrType = bstrType.Detach();
	return S_OK;
}

STDMETHODIMP CTRiASOGCFeature::SetupFeature (SETUPFEATUREMODE rgMode)
{
	_ASSERTE(SETUPFEATUREMODE_InitOrLoad == rgMode);		// z.Zt nur dieses
// BEGIN_SAMPLE_CODE
	COM_TRY {
	// Properties zum aggregierten Objekt hinzuf�gen
	WTRiASPropertyMapHandler MapHandler(m_BaseUnk);

		THROW_FAILED_HRESULT(MapHandler -> AddMapEntry (
			CComBSTR(g_cbFeatureCursor), (INT_PTR)&CLSID_TRiASOGCCursorProperty, PROPERTYSUPPORT_NOFLAGS, vtMissing));

	} COM_CATCH;
// END_SAMPLE_CODE
	return S_OK;
}

STDMETHODIMP CTRiASOGCFeature::OnChanging(CHANGEDFEATURE rgWhat, VARIANT vNewValue, VARIANT_BOOL *pDisAllow)
{
	CHECKOUTPOINTER(pDisAllow);

	*pDisAllow = VARIANT_FALSE;		// immer einverstanden sein
	return S_OK;
}

STDMETHODIMP CTRiASOGCFeature::OnChanged(CHANGEDFEATURE rgWhat, VARIANT vOldValue)
{
	switch (rgWhat) {
	case CHANGEDFEATURE_Name:
		return OnChangedName();

	case CHANGEDFEATURE_Description:
		return OnChangedDescription();

	case CHANGEDFEATURE_Handle:
		return OnChangedHandle();

	case CHANGEDFEATURE_ROMode:
		return OnChangedROMode();

	case CHANGEDFEATURE_Value:
		break;

	case CHANGEDFEATURE_Type:
		return OnChangedType();

	default:
		_ASSERTE(SUCCEEDED(E_INVALIDARG));
		break;
	}
	return E_INVALIDARG;
}

HRESULT CTRiASOGCFeature::OnChangedName()
{
// neuen Namen vom Bezugsobjekt besorgen
CComBSTR bstrName;
WTRiASFeature BaseFeat;

	RETURN_FAILED_HRESULT(m_BaseUnk -> QueryInterface (BaseFeat.ppi()));
	RETURN_FAILED_HRESULT(BaseFeat -> get_Name(CLEARED(&bstrName)))

#pragma TODO("Neuen Name der Objekteigenschaft ggf. auswerten.")
	return S_OK;
}

HRESULT CTRiASOGCFeature::OnChangedDescription()
{
// neue Beschreibung vom Bezugsobjekt besorgen
CComBSTR bstrDesc;
WTRiASFeature BaseFeat;

	RETURN_FAILED_HRESULT(m_BaseUnk -> QueryInterface (BaseFeat.ppi()));
	RETURN_FAILED_HRESULT(BaseFeat -> get_Description(CLEARED(&bstrDesc)))

#pragma TODO("Neue Beschreibung der Objekteigenschaft ggf. auswerten.")
	return S_OK;
}

HRESULT CTRiASOGCFeature::OnChangedHandle()
{
	return S_OK;
}

HRESULT CTRiASOGCFeature::OnChangedType()
{
// neuen Typ vom Bezugsobjekt besorgen
FEATURETYPE rgType = FEATURETYPE_Unknown;
WTRiASFeature BaseFeat;

	RETURN_FAILED_HRESULT(m_BaseUnk -> QueryInterface (BaseFeat.ppi()));
	RETURN_FAILED_HRESULT(BaseFeat -> get_Type(&rgType))

#pragma TODO("Neuen Typ der Objekteigenschaft ggf. auswerten.")
	return S_OK;
}

HRESULT CTRiASOGCFeature::OnChangedROMode()
{
// neuen Schreibschutzmode vom Bezugsobjekt besorgen
VARIANT_BOOL fUpdatable = VARIANT_FALSE;
WTRiASFeature BaseFeat;

	RETURN_FAILED_HRESULT(m_BaseUnk -> QueryInterface (BaseFeat.ppi()));
	RETURN_FAILED_HRESULT(BaseFeat -> get_Updatable(&fUpdatable))

#pragma TODO("Neuen Schreibschutzmode der Objekteigenschaft ggf. auswerten.")
	return S_OK;
}

/////////////////////////////////////////////////////////////////////////////
// Eval: Das, worum es eigentlich geht: Wert der Objekteigenschaft abfragen
STDMETHODIMP CTRiASOGCFeature::Eval(ITRiASObject *pIObj, VARIANT *pVal)
{
#pragma TODO("Wert der Objekteigenschaft bestimmen.")

	COM_TRY {
	// BEGIN_SAMPLE_CODE
	WTRiASFeature BaseFeat;

		THROW_FAILED_HRESULT(m_BaseUnk -> QueryInterface (BaseFeat.ppi()));
		using namespace sample_data;

	CComBSTR bstrVal;
	LONG lObjCursor = GetPropertyFrom (pIObj, g_cbObjectCursor, -1L);
	LONG lThisCursor = GetPropertyFrom (BaseFeat, g_cbFeatureCursor, -1L);

		_ASSERTE(0 < lObjCursor);
		_ASSERTE(0 < lThisCursor);

	// Objektdaten zuordnen und Attribut wiederfinden
	const OBJECT *pObject = g_Objects[lObjCursor-1];
	const FEATURE *pFeat = pObject -> m_pFeatures;
	bool fFound = false;

		for (int i = 0; i < pObject -> m_iFeatureCount; ++i, ++pFeat) {
			if (lThisCursor-1 == pFeat -> m_iFeatDesc) {
			// das Objekt besitzt dieses Attribut
				bstrVal = pFeat -> m_pcoleFeature;
				fFound = true;
				break;
			}
		}
		if (!fFound)	// das Objekt besitzt diese Objekteigenschaft nicht
			return TRIASDB_E_NOSUCHFEATURE;
	// END_SAMPLE_CODE

	CComVariant var (bstrVal);

		THROW_FAILED_HRESULT(var.Detach (pVal));

	} COM_CATCH;
	return S_OK;
}

STDMETHODIMP CTRiASOGCFeature::EvalEx(ITRiASObject *pIObj, SAFEARRAY **ppConstraints, VARIANT *pVal)
{
	return Eval (pIObj, pVal);		// ignore constraints	
}

// Wert der Objekteigenschaft modifizieren
STDMETHODIMP CTRiASOGCFeature::Update(ITRiASObject *pIObj, VARIANT Val)
{
#pragma TODO("Neuen Wert der Objekteigenschaft in Datenquelle speichern.")
	return S_OK;
}

// Kopie der Objekteigenschaft erzeugen
STDMETHODIMP CTRiASOGCFeature::Clone (ITRiASFeature **ppIFeat)
{
	return E_NOTIMPL;
}

// Objekt wird logisch freigegeben
STDMETHODIMP CTRiASOGCFeature::OnFinalRelease()
{
// BEGIN_SAMPLE_CODE
	COM_TRY {
	// unsere Nummer (Cursor) freigeben und damit dieses Objekt aus der Handlemap herausl�schen
		THROW_FAILED_HRESULT(DelPropertyBy (WDispatch(m_BaseUnk), g_cbFeatureCursor));
	} COM_CATCH;
// END_SAMPLE_CODE
	return S_OK;
}


