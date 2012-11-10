// @doc 
// @module ResetVisAddEntryCB.cpp | Implementation of the CResetVisAddEntryCB

#include "visobjp.hxx"

#include "visobj.hxx"
#include "ResetVisAddEntryCB.h"

/////////////////////////////////////////////////////////////////////////////
// CResetVisAddEntryCB

STDMETHODIMP CResetVisAddEntryCB::AddEntry (INT_PTR lIdent, DWORD dwTypes, DWORD *pdwTypesToAdd) 
{
	if (NULL == pdwTypesToAdd)
		return E_POINTER;
	*pdwTypesToAdd = 0;

	if (DEX_GetROModeIdent(lIdent))		// Tabelle ist sowieso schreibgesch�tzt
		return S_OK;

char cbBuffer[_MAX_PATH];
long lMCode = ((CVisObjExtension *)g_pTE) -> GetIdentMCode (false, NULL, lIdent);

	if (-1L == lMCode || !ReadTextMerkmal (TT_Identifikator, lIdent, lMCode, cbBuffer))
		return S_OK;	// Ident ist nicht visualisiert

// auf zu behandelnde Objekttypen beschr�nken
	*pdwTypesToAdd = dwTypes & GetObjectTypeBits(CVisObjExtension::StringToIdMode(cbBuffer), OVModVisInfo);
	return S_OK;
}

