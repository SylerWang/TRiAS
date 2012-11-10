// Deklaration f�r Markierungsquadrat
// File: MARKER.HXX
// W. M�rtl


#ifndef _MARKER_HXX
#define _MARKER_HXX
     

class Marker : public RectangleObject
{
protected:
	long _lONr;		// Nummer des Objektes,
	Pen _P;			// die beiden Gr��en werden f�r die Initialisierung des
	Brush _B;		//  Konstruktors in marker.cxx ben�tigt

public:
// Konstruktor/Destruktor
		// MPt   Mittelpunkt des Markierungsquadrates
		// mg    Gr��e (in Pixel) des Markierungsquadrates in beiden Richtungen
		// GW    Grauwert des Markierungsquadrates
		// lONr	 Objektnummer
		Marker (Point& MPt, short mg, uchar GW, long lONr = 0);
 		~Marker (void);

// Memberfunktionen
	long ONr (void) { return _lONr; }
	Point RecPoint (void) { return pt; }	// pt ist Member von RectangleObject : ShapeObject : DrawObject,
											// u. z. der linke untere Punkt des Markierungsquadrates
	Dimension RecDim (void) { return dim; }	// dim ist Member von RectangleObject : ShapeObject
	void Process (Point Pt);
	Point GetMPoint (void);			// MittelPunkt
	void SetMPoint (Point Pt);
	Rectangle newR (void);			// neues umschlie�endes Rechteck
};

#endif // _MARKER_HXX
