// $Header: $
// Copyright� 1998-2000 TRiAS GmbH Potsdam, All rights reserved
// Created: 14.09.2000 21:21:48 
//
// This file was generated by the TRiASDB Data Server Wizard V1.02.103 (#HK000729)
//
// THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY 
// KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A PARTICULAR 
// PURPOSE.
//
// @doc
// @module SampleDataTypes.h | Demodaten f�r Beispieldataserver

#if !defined(_SAMPLEDATATYPES_H__0331942B_FC2A_4B7C_B9EA_47A565D45FCC__INCLUDED_)
#define _SAMPLEDATATYPES_H__0331942B_FC2A_4B7C_B9EA_47A565D45FCC__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

// Header include diagnostics
#if defined(_TRIAS_DBG_HEADER_DIAGNOSTICS)
#pragma message(__TIME__": include " __FILE__ )
#endif

#if !defined(_countof)
#define _countof(x)	(sizeof(x)/sizeof(x[0]))
#endif // !defined(_countof)

namespace sample_data {

///////////////////////////////////////////////////////////////////////////////
// Daten zu einem Attribut
	typedef struct tagFEATUREDESC {
		FEATURETYPE m_rgType;
		const OLECHAR *m_pcoleName;			// Name 
		const OLECHAR *m_pcoleDescription;	// Beschreibung
	} FEATUREDESC;

	typedef struct tagFEATURE {
		int m_iFeatDesc;					// Attributbeschreibung
		const OLECHAR *m_pcoleFeature;		// Attributwert
	} FEATURE;

	typedef struct GEOMETRY {
		int m_iCoordinates;					// Anzahl der St�tzpunkte der Geometrie
		const double *m_pdX;				// Feld der Rechtswerte
		const double *m_pdY;				// Feld der Hochwerte
		int m_iContours;					// Anzahl der Konturen
		const long *m_plContours;			// L�nge der Konturen
	} GEOMETRY;

///////////////////////////////////////////////////////////////////////////////
// Daten zu einem Objekt
	typedef struct tagOBJECT {
		const OLECHAR *m_pcoleGuid;			// eindeutige Objektkennung
		OBJECTTYPE m_rgType;				// Objekttyp
		int m_iFeatureCount;				// Anzahl der Attribute
		const FEATURE *m_pFeatures;			// Attribute
		const GEOMETRY *m_pGeometry;		// Geometrie
	} OBJECT;

///////////////////////////////////////////////////////////////////////////////
// Daten zu einer Objektklasse
	typedef struct tagOBJECTCLASS {
		const OLECHAR *m_pcoleOKS;			// Objektklassenschl�ssel
		const OLECHAR *m_pcoleName;			// Name 
		const OLECHAR *m_pcoleDescription;	// Beschreibung
		OBJECTTYPE m_rgTypes;				// Typen der zugeh�rigen Objekte
		int m_iObjectCount;					// Anzahl der Objekte
		const int *m_pObjects;				// zugeh�rige Objekte
		int m_iFeatDescCount;				// Anzahl der Attribute
		const int *m_iFeatDescs;			// Attribute, die alle Objekte dieser Objektklasse besitzen
	} OBJECTCLASS;

///////////////////////////////////////////////////////////////////////////////
// Attributbeschreibungen
	#define FEATURE_OBJEKTNAME		0
	#define FEATURE_BEBAUUNGSGRAD	1
	#define FEATURE_TEXT			2

///////////////////////////////////////////////////////////////////////////////
// Beispieldaten
	extern const GEOMETRY g_Container;				// umschlie�endes Rechteck aller Geometrien
	extern const OBJECTCLASS *g_ObjectClasses[];	// s�mtliche Objektklassen
	extern const OBJECT *g_Objects[];				// s�mtliche Objekte
	extern const FEATUREDESC g_FeatDescs[];			// s�mtliche Attributbeschreibungen

	extern const int g_iObjectClassCount;			// Anzahl der Objektklassen
	extern const int g_iObjectCount;				// Anzahl der Objekte
	extern const int g_iFeatDescCount;				// Anzahl der Objekteigenschaftsbeschreibungen

} // namespace sample_data

#endif // !defined(_SAMPLEDATATYPES_H__0331942B_FC2A_4B7C_B9EA_47A565D45FCC__INCLUDED_)
