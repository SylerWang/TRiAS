// $Header: $
// Copyright� 1999-2000 TRiAS GmbH Potsdam, All rights reserved
// Created: 07.12.2000 20:05:51 
//
// @doc
// @module SimpleAreaFrame.cpp | Definition of the <c CSimpleAreaFrame> class

#include "stdafx.h"

#include "Statist.h"
#include "SimpleAreaFrame.h"
#include "GeoObj.h"

/////////////////////////////////////////////////////////////////////////////
// RUNTIME_OBJECT_MAP
RT_OBJECT_ENTRYEX(SimpleAreaFrame)

/////////////////////////////////////////////////////////////////////////////
// CSimpleAreaFrame

// IObjectProperty specifics
STDMETHODIMP CSimpleAreaFrame::Reset (void)
{
//	AFX_MANAGE_STATE(AfxGetAppModuleState())
	
	RETURN_FAILED_HRESULT(m_CumPts -> Reset())
	RETURN_FAILED_HRESULT(CObjectPropertyBase::Reset());
	return S_OK;
}

STDMETHODIMP CSimpleAreaFrame::GetPropInfo (LPSTR pBuffer, WORD wLen, DWORD *pdwData)
{
//	AFX_MANAGE_STATE(AfxGetAppModuleState())

// erstmal Basisklasse arbeiten lassen	
	RETURN_FAILED_HRESULT(CObjectPropertyBase::GetPropInfo (pBuffer, wLen, pdwData));
	if (pdwData)	
		*pdwData |= PROPCAPS_OBJPROPTYPE_DOUBLE;	
	return S_OK;
}

///////////////////////////////////////////////////////////////////////////////
// Kumulativer Wert dieser Objekteigenschaft 
STDMETHODIMP CSimpleAreaFrame::Cumulation (LPSTR pBuffer, ULONG ulLen, ULONG *pulWritten)
{
//	AFX_MANAGE_STATE(AfxGetAppModuleState())
	if (NULL == pBuffer) return E_POINTER;

	_ASSERTE(0 != ulLen);
	_ASSERTE(!IsBadWritePtr(pBuffer, ulLen));

	if (pulWritten) 
		*pulWritten = 0;

// Summe der bisher gez�hlten L�ngen als Zeichenkette liefern
	if (ulLen > 32) {
	double dAve = 0;

		RETURN_FAILED_HRESULT(m_CumPts ->  get_Sum (&dAve));
		
	os_string strUnit;
	si::Length dAveLength (dAve);

		dAve = dAveLength.measuredIn(((CStatist *)g_pTE) -> GetUoL (dAveLength, strUnit));
		sprintf (pBuffer, "%f%s", dAve, strUnit.c_str());
		if (pulWritten) 
			*pulWritten = strlen (pBuffer);
		return S_OK;
	}
	return E_INVALIDARG;
}

///////////////////////////////////////////////////////////////////////////////
// Berechnen dieser Objekteigenschaft
STDMETHODIMP CSimpleAreaFrame::Eval (LONG lONr, LPSTR pBuffer, ULONG ulLen, ULONG *pulWritten)
{
//	AFX_MANAGE_STATE(AfxGetAppModuleState())
	if (NULL == pBuffer) return E_POINTER;

	_ASSERTE(0 != ulLen);
	_ASSERTE(!IsBadWritePtr(pBuffer, ulLen));

	if (pulWritten) 
		*pulWritten = 0;

CGObject Obj (lONr);

	if (Obj.FInit() && OGFlaeche == Obj.iObjTyp() && ulLen > 32) { 	// 32 Zeichen werden zumindest gebraucht
	// nur f�r Fl�chenObjekte
	double dObjLength = 0.0;
	os_string strUnit;

		RETURN_FAILED_HRESULT(Obj.LengthOfPolyline (&dObjLength, strUnit));
		sprintf (pBuffer, "%f%s", dObjLength, strUnit.c_str());

		if (pulWritten) 
			*pulWritten = strlen(pBuffer);

	// Infos f�r Kumulation sammeln
		RETURN_FAILED_HRESULT(m_CumPts -> AddValue (dObjLength, vtMissing));
		IncrementCount();			// Z�hler der erfolgreichen Aufrufe
		return S_OK;
	}
	return E_FAIL;		// ObjProperty existiert nicht
}
