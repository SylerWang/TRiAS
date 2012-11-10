// Definitionen: Routinen f�r die Markierungsquadrate der St�tzpunkte
// File: Marker.cpp
// W. M�rtl


#include "GeoEditP.h"

#include "Marker.h"


#if defined(_DEBUG)
#undef THIS_FILE
static char BASED_CODE THIS_FILE[] = __FILE__;
#endif



// --------------------------------------------------------------------------------------------
// Konstruktoren
#if defined (MSCC8)
#pragma warning (disable: 4355)	// Ausschalten von uninteressanten Warnungen
#endif
Marker :: Marker (Point& MPt, int mg, ulong ulGW, long lONr)
		: m_P (SolidLine, 1, Color ((ColorVal)ulGW, (ColorVal)ulGW, (ColorVal)ulGW)),
		  m_B (BLACK),
		  RectangleObject (Point (MPt.X()-mg/2, MPt.Y()-mg/2), Dimension(mg,mg), &m_P, &m_B)
{
	m_lONr = lONr;	// lONr = 0 ist m�glich, wenn eben keine Objektnummer �bergeben wird
}

Marker :: Marker (Color BoundC, int iThick, Point& MPt, int mg, long lONr)
		: m_P (SolidLine, iThick, BoundC), m_B (BLACK),
		  RectangleObject (Point (MPt.X()-mg/2, MPt.Y()-mg/2), Dimension(mg, mg), &m_P, &m_B)
{
	m_lONr = lONr;	// lONr = 0 ist m�glich, wenn eben keine Objektnummer �bergeben wird
}

Marker :: Marker (Color C, Color BoundC, int iThick, Point& MPt, int mg, long lONr)
		: m_P (SolidLine, iThick, BoundC), m_B (C),
		  RectangleObject (Point (MPt.X()-mg/2, MPt.Y()-mg/2), Dimension(mg, mg), &m_P, &m_B)
{
	m_lONr = lONr;	// lONr = 0 ist m�glich, wenn eben keine Objektnummer �bergeben wird
}
#if defined (MSCC8)
#pragma warning (default: 4355)
#endif


// --------------------------------------------------------------------------------------------
// Memberfunktionen
void Marker :: Process (Point newPt) 
{
	// pt ist Member von RectangleObject : ShapeObject : DrawObject, u. z. der linke untere Punkt
	// dim ist Member von RectangleObject : ShapeObject
	pt.X() = newPt.X() - dim.Width()/2;
	pt.Y() = newPt.Y() - dim.Height()/2;
}


// --------------------------------------------------------------------------------------------
// Mittelpunkt des Markierungsquadrates
Point Marker :: GetMPoint (void)
{	
	// dim ist Member von RectangleObject : ShapeObject
	return Point (pt.X() + dim.Width()/2, pt.Y() + dim.Height()/2);
}


// --------------------------------------------------------------------------------------------
void Marker :: SetMPoint (Point Pt)
{
	pt.X() = Pt.X() - dim.Width()/2;
	pt.Y() = Pt.Y() - dim.Height()/2;
}


// --------------------------------------------------------------------------------------------
Rectangle Marker :: newR (void)
{
	return Rectangle (pt.Y()+dim.Height(), pt.X(), pt.Y(), pt.X()+dim.Width());
}


// --------------------------------------------------------------------------------------------
// neue F�llfarbe setzen
void Marker :: SetFillColor (Color colNewColor)
{
	m_B = Brush (colNewColor);
}
