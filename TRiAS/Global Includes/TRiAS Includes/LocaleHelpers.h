///////////////////////////////////////////////////////////////////////////////
// @doc
// @module LocaleHelpers.h | Hilfsfunktionen / Klassen f�r die Verwaltung
//		l�nderspezifischer Einstellungen
//
// @class CSetLocale | Setzen der locale-Einstellungen f�r einen bestimmten Kontext
// @normal Ein CSetLocale - Objekt setzt l�nderspezifische Einstellungen 
//		innerhalb seiner Lebensdauer. Es kann typischerweise wie folgt genutzt werden:
// @ex |
//	double Foo( ) {
//		CSetLocale	l( _T("German") );	// deutsch einstellen
//		double d = atof( _T("5,2") );	// geht gut
//		d = atof( _T("2.5") );			// geht schief
//		return d;
//	}									// l geht Out of scope - 
//										// alte L�ndereinstellung wiederherstellen

#if !defined(__LOCALE_HELPERS_H__42F52700_6930_11d2_9842_0060085FC1CE)
#define __LOCALE_HELPERS_H__42F52700_6930_11d2_9842_0060085FC1CE

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#include "locale.h"

class CSetLocale 
{
private:
	os_string m_strCurrLocale;
	int	m_category;

public:
	// @cmember Constructor. 
	CSetLocale(LPCTSTR lpszRequiredLocale = NULL, int category = LC_ALL)
	{
		TCHAR	strUserLocale[_MAX_PATH];
		m_strCurrLocale = setlocale( category, NULL );
		if( NULL == lpszRequiredLocale ) {
			int i = ::GetLocaleInfo( LOCALE_USER_DEFAULT, LOCALE_SENGLANGUAGE, strUserLocale, sizeof(strUserLocale) );
			lpszRequiredLocale = strUserLocale;
		}
		LPCTSTR lpszFullQualifiedLocale = setlocale( category, lpszRequiredLocale );
		_ASSERTE( NULL != lpszFullQualifiedLocale );
		m_category = category;
	}
// @normal Wenn (NULL == lpszRequiredLocale) wird die L�ndereinstellung des aktuellen Nutzers eingestellt.

// @cmember Destructor.
	virtual ~CSetLocale() {
		if (m_strCurrLocale.size() > 0) 
			setlocale(m_category, m_strCurrLocale.c_str());
	}
};

#endif // __LOCALE_HELPERS_H__42F52700_6930_11d2_9842_0060085FC1CE
