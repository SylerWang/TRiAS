// Konstanten f�r Pufferbildung
// File: BUFKONST.HXX
// W. M�rtl

#if !defined(_BUFKONST_HXX)
#define _BUFKONST_HXX


// ********************************************************************************************
// Konstantendefinitionen
const double dTrigonom45 = 0.70710678118655;	// sin (45�) bzw. cos (45�)
const double dBuffWidth = 50.;	// default-Wert f�r Pufferbreite (in Meter)
const int iBuffNum = 1;			// default-Wert f�r Pufferanzahl
const double dFacEdgeLen = 0.1;	// default-Wert f�r Faktor, mit dem aus der Pufferbreite die
								// Kantenl�nge f�r Approximation eines Kreisbogens an konvexer
								// Ecke ermittelt wird
const int iZug = 5;				// Zugabe in Bildschirmpixel f�r Rechteck beim Neuzeichnen

#endif  // _BUFKONST_HXX
