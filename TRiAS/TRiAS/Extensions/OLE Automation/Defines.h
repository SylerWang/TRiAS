// Defines.h

#if !defined(_DEFINES_H)
#define _DEFINES_H

///////////////////////////////////////////////////////////////////////////////
// Anzahl der internen ReferenzCounts, die ein Objekt hat, ohne
// von au�en festgehalten zu werden
#define APP_EXTERNAL_THRESHOLD		4	// Application
#define DOC_EXTERNAL_THRESHOLD		3	// GeoDocument
#define DOCS_EXTERNAL_THRESHOLD		0	// GeoDocuments
#define CLASS_EXTERNAL_THRESHOLD	2	// GeoClass
#define CLASSES_EXTERNAL_THRESHOLD	0	// GeoClasses
#define OBJ_EXTERNAL_THRESHOLD		2	// GeoObject
#define OBJS_EXTERNAL_THRESHOLD		0	// GeoObjects
#define FEAT_EXTERNAL_THRESHOLD		1	// GeoFeature
#define FTS_EXTERNAL_THRESHOLD		0	// GeoFeatures
#define OBJWIN_EXTERNAL_THRESHOLD	1	// CGeoObjectWin
#define OBJWINS_EXTERNAL_THRESHOLD	0	// CGeoObjectWins
#define VIEW_EXTERNAL_THRESHOLD		1	// CGeoView
#define VIEWS_EXTERNAL_THRESHOLD	0	// CGeoViews

///////////////////////////////////////////////////////////////////////////////
// sonstige globale Konstanten
#define KTEXTLEN	33			// maximale L�nge des KurzTextes
#define LTEXTLEN	1025		// angenommene maximale L�nge des LangTextes
#define MAXFEATLEN	4097		// angenommene maximale L�nge des Feature

#define VIEWNAMELEN	64			// angenommene maximale L�nge des Ansichtsnamens

///////////////////////////////////////////////////////////////////////////////
// helper, um reine [out] Parameter sauber zu halten
inline BSTR *CLEARED (BSTR *pbstr)
{
	_ASSERTE(NULL != pbstr);
	if (NULL != pbstr) {
		::SysFreeString(*pbstr);
		*pbstr = NULL;
	}
	return pbstr;
}

inline VARIANT *CLEARED (CComVariant *pv)
{
	_ASSERTE(NULL != pv);
	pv -> Clear();
	return pv;
}

#endif // _DEFINES_H
