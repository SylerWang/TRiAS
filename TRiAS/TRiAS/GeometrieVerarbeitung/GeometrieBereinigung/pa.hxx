// Deklarationsdatei f�r "Polygonapproximation"
// File: PA.HXX
// W. M�rtl


#ifndef _PA_HXX
#define _PA_HXX

// Approximation einer Punktefolge durch ein Polygon, wobei Punkte, die (in einem erweiterten
// Sinne) kollinear sind, nicht ber�cksichtigt werden
//bool PolygonApproximation (double __huge* pX, double __huge* pY, long& n, double T0, long k0);
bool PolygonApproximation (double* pX, double* pY, long& n, double T0, long k0);


#endif // _PA_HXX
