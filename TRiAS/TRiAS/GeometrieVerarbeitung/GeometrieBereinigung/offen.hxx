// Deklaration des Geometriefehlers "Offene Kontur einer Fl�che"
// File: OFFEN.HXX
// W. M�rtl

#ifndef _OFFEN_HXX
#define _OFFEN_HXX


class Offen : public GeoFehler
{
protected:
	int _iKaNr;			// Index der Kante mit fehlendem Schlu�punkt
	bool _bDblCoord;	// Koordinaten des Ursprungsobjektes im double- (true) bzw.
						// KoOrd-Format (false)
	EPunkt _OPkt;		// Kopie der Koordinaten des erg�nzten Punktes bzw. Verustpunktes

public:
// Konstruktoren/Destruktor
	Offen (EObjekt& GO, int iKaNr, bool bDblCoord);
	Offen (Offen&);
	~Offen (void);

// weitere Elementfunktionen
	int RK (void) const {return _iKaNr;}
	EPunkt ROP (void) const {return _OPkt;}

	bool AddGeoFehler (GeoFehlerListe&);
	void AnalysePuffern (string& sAnalyseText, CoordTransX* pCT);
	void ErrorCorrection (void);
	void ZweiKonturen (int&, int&) {};	// nur f�r Konturinzidenz
	GEOFEHLERTYP GetType (void) { return GFT_OffeneKontur; }
};

#endif // _OFFEN_HXX
