///////////////////////////////////////////////////////////////////////////
// @doc 
// @module GKKrassCoordTrans.cpp | Implementation of the CGKKrassCoordTrans
// class

#include "stdafx.h"

#include <Com/PropertyHelper.h>

#include "GKCtf_COM.h"
#include "GKKrassCoordTrans.h"
#include "Strings.h"
#include "Wrapper.h"

#include "CtfGeoGK.h"
#include "CTFExContext.h"

#ifdef _DEBUG
#undef THIS_FILE
static char BASED_CODE THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// externe Funktionen
extern "C" LPSTR PASCAL DtoACTF (LPSTR, LPSTR, int iPrec, double);


/////////////////////////////////////////////////////////////////////////////////
//// Ellipsoid�berg�nge f�r GK-Koordinaten
//
/////////////////////////////////////////////////////////////////////////////////
//// Rechnet Koords (geod!) des 'native' Ellipsoids in GK Koordinaten des jeweils 
//// anderen Ellipsoids um
//void CGKKrassCoordTrans::ConvertEllipse (
//	int iStrBreite, int iMeridian, long double dYGeod, long double dXGeod,
//	long double *pdYOut, long double *pdXOut)
//{
//	ASSERT(NULL != pdXOut);
//	ASSERT(NULL != pdYOut);
//
//	if (m_rgChangeEllipse == m_rgEllipseNative) {
//	// kein Ellipsoid-�bergang notwendig
//		geogau (HA, HB, iStrBreite, iMeridian, dYGeod, dXGeod, KS, pdYOut, pdXOut);
//	} 
//	else {
//	long double dX, dY;
//	long double dXOffset, dYOffset;
//
//	// in GK Koordinaten umrechnen
//		geogau (HA, HB, iStrBreite, iMeridian, dYGeod, dXGeod, KS, &dY, &dX);
//
//		switch (m_rgChangeEllipse) {
//		case CTFELLIPSE_Bessel:
//			{
//			// (ELLIPSE_KRASSOVSKI)
//			// �bergang KrassovskyGK-->BesselGK
//				ASSERT(m_fAllowChangeEllipse);
//
//				long double dXOut, dYOut;
//
//				gaugeo (HA_BESSEL, HB_BESSEL, iStrBreite, iMeridian, 
//						dY, dX, KS_BESSEL, &dYOut, &dXOut);
//				modko_B (dYOut, dXOut, &dYOffset, &dXOffset);
//				*pdXOut = dX - dXOffset;
//				*pdYOut = dY - dYOffset;
//			}
//			break;
//
//		case CTFELLIPSE_Krassovsky:
//			{
//			// (ELLIPSE_KRASSOVSKI)
//			// kein �bergang
//				ASSERT(CTFELLIPSE_Krassovsky == m_rgChangeEllipse);	// snh
//			}
//			break;
//
//		case CTFELLIPSE_Etrs89:
//			{
//			// (ELLIPSE_KRASSOVSKI)
//			// �bergang KrassovskyGK-->Etrs89UTM
//				ASSERT(m_fAllowChangeEllipse);
//				KrassGrs80 (dY, dX, pdYOut, pdXOut);
//			}
//			break;
//		}
//	}
//}
//
/////////////////////////////////////////////////////////////////////////////////
//// Rechnet GK des jeweils anderen Ellipsoids in 'native' Koordinaten (geod) um
//void CGKKrassCoordTrans::InvConvertEllipse (
//	int iStrBreite, int iMeridian, long double dY, long double dX,
//	long double *pdYOut, long double *pdXOut)
//{
//	ASSERT(NULL != pdXOut);
//	ASSERT(NULL != pdYOut);
//
//	if (m_rgEllipseNative == m_rgChangeEllipse) {
//	// kein Ellipsoid-�bergang notwendig
//		gaugeo (HA, HB, iStrBreite, iMeridian, dY, dX, KS, pdYOut, pdXOut);
//	} 
//	else {
//	long double dXOut, dYOut;
//	long double dOffsetX, dOffsetY;
//
//		switch (m_rgChangeEllipse) {	// ZielEllipse
//		case CTFELLIPSE_Bessel:
//			{
//			// (ELLIPSE_KRASSOVSKI)
//			// �bergang BesselGK-->KrassovskyGK
//				ASSERT(m_fAllowChangeEllipse);
//
//				gaugeo (HA_BESSEL, HB_BESSEL, iStrBreite, iMeridian, 
//						dY, dX, KS_BESSEL, &dYOut, &dXOut);
//				modko_B (dYOut, dXOut, &dOffsetY, &dOffsetX);
//				dXOut = dX + dOffsetX;
//				dYOut = dY + dOffsetY;
//			}
//			break;
//
//		case CTFELLIPSE_Krassovsky:
//			{
//			// (ELLIPSE_KRASSOVSKI)
//			// kein �bergang
//				ASSERT(CTFELLIPSE_Krassovsky == m_rgChangeEllipse);	// snh
//			}
//			break;
//
//		case CTFELLIPSE_Etrs89:
//			{
//			// (ELLIPSE_KRASSOVSKI)
//			// �bergang Etrs89UTM-->KrassovskyGK
//				ASSERT(m_fAllowChangeEllipse);
//				Grs80Krass (dY, dX, &dYOut, &dXOut);
//			}
//			break;
//		}
//
//	// in geod�tische Koordinaten umsetzen
//		gaugeo (HA, HB, iStrBreite, iMeridian, dYOut, dXOut, KS, pdYOut, pdXOut);
//	}
//}


/////////////////////////////////////////////////////////////////////////////
// CGKKrassCoordTrans
void CGKKrassCoordTrans::InitVars(ITRiASProperties *pIProps)
{
// voreinstellen auf Bessel, Gau�/Kr�ger 6(12)
// (ELLIPSE_KRASSOVSKI)
//	HA = HA_KRASSOVSKY;
//	HB = HB_KRASSOVSKY;
long lMode = GetProperty (pIProps, g_cbShowGKCoords, 1L , LOCALE_ENGLISH);

	KS = KS_KRASSOVSKY;
	m_rgChangeEllipse = (CCoordTrans::COORDTRANSELLIPSE)CTFELLIPSE_Krassovsky;
	m_rgEllipseNative = (CCoordTrans::COORDTRANSELLIPSE)CTFELLIPSE_Krassovsky;
	m_iMeridian = DEF_MERIDIAN_KRASSOVSKY;		// Meridian f�r GK
	m_iStrBreite = DEF_STRBREITE_KRASSOVSKY;	// Streifenbreite f�r GK

	switch (lMode) {
	case 1:
		m_CTFType = CTF_TransMercator;
		m_CTFMode = CTFMODE_SelectMeridian;
		break;

	default:
	case 2:
		m_CTFType = CTF_TransMercator;
		m_CTFMode = CTFMODE_AutoMeridian;
		break;

	case (1 | 0x04):
		m_CTFType = CTF_TransMercator;
		m_CTFMode = CTFMODE_SelectMeridian;
		if (m_fAllowChangeEllipse) 
			m_rgChangeEllipse = (CCoordTrans::COORDTRANSELLIPSE)CTFELLIPSE_Etrs89;
		break;

	case (2 | 0x04):
		m_CTFType = CTF_TransMercator;
		m_CTFMode = CTFMODE_AutoMeridian;
		if (m_fAllowChangeEllipse) 
			m_rgChangeEllipse = (CCoordTrans::COORDTRANSELLIPSE)CTFELLIPSE_Etrs89;
		break;

	case (1 | 0x08):
		m_CTFType = CTF_TransMercator;
		m_CTFMode = CTFMODE_SelectMeridian;
		if (m_fAllowChangeEllipse) 
			m_rgChangeEllipse = (CCoordTrans::COORDTRANSELLIPSE)CTFELLIPSE_Bessel;
		break;

	case (2 | 0x08):
		m_CTFType = CTF_TransMercator;
		m_CTFMode = CTFMODE_AutoMeridian;
		if (m_fAllowChangeEllipse) 
			m_rgChangeEllipse = (CCoordTrans::COORDTRANSELLIPSE)CTFELLIPSE_Bessel;
		break;

	case 0:
		m_CTFType = CTF_Geodetical;		// JG990126 lMode = 0 means geodetic not native
		m_CTFMode = CTFMODE_AutoMeridian;
		break;

	case 0x04:
		m_CTFType = CTF_Geodetical;
		m_CTFMode = CTFMODE_AutoMeridian;
		if (m_fAllowChangeEllipse) 
			m_rgChangeEllipse = (CCoordTrans::COORDTRANSELLIPSE)CTFELLIPSE_Etrs89;
		break;

	case 0x08:
		m_CTFType = CTF_Geodetical;
		m_CTFMode = CTFMODE_AutoMeridian;
		if (m_fAllowChangeEllipse) 
			m_rgChangeEllipse = (CCoordTrans::COORDTRANSELLIPSE)CTFELLIPSE_Bessel;
		break;
	}
}


/////////////////////////////////////////////////////////////////////////////
// ICoordTransform
// Properties

STDMETHODIMP CGKKrassCoordTrans::get_Description(BSTR * pVal)
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
	CHECKPOINTER(pVal);

CString	strDesc, text;
char cbStrBreite[16];
char cbMeridian[16];

	if (CTF_Geodetical == m_CTFType) {
	// 'Geod�tische Koordinaten - '
		ATLTRY (strDesc.LoadString (IDS_DESCRIPTION));
	} 
	else {
		wsprintf (cbStrBreite, "%d", m_iStrBreite);

		if (m_rgChangeEllipse != CTFELLIPSE_Etrs89) {
		// GK Projektion
			if (CTFMODE_AutoMeridian == m_CTFMode) {
			// 'Gau�/Kr�ger (%d� Streifen) - '
				AfxFormatString1 (strDesc, IDS_DESCRIPTIONGKAUTO, cbStrBreite);
			} 
			else {
			// 'Gau�/Kr�ger (%d/%d) - '
				wsprintf (cbMeridian, "%d", m_iMeridian);
				AfxFormatString2 (strDesc, IDS_DESCRIPTIONGK, cbMeridian, cbStrBreite);
			}
		}
		else {
		// UTM Projektion
			if (CTFMODE_AutoMeridian == m_CTFMode) {
			// 'UTM (%d� Streifen) - '
				AfxFormatString1 (strDesc, IDS_DESCRIPTIONUTMAUTO, cbStrBreite);
			} 
			else {
			// 'UTM (%d/%d) - '
				wsprintf (cbMeridian, "%d", m_iMeridian);
				AfxFormatString2 (strDesc, IDS_DESCRIPTIONUTM, cbMeridian, cbStrBreite);
			}
		}
	}

	/*if (m_rgEllipseNative != m_rgChangeEllipse) */{
		switch (m_rgChangeEllipse) {
		case CTFELLIPSE_Bessel:
		// 'Bessel-Ellipsoid [System 40/83]'
			VERIFY (text.LoadString (IDS_BESSEL_ELLIPSE));
			break;

		case CTFELLIPSE_Krassovsky:
		// 'Krassovsky-Ellipsoid [System 42/83]'
			VERIFY (text.LoadString (IDS_KRASSOVSKY_ELLIPSE));
			break;

		case CTFELLIPSE_Etrs89:
		// 'Ellipsoid des ETRS89'
			VERIFY (text.LoadString (IDS_ETRS89_ELLIPSE));
			break;
		}
		ASSERT (!text.IsEmpty());
		strDesc += ", ";
		strDesc += text;
	}

CComBSTR bstr (strDesc);

	if (!bstr)
		return Error (g_cbNoMemory, E_OUTOFMEMORY);

	*pVal = bstr.Detach();
	return S_OK;
}

CString CGKKrassCoordTrans::GetEllipseStrings()
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState())

CString str;
CString strT;

	VERIFY(strT.LoadString (IDS_KRASSOVSKY_ELLIPSE));
	str = strT;
	VERIFY(strT.LoadString (IDS_ETRS89_ELLIPSE));
	str += '\n';
	str += strT;
	VERIFY(strT.LoadString (IDS_BESSEL_ELLIPSE));
	str += '\n';
	str += strT;
	return str;
}

CString CGKKrassCoordTrans::GetCoordTypeString(
	int iEllipse, COORDTRANSFORMTYPE rgType)
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState())

UINT uiResId = 0;

	if (CTF_TransMercator == rgType) {
		switch (iEllipse) {
		case CTFELLIPSE_Krassovsky:
		case CTFELLIPSE_Bessel:
			uiResId = IDS_GKCOORDS;
			break;

		case CTFELLIPSE_Etrs89:
			uiResId = IDS_UTMCOORDS;
			break;
		}
	}
	else {
		uiResId = IDS_GEODCOORDS;
	}
	_ASSERTE(0 != uiResId);

CString str;

	VERIFY(str.LoadString(uiResId));
	return str;
}

CString CGKKrassCoordTrans::GetInternalCoordTypeString()
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState())

CString str;

	VERIFY(str.LoadString(IDS_INTERNALKOORDS_DLG));
	return str;
}

TRIASCSGEODETICDATUM CGKKrassCoordTrans::GetGeodDatum(int rgEllipse,
	bool fNativeEllipe)
{
TRIASCSGEODETICDATUM rgDatum = tcsGD_Undefined;

	switch (rgEllipse) {
	case CTFELLIPSE_Krassovsky:
		rgDatum = tcsGD_Pulkovo1942;
		break;

	case CTFELLIPSE_Bessel:
		rgDatum = tcsGD_DeutscheHauptdreiecksnetzRd83DHDN;
		break;

	case CTFELLIPSE_Etrs89:
		rgDatum = tcsGD_EuropeanTerrestrialReferenceSystem89;		
		break;
	}

	_ASSERTE(tcsGD_Undefined != rgDatum);
	return rgDatum;
}

double CGKKrassCoordTrans::GetScaleFactor(int rgEllipse)
{
	switch (rgEllipse) {
	case CTFELLIPSE_Krassovsky:
		return KS_KRASSOVSKY;

	case CTFELLIPSE_Bessel:
		return KS_BESSEL;

	case CTFELLIPSE_Etrs89:
		return KS_ETRS89;
	}
	_ASSERTE(FALSE);
	return 1.0;
}
