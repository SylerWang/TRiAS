// $Header: $
// Copyright� 1999-2002 GEOPunkt GmbH, NL Potsdam, All rights reserved
// Created: 18.01.2002 14:10:04 
//
// @doc
// @module GeometryObjects.h | Declaration of the <c CGeometryObjects> class

// WMObjRechteck und Elementarobjekte WMPunkt, WMKante, WMFlaeche
// Original: W. M�rtl

#if !defined(_GEOMETRYOBJECTS_H__4272BEC2_5135_4F70_A44C_DBA868DC886B__INCLUDED_)
#define _GEOMETRYOBJECTS_H__4272BEC2_5135_4F70_A44C_DBA868DC886B__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

// Header include diagnostics
#if defined(_TRIAS_DBG_HEADER_DIAGNOSTICS)
#pragma message(__TIME__": include " __FILE__ )
#endif

#include <limits>
#include "GeometryObjectsFwd.h"

namespace trias_wmgeometry {

///////////////////////////////////////////////////////////////////////////////
// Konstantendefinitionen
const double Pi = 3.141592653589793238462643383279502884197169399;

// dGlEps ist die zul�ssige Abweichung bei EpsGleich() bzw. EpsUngleich().
// Eigentlich m��te sqrt(2)/2 = 0.7071 (die halbe Diagonale eines Quadrates mit der
// Kantenl�nge 1) ausreichen.
// In mindestens einem Fall reicht dies aber nicht aus: So wurde eine Fl�che mit Inseln
// geschnitten. Zwischen dem Schnitt der Au�enkontur und den Innenkonturen wurden jeweils die
// double-Koordinaten auf KoOrd-Koordinaten gerundet, da die Ergebnisfl�che ein
// GeoFlaeche-Objekt ist. Dadurch ragte die Ergebnisfl�che mehr als sqrt(2)/2 �ber die
// schneidende Fl�che hinaus. Ein erneuter Schnitt (nun aber mit dem WMSchnittErgebnis des ersten
// Schnittes) h�tte noch einmal echte neue Teilfl�chen ergeben.
// Die bisher bekannte gr��te Abweischung betr�gt 0.74275 (08.10.98)
// Die bisher bekannte gr��te Abweischung betr�gt 1.51555 (13.10.98)
const double dGlEps = 1E-6; // was 1.52;		// zul�ssige Abweichung bei Test auf Gleichheit (in DB-Koordinaten)
const double dREps = 1E-6;		// zul�ssiges Rauschen bei double-Koordinaten
const short iKoEps = 6;			// zul�ssige Abweichung bei eps-Kollinearit�t dreier Punkte
const short iCoEps = 6;			// zul�ssige Abweichung bei Container-Durchschnitt
const short iBuEps = 6;			// zul�ssige Abweichung bei Bildung der Pufferelemente

const double dDopEps = 0.;		// zul�ssige Abweichung bei Bereinigung von DoppelPunkt'en (in
								// Meter)
const double dSpiEps = 0.5;		// Grenzwinkel f�r Spitze (in Gradma�)

///////////////////////////////////////////////////////////////////////////////
// WMPosition eines Objektes zu einem Bezugsobjekt
enum WMPosit
{
	INNERH,		// vollst�ndig innerhalb des Bezugsobjektes
	INNERHB,	// innerhalb des Bezugsobjektes ( = Fl�che), aber mit Ber�hrung
				// des Fl�chenrandes
	KONTUR,		// vollst�ndig auf dem Rand des Bezugsobjektes
	AUSSERH,	// vollst�ndig au�erhalb des Bezugsobjektes
	AUSSERHB,	// au�erhalb des Bezugsobjektes, aber mit Ber�hrung des 
				// Bezugsobjektes
	INNAUSS,	// teilweise innerhalb, teilweise au�erhalb des Bezugsobjektes
	UMSCHL,		// au�erhalb des Bezugsobjektes, aber umschlie�t das Bezugsobjekt 
				// vollst�ndig (nur f�r geschlossenes Bezugsobjekt m�glich)
	UMSCHLB,	// au�erhalb des Bezugsobjektes, aber mit Ber�hrung des Bezugs-
				// objektes und umschlie�t das Bezugsobjekt vollst�ndig (nur 
				// f�r geschlossenes Bezugsobjekt m�glich)
	OFFEN,		// Rand des Bezugsobjektes ( = Fl�che) nicht geschlossen
	UNKLAR,		// vorzeitiges Ende bei falschen Parametern, unzureichendem 
				// dynamischen Speicher oder Abbruch durch den Anwender
	GLEICH		// beide Objekte sind identisch
};

///////////////////////////////////////////////////////////////////////////////
// Position eines Objektes zu einem Bezugsobjekt (nach der OGC-Norm)
enum OGCWMPosit
{
	WITHIN,		// vollst�ndig innerhalb des Bezugsobjektes
	CONTAIN,	// �berdeckt das Bezugsobjekt vollst�ndig
	OVERLAP,	// teilweise innerhalb, teilweise au�erhalb des Bezugsobjektes 
				// (nur f�r die Kombinationen Linie/Linie und Fl�che/Fl�che; 
				// der Durchschnitt beider Objekte mu� die gleiche Dimension 
				// wie die Vergleichsobjekte haben)
	ENTER,		// teilweise innerhalb, teilweise au�erhalb des Bezugsobjektes 
				// (nur f�r die Kombinationen Linie/Linie, Linie/Fl�che und 
				// Fl�che/Linie; der Durchschnitt beider Objekte mu� eine 
				// geringere Dimension als die gr��ere der beiden Dimensionen 
				// der Vergleichsobjekte haben)
	TOUCH,		// ber�hrt das Bezugsobjekt von au�en
	EQUAL,		// vollst�ndig identisch mit dem Bezugsobjekt
	DISJOINT,	// keinerlei Gemeinsamkeiten mit dem Bezugsobjekt
	INTERSECT,	// mindestens ein Punkt mit dem Bezugsobjekt gemeinsam 
				// (NOT DISJOINT)
	UNCLEAR		// vorzeitiges Ende bei falschen Parametern, unzureichendem 
				// dynamischen Speicher oder Abbruch durch den Anwender
};

///////////////////////////////////////////////////////////////////////////////
// m�gliche Ergebnisse bei Test auf �berschneidung der Strecken zweier Kanten
enum WMSchnittErg
{
	KEINE,		// keine �berschneidung
	ECHT,		// �berschneidung, so da� Schnittpunkt jeweils im "Inneren" der beiden
				// Strecken liegt (echter Schnitt)
	RAND,		// �berschneidung, so da� Schnittpunkt bei beiden Strecken ein Randpunkt
				// ist, Seitenwechsel ist noch nicht gekl�rt (Randpunktber�hrung)
	RAND_MIT,	// �berschneidung, so da� Schnittpunkt bei beiden Strecken ein Randpunkt
				// ist und ein sofortiger Seitenwechsel erfolgt (Randpunktber�hrung)
	RAND_OHNE,	// Ber�hrung in einem Punkt, der bei beiden Strecken ein Randpunkt ist, ein
				// Seitenwechsel erfolgt nicht (Randpunktber�hrung)
	INNEN,		// Ber�hrung in einem Punkt, der bei einer Strecke ein Randpunkt ist, bei der
				// anderen in deren "Inneren" liegt, Seitenwechsel ist noch nicht gekl�rt
				// (Innenber�hrung)
	INNEN_MIT,	// �berschneidung, so da� Schnittpunkt bei einer Strecke ein Randpunkt ist,
				// bei der anderen in deren "Inneren" liegt und ein sofortiger Seitenwechsel
				// erfolgt (Innenber�hrung)
	INNEN_OHNE,	// Ber�hrung in einem Punkt, der bei einer Strecke ein Randpunkt ist, bei der
				// anderen in deren "Inneren" liegt, ein Seitenwechsel erfolgt nicht
				// (Innenber�hrung)
	BERUE_OHNE,	// Randpunkt- oder Innenber�hrung ohne Seitenwechsel
	UEBERLAPP	// �berlappung beider Strecken
};

///////////////////////////////////////////////////////////////////////////////
// Objekttypen
enum WMObjTyp { 
	OT_PUNKT,	// Punkt
	OT_KANTE,	// Polylines
	OT_FLAECHE, // Polygones/PolyPolygones
	OT_KREIS,	// Kreis - not used here
	OT_KO,		// Komplexe Geometrie - not used here
	OT_TEXT,	// Text - not used here
	OT_UNKNOWN,	// Unbekannt
	OT_LABEL,	// Indirektes Textobjekt - not used here
};

///////////////////////////////////////////////////////////////////////////////
// ausw�hlbare Lage f�r Lagebestimmung der Schnittergebnisse
#define LINN	0x01			// Objekt liegt innerhalb,
#define LAUSS	0x02			//  au�erhalb,
#define LINAU	LINN | LAUSS	//	sowohl innerhalb als auch au�erhalb,
#define LKONT	0x04			//  auf der Kontur des schneidenden Objektes

///////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen 
template <typename KoOrdT>
KoOrdT KoOrdAbs (KoOrdT x);

template <typename KoOrdT>
KoOrdT KoOrdMin (KoOrdT x, KoOrdT y);

template <typename KoOrdT>
KoOrdT KoOrdMax (KoOrdT x, KoOrdT y);

// Konvertierung von double nach long
template <typename KoOrdT>
KoOrdT DtoLH (double D);
template <>
double DtoLH (double D);

#define DtoL(d) DtoLH<KoOrdT>(d)

///////////////////////////////////////////////////////////////////////////////
// Gemeinsame Basisklasse f�r ElementarObjekte
template <typename KoOrdT>
class WMObjekt 
{
protected:
// Konstruktor
	WMObjekt();

public:
// Destruktor
	virtual ~WMObjekt();

// rein virtuelle Funktionen
	virtual WMObjTyp isA() const = 0;		// liefert Objekttyp
	virtual WMPosit EnthaltenIn (WMFlaeche<KoOrdT> *, void* pPSt = 0) = 0;

	virtual bool 
	Clipping (WMObjekt *pEO, int iOT, unsigned long ulLageAusw, 
		WMClipListe<KoOrdT> &CL, int iSkip, WMPosit &Lage, bool &bAbbr, 
		void *pPSt);
	virtual bool AddClipObjekt (WMClipListe<KoOrdT> &CL);
};

} // namespace trias_wmgeometry

///////////////////////////////////////////////////////////////////////////////
// sonstige Geometrien
#include "Geometries/BasicFunctions.h"
#include "Geometries/ErrorCorrection.h"

#include "Geometries/Rechteck.h"
#include "Geometries/Punkt.h"
#include "Geometries/Strecke.h"
#include "Geometries/MarkObjects.h"
#include "Geometries/Kante.h"
#include "Geometries/Flaeche.h"
#include "Geometries/Clipliste.h"

///////////////////////////////////////////////////////////////////////////////
// include inline definitions
#include "GeometryObjects.inl"

#endif // !defined(_GEOMETRYOBJECTS_H__4272BEC2_5135_4F70_A44C_DBA868DC886B__INCLUDED_)
