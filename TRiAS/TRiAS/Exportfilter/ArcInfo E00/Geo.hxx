/*
File: GEO.HXX

Berechnen von
    - F�cheninhalt,
    - Fl�chen-Schwerpunkt,
    - Fl�chen-Umfang bzw. L�nge einer Linie.

Erarbeitet: J. Benkenstein		    Begonnen am: 8. Mai 1993
*/

#ifndef _GEO_HXX
#define _GEO_HXX

ErrCode SchwerPunkt (GSTRUCT &GS,	    // beinhaltet Geoemetrie-Vektor
		     double &FlI,	    // vorzeichenbeh. Fl�cheninhalt
		     double &X,	   	    // Ergebniskoordinaten,
		     double &Y,		    // im Fehlerfall 0,0
		     long Count,	    // Anzahl der St�tzpunkte
		     long AktIndex = 0);    // aktueller Index

//  berechnet vorz. Fl�cheninhalt, der im Fehlerfall 0 ist
double FlInhalt  (GSTRUCT &GS,			// beinhaltet Geoemetrie-Vektor
				  long Count,			// Anzahl der St�tzpunkte
				  long AktIndex = 0);	// aktueller Index

//  Berechne die L�nge eines gegebenen Vektor
double Laenge (GSTRUCT GS, long Count, long AktIndex = 0);

void CheckLabelPoint (double &Xs, double &Ys,				// alter neuer SPunkt
		      		  GSTRUCT &GS);

void CheckLabelPoint (double &Xs, double &Ys,				// alter neuer SPunkt
		      		  double *pX, double *pY, long lCnt);
					 
#endif
