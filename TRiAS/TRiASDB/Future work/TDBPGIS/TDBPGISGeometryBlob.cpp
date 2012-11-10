// $Header: $
// Copyright� 1998-2002 GEOPunkt GmbH & Co. KG, NL Potsdam, All rights reserved
// Created: 25.02.2002 16:45:45 
//
// This file was generated by the TRiASDB Data Server Wizard V1.02.117 (#HK010502)
//
// THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY 
// KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A PARTICULAR 
// PURPOSE.
//
// @doc
// @module TDBPGISGeometryBlob.cpp | Geometrie eines Objektes GeoMedia-like aufbereiten

#include "stdafx.h"

#include <Com/SafeArray.h>
#include "TDBPGISGeometryBlob.h"

#ifdef _DEBUG
#undef THIS_FILE
static char BASED_CODE THIS_FILE[] = __FILE__;
#endif

namespace geometryblob {

/////////////////////////////////////////////////////////////////////////////
// globale Instanz f�r GeometryBlob-Konvertierungen
HRESULT CBlobService::GetBlobSize (REFCLSID rClsId, unsigned long lCnt, void *pData, unsigned long *plSize)
{
MAKEBLOBDATA *pMBD = GetMakeBlobData();

	while (NULL != pMBD -> pClsId) {
		if (InlineIsEqualGUID(rClsId, *(pMBD -> pClsId))) 
			return (this ->* (pMBD -> GetBlobSize))(lCnt, pData, plSize);
		pMBD++;
	}
	return E_FAIL;
}

HRESULT CBlobService::MakeBlob (
	REFCLSID rClsId, unsigned long lCnt, double_i itx, double_i ity, 
	POINTBASE *pNormal, void *pData, BYTE *pBlob)
{
MAKEBLOBDATA *pMBD = GetMakeBlobData();

	while (NULL != pMBD -> pClsId) {
		if (InlineIsEqualGUID(rClsId, *(pMBD -> pClsId))) 
			return (this ->* (pMBD -> MakeBlob))(lCnt, itx, ity, pNormal, pData, pBlob);
		pMBD++;
	}
	return E_FAIL;
}

HRESULT CBlobService::MakeVertices (
	REFCLSID rClsId, BYTE *pBlob, double_v &rX, double_v &rY, void *pData)
{
MAKEBLOBDATA *pMBD = GetMakeBlobData();

	while (NULL != pMBD -> pClsId) {
		if (InlineIsEqualGUID(rClsId, *(pMBD -> pClsId))) 
			return (this ->* (pMBD -> MakeVertices))(pBlob, rX, rY, pData);
		pMBD++;
	}
	return E_FAIL;
}

/////////////////////////////////////////////////////////////////////////////
// GETBLOBSIZEPROC
HRESULT CBlobService::GetPointGeometrySize (unsigned long, void *, unsigned long *plSize)
{
	if (NULL == plSize)
		return E_POINTER;
	*plSize = sizeof(CLSID) + sizeof(POINTBASE);		// ein WerteTripel
	return S_OK;
}

HRESULT CBlobService::GetPolylineGeometrySize (unsigned long lCnt, void * /*pData*/, unsigned long *plSize)
{
	if (NULL == plSize)
		return E_POINTER;
	*plSize = sizeof(CLSID) + sizeof(long) + lCnt*sizeof(POINTBASE);
	return S_OK;
}

HRESULT CBlobService::GetPolygonGeometrySize (unsigned long lCnt, void * /*pData*/, unsigned long *plSize)
{
	if (NULL == plSize)
		return E_POINTER;
	*plSize = sizeof(CLSID) + sizeof(long) + lCnt*sizeof(POINTBASE);
	return S_OK;
}

HRESULT CBlobService::GetTextGeometrySize (unsigned long /*lCnt*/, void *pData, unsigned long *plSize)
{
	if (NULL == plSize)
		return E_POINTER;

TEXTBLOBDATA *pTBD = reinterpret_cast<TEXTBLOBDATA *>(pData);

	_ASSERTE(NULL != pTBD && 0 < pTBD -> strText.size());

	*plSize = sizeof(CLSID) + 2*sizeof(POINTBASE) + sizeof(double) + 2*sizeof(long) + (pTBD -> strText.size()+1)*sizeof(wchar_t);
	return S_OK;
}

/////////////////////////////////////////////////////////////////////////////
// MAKEBLOBPROC
template<class T>
inline void AssignAndAdvance (BYTE *& p, T x)
{
	memcpy (p, (void *)&x, sizeof(T));
	p += sizeof(T); 
}
inline void AssignAndAdvance (BYTE *& p, void *px, unsigned int iSize)
{
	memcpy (p, px, iSize);
	p += iSize; 
}

HRESULT CBlobService::MakePointGeometryBlob (
	unsigned long ulCnt, double_i itx, double_i ity, POINTBASE *, void *pData, BYTE *pBlob)
{
#if defined(_DEBUG)
BYTE *pBlobOrigin = pBlob;
unsigned long ulSize = 0;

	_ASSERTE(1 == ulCnt);
	GetPointGeometrySize (ulCnt, pData, &ulSize);	//lint !e534
	_ASSERTE(!IsBadWritePtr(pBlob, ulSize));
#endif // _DEBUG

	AssignAndAdvance(pBlob, CLSID_TRiASCSPointGeometry);
	
	((POINTBASE *)pBlob) -> X = *itx;
	((POINTBASE *)pBlob) -> Y = *ity;
	((POINTBASE *)pBlob) -> Z = 0.0;

#if defined(_DEBUG)
	pBlob += sizeof(POINTBASE);
	_ASSERTE(pBlob-pBlobOrigin == ulSize);
#endif // _DEBUG
	return S_OK;
}

HRESULT CBlobService::MakePolylineGeometryBlob (
	unsigned long ulCnt, double_i itx, double_i ity, POINTBASE *, void *pData, BYTE *pBlob)
{
#if defined(_DEBUG)
BYTE *pBlobOrigin = pBlob;
unsigned long ulSize = 0;

	GetPolylineGeometrySize (ulCnt, pData, &ulSize);	//lint !e534
	_ASSERTE(!IsBadWritePtr(pBlob, ulSize));
#endif // _DEBUG
	
	AssignAndAdvance(pBlob, CLSID_TRiASCSPolylineGeometry);
	AssignAndAdvance(pBlob, ulCnt);
	for (unsigned long i = 0; i < ulCnt; i++) 
	{
		((POINTBASE *)pBlob) -> X = *itx;
		((POINTBASE *)pBlob) -> Y = *ity;
		((POINTBASE *)pBlob) -> Z = 0.0;
		pBlob += sizeof(POINTBASE);
		++itx; ++ity;
	}
		
	_ASSERTE(pBlob-pBlobOrigin == ulSize);
	return S_OK;
}

HRESULT CBlobService::MakePolygonGeometryBlob (
	unsigned long ulCnt, double_i itx, double_i ity, POINTBASE *, void *pData, BYTE *pBlob)
{
#if defined(_DEBUG)
BYTE *pBlobOrigin = pBlob;
unsigned long ulSize = 0;

	GetPolygonGeometrySize (ulCnt, pData, &ulSize);	//lint !e534
	_ASSERTE(!IsBadWritePtr(pBlob, ulSize));
#endif // _DEBUG

	AssignAndAdvance(pBlob, CLSID_TRiASCSPolygonGeometry);
	AssignAndAdvance(pBlob, ulCnt);
	for (unsigned long i = 0; i < ulCnt; i++) 
	{
		((POINTBASE *)pBlob) -> X = *itx;
		((POINTBASE *)pBlob) -> Y = *ity;
		((POINTBASE *)pBlob) -> Z = 0.0;
		++itx; ++ity;
		pBlob += sizeof(POINTBASE);
	}

	_ASSERTE(pBlob-pBlobOrigin == ulSize);
	return S_OK;
}

HRESULT CBlobService::MakeTextGeometryBlob (
	unsigned long ulCnt, double_i itx, double_i ity, POINTBASE *pNormal, void *pData, BYTE *pBlob)
{
#if defined(_DEBUG)
BYTE *pBlobOrigin = pBlob;
unsigned long ulSize = 0;

	_ASSERTE(1 == ulCnt);
	GetTextGeometrySize (ulCnt, pData, &ulSize);
	_ASSERTE(!IsBadWritePtr(pBlob, ulSize));
#endif // _DEBUG
TEXTBLOBDATA *pTBD = (TEXTBLOBDATA *)pData;
size_t uiTextSize = (pTBD -> strText.size() + 1) * sizeof(wchar_t);

	USES_CONVERSION;
	AssignAndAdvance(pBlob, CLSID_TRiASCSTextPointGeometry);

	((POINTBASE *)pBlob) -> X = *itx;
	((POINTBASE *)pBlob) -> Y = *ity;
	((POINTBASE *)pBlob) -> Z = 0.0;
	pBlob += sizeof(POINTBASE);

	AssignAndAdvance(pBlob, pTBD -> dRotation);
	AssignAndAdvance(pBlob, *pNormal);
	AssignAndAdvance(pBlob, pTBD -> lFlags);
	AssignAndAdvance(pBlob, uiTextSize);
	AssignAndAdvance(pBlob, A2OLE(pTBD -> strText.c_str()), uiTextSize);

	_ASSERTE(pBlob-pBlobOrigin == ulSize);
	return S_OK;
}

/////////////////////////////////////////////////////////////////////////////
// MAKEVERTICESPROC
template<class T>
inline void RetrieveAndAdvance (T &rx, BYTE *& p)
{
	memcpy ((void *)&rx, p, sizeof(T));
	p += sizeof(T); 
}

inline void RetrieveAndAdvance (void *px, BYTE *& p, unsigned int iSize)
{
	memcpy (px, p, iSize);
	p += iSize; 
}

HRESULT CBlobService::MakePointVertices (BYTE *pBlob, double_v &rX, double_v &rY, void *pData)
{
	pBlob += sizeof(GUID);						// GUID �bergehen
	rX.push_back (((POINTBASE *)pBlob) -> X);	// Koordinaten lesen								
	rY.push_back (((POINTBASE *)pBlob) -> Y);
	return S_OK;
}

HRESULT CBlobService::MakePolylineVertices (BYTE *pBlob, double_v &rX, double_v &rY, void *pData)
{
	pBlob += sizeof(GUID);					// GUID �bergehen

unsigned long lCnt = 0;

	RetrieveAndAdvance(lCnt, pBlob);
	for (unsigned long i = 0; i < lCnt; i++) 
	{
		rX.push_back (((POINTBASE *)pBlob) -> X);	// Koordinaten lesen								
		rY.push_back (((POINTBASE *)pBlob) -> Y);
		pBlob += sizeof(POINTBASE);
	}
	return S_OK;
}

HRESULT CBlobService::MakePolygonVertices (BYTE *pBlob, double_v &rX, double_v &rY, void *pData)
{
	pBlob += sizeof(GUID);					// GUID �bergehen

unsigned long lCnt = 0;

	RetrieveAndAdvance(lCnt, pBlob);
	for (unsigned long i = 0; i < lCnt; i++) 
	{
		rX.push_back (((POINTBASE *)pBlob) -> X);	// Koordinaten lesen								
		rY.push_back (((POINTBASE *)pBlob) -> Y);
		pBlob += sizeof(POINTBASE);
	}
	return S_OK;
}

HRESULT CBlobService::MakeTextVertices (BYTE *pBlob, double_v &rX, double_v &rY, void *pData)
{
	USES_CONVERSION;

TEXTBLOBDATA *pTBD = (TEXTBLOBDATA *)pData;

	pBlob += sizeof(GUID);						// GUID �bergehen

	rX.push_back (((POINTBASE *)pBlob) -> X);	// Koordinaten lesen								
	rY.push_back (((POINTBASE *)pBlob) -> Y);
	pBlob += sizeof(POINTBASE);

	RetrieveAndAdvance(pTBD -> dRotation, pBlob);
	pBlob += sizeof(POINTBASE);					// Normale �bergehen
	RetrieveAndAdvance(pTBD -> lFlags, pBlob);

// Text einlesen
ULONG uiTextSize = 0;
LPOLESTR pText = NULL;

	RetrieveAndAdvance(uiTextSize, pBlob);
	ATLTRY(pText = new OLECHAR[uiTextSize]);
	if (NULL == pText) return E_OUTOFMEMORY;

	RetrieveAndAdvance(pText, pBlob, uiTextSize);
	pTBD -> strText = OLE2A(pText);
	DELETE_OBJ(pText);

	return S_OK;
}

/////////////////////////////////////////////////////////////////////////////
// Erzeugen eines VT_UI1-SAFEARRAY aus einem Koordinatenfeld
HRESULT CreateSABlobFromVertices (
	double_v &rX, double_v &rY, POINTBASE *pNormal, void *pData, REFCLSID rClsId, SAFEARRAY **pSA)
{
	if (NULL == pSA)
		return E_POINTER;

	COM_TRY {
	// resultierende Gr��e feststellen
	unsigned long ulSize = 0;
	CBlobService MakeBlobs;

		_ASSERTE(rX.size() == rY.size());
		THROW_FAILED_HRESULT(MakeBlobs.GetBlobSize (rClsId, rX.size(), pData, &ulSize));

	// SAFEARRAY anlegen und Daten �bernehmen
	CSafeArray sa (VT_UI1, ulSize);

		if (!sa) _com_issue_error(E_OUTOFMEMORY);
		{
		CSafeArrayLock<BYTE> lock (sa);

			THROW_FAILED_HRESULT(MakeBlobs.MakeBlob (rClsId, rX.size(), rX.begin(), rY.begin(), pNormal, pData, lock));
		} // lock goes out of scope

		*pSA = sa.Detach();		// Ergebnis liefern

	} COM_CATCH;
	return S_OK;
}

// Erzeugen eines BYTE-Blobs aus einem Koordinatenfeld
HRESULT CreateBlobFromVertices (
	unsigned long ulCnt, double_i itx, double_i ity, 
	POINTBASE *pNormal, void *pData, REFCLSID rClsId, void **ppBlob, unsigned long *plSize)
{
	if (NULL == ppBlob || NULL == plSize)
		return E_POINTER;

BYTE *pNewData = NULL;

	COM_TRY {
	// resultierende Gr��e feststellen
	unsigned long ulSize = 0;
	CBlobService MakeBlobs;

		THROW_FAILED_HRESULT(MakeBlobs.GetBlobSize (rClsId, ulCnt, pData, &ulSize));

	// SAFEARRAY anlegen und Daten �bernehmen
		pNewData = (BYTE *)::CoTaskMemAlloc (ulSize);
		if (NULL == pNewData) _com_issue_error(E_OUTOFMEMORY);

		THROW_FAILED_HRESULT(MakeBlobs.MakeBlob (rClsId, ulCnt, itx, ity, pNormal, pData, pNewData));

	// Ergebnisse liefern
		*ppBlob = pNewData;
		*plSize = ulSize;

	} COM_CATCH_OP(::CoTaskMemFree(pNewData));
	return S_OK;
}

// Erzeugen einer BoundaryGeometry aus einem Feld von Koordinatenfeldern
HRESULT CreateSABlobBoundaryFromArray (
	unsigned long lCnt, void **ppData, unsigned long *pSizes, SAFEARRAY **pSA)
{
	COM_TRY {
	// GesamtGr��e feststellen: Boundary  ExteriorSize   Exterior    HolesSize
	unsigned long ulSize = sizeof(GUID) + sizeof(long) + pSizes[0] + sizeof(long);
	//						    GeomColl       numItems
	unsigned long ulHolesSize = sizeof(GUID) + sizeof(long);

		for (unsigned long i = 1; i < lCnt; i++) 
		//				   ItemSize       Item
			ulHolesSize += sizeof(long) + pSizes[i];

	// SAFEARRAY anlegen und Daten �bernehmen
	CSafeArray sa (VT_UI1, ulSize+ulHolesSize);

		if (!sa) _com_issue_error(E_OUTOFMEMORY);
		{
		CSafeArrayLock<BYTE> lock (sa);
		BYTE *pBlob = lock;
		unsigned long iFirst = 0;

		// Exterior erzeugen
			AssignAndAdvance(pBlob, CLSID_TRiASCSBoundaryGeometry);
			AssignAndAdvance(pBlob, pSizes[0]);
			AssignAndAdvance(pBlob, ppData[0], pSizes[0]);

			AssignAndAdvance(pBlob, ulHolesSize);
			AssignAndAdvance(pBlob, CLSID_TRiASCSGeometryCollection);
			AssignAndAdvance(pBlob, lCnt-1);

			for (unsigned long j = 1; j < lCnt; j++) {
				AssignAndAdvance(pBlob, pSizes[j]);
				AssignAndAdvance(pBlob, ppData[j], pSizes[j]);
				_ASSERTE(pBlob - lock <= ulSize+ulHolesSize);
			}

		// abschlie�ende Tests
			_ASSERTE(pBlob - lock == ulSize+ulHolesSize);
		} // lock goes out of scope

		*pSA = sa.Detach();		// Ergebnis liefern

	} COM_CATCH;
	return S_OK;
}

///////////////////////////////////////////////////////////////////////////////
// Erzeugen einer St�tzpunktliste aus einem SafeArray
HRESULT CreateVerticesFromSABlob (
	SAFEARRAY *pSA, double_v &rX, double_v &rY, void *pData, REFCLSID rClsId)
{
	COM_TRY {
	CSafeArray sa (VT_UI1);

		if (!sa.Attach (pSA, true))
			return E_UNEXPECTED;

		{
		CSafeArrayLock<BYTE> lock (sa);
		CBlobService MakeBlobs;

			THROW_FAILED_HRESULT(MakeBlobs.MakeVertices (rClsId, lock, rX, rY, pData));
		} // lock goes out of scope

	} COM_CATCH;
	return S_OK;
}

/////////////////////////////////////////////////////////////////////////////
// Erzeugen einer St�tzpunktfolge aus einem Blob
HRESULT CreateVerticesFromBlob (
	BYTE *pBlob, double_v &rX, double_v &rY, void *pData, REFCLSID rClsId)
{
CBlobService MakeBlobs;

	return MakeBlobs.MakeVertices (rClsId, pBlob, rX, rY, pData);
}

/////////////////////////////////////////////////////////////////////////////
// Erzeugen einzelner Blobs aus einer Kantenfolge 
HRESULT CreateArrayFromSABlobBoundary (SAFEARRAY *pSA, vector<BYTE *> &rBlobs, vector<unsigned long> &rSizes)
{
	COM_TRY {
	// SAFEARRAY anlegen und Daten �bernehmen
	CSafeArray sa (VT_UI1);

		if (!sa.Attach (pSA, true))
			_com_issue_error(E_UNEXPECTED);

		{
		CSafeArrayLock<BYTE> lock (sa);
		BYTE *pBlob = lock;

		// GUID �bergehen
			_ASSERTE(InlineIsEqualGUID (*(GUID *)pBlob, CLSID_TRiASCSBoundaryGeometry));
			pBlob += sizeof(GUID);				// GUID �bergehen

		// Exterior einlesen
		unsigned long ulSize = 0;

			RetrieveAndAdvance(ulSize, pBlob);
			rSizes.push_back(ulSize);			// Gr��e des BLOB's speichern

		BYTE *pData = (BYTE *)::CoTaskMemAlloc (ulSize);

			if (NULL == pData) _com_issue_error(E_OUTOFMEMORY);
			RetrieveAndAdvance(pData, pBlob, ulSize);
			rBlobs.push_back (pData);

		// L�cher behandeln
		unsigned long ulHolesSize = 0;

			RetrieveAndAdvance(ulHolesSize, pBlob);

		// GUID �bergehen
			_ASSERTE(InlineIsEqualGUID (*(GUID *)pBlob, CLSID_TRiASCSGeometryCollection));
			pBlob += sizeof(GUID);

#if defined(_DEBUG)
		long ulHolesSizeDeb = 0;
#endif // _DEBUG
		long lCnt = 0;		// Anzahl der L�cher

			RetrieveAndAdvance(lCnt, pBlob);
			for (unsigned long j = 0; j < lCnt; j++) {
			unsigned long ulHole = 0;

				RetrieveAndAdvance(ulHole, pBlob);
				rSizes.push_back(ulHole);

				pData = (BYTE *)::CoTaskMemAlloc (ulHole);
				if (NULL == pData) _com_issue_error(E_OUTOFMEMORY);

				RetrieveAndAdvance(pData, pBlob, ulHole);
				rBlobs.push_back (pData);

#if defined(_DEBUG)
				ulHolesSizeDeb += ulHole;
				ulHolesSizeDeb += sizeof(unsigned long);
				_ASSERTE(pBlob - lock <= ulSize+ulHolesSize+sizeof(GUID)+2*sizeof(unsigned long));
#endif // _DEBUG
			}

		// abschlie�ende Tests
			_ASSERTE(pBlob - lock == ulSize+ulHolesSize+sizeof(GUID)+2*sizeof(unsigned long));
			_ASSERTE(ulHolesSizeDeb+sizeof(GUID)+sizeof(long) == ulHolesSize);
		} // lock goes out of scope

	} COM_CATCH;
	return S_OK;
}

/////////////////////////////////////////////////////////////////////////////
// Feststellen, obs eine Boundaraygeometrie ist
BOOL BlobHasBoundaryGeometry (SAFEARRAY *pSA)
{
// SAFEARRAY anlegen und Daten �bernehmen
CSafeArray sa (VT_UI1);

	if (!sa.Attach (pSA, true))
		return FALSE;

CSafeArrayLock<GUID> lock (sa);

	return InlineIsEqualGUID(CLSID_TRiASCSBoundaryGeometry, *(GUID *)lock);
}

} // namespace geometryblob;
