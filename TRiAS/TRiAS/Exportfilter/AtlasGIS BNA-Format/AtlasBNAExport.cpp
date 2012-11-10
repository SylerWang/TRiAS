// AtlasBNAExport.cpp : Implementation of CAtlasBNAExport
#include "stdafx.h"
#include "AtlasBNAImpl.h"

#include "../ExtDataEngineImpl.h"
#include "../CTRiASOEProxyImpl.h"

#include <Errcodes.hxx>

#include "AtlasBNAExport.h"

/////////////////////////////////////////////////////////////////////////////
// CPersistStreamInitImpl

HRESULT	CAtlasBNAExport::OnInitNew( ) {
	COM_TRY {
		CExtDataEngineImpl_t::OnInitNew();
// KK000816
		CExtDataEngineImpl_t::put_SeparateOutput(FALSE);
		CExtDataEngineImpl_t::put_SeparateDirs(FALSE);
	} COM_CATCH;
	return S_OK;
}
HRESULT CAtlasBNAExport::LoadData( LPSTREAM pStm, DWORD dwVersion ) {
	COM_TRY {
		CExtDataEngineImpl_t::LoadData(pStm);
// KK000816
		CExtDataEngineImpl_t::put_SeparateOutput(FALSE);
		CExtDataEngineImpl_t::put_SeparateDirs(FALSE);
//		CExtDataEngineImpl_t::put_SeparateOutput(TRUE);
	} COM_CATCH;
	return S_OK;
}
HRESULT CAtlasBNAExport::SaveData( LPSTREAM pStm, BOOL bClearDirty ) {
	COM_TRY {
		CExtDataEngineImpl_t::SaveData(pStm,bClearDirty);
	} COM_CATCH;
	return S_OK;
}
LONGLONG CAtlasBNAExport::GetDataSize( ) {
	ULARGE_INTEGER	uliSize, uliSum;
	uliSize.QuadPart = 0;
	uliSum.QuadPart = 0;
	COM_TRY {
		uliSize.QuadPart = CExtDataEngineImpl_t::GetDataSize();
		uliSum.QuadPart += uliSize.QuadPart;
	} COM_CATCH;
	return uliSum.QuadPart;
}
