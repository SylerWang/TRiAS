// Deklaration des Geometriefehlers "Ung�ltige Koordinaten"
// File: BADPUNKT.HXX
// W. M�rtl

#ifndef _BADPUNKT_HXX
#define _BADPUNKT_HXX


class BadPunkt : public GeoFehler
{
protected:
	long _lSPNr;	// alter Index des ung�ltigen St�tzpunktes
	int _iKaNr;		// Index der Kante mit ung�ltigem Punkt
	EPunkt _BPkt;	// Kopie der Koordinaten des ung�ltigen Punktes

public:
// Konstruktoren/Destruktor
	BadPunkt (EObjekt& GO, long lSPNr, int iKaNr);
	BadPunkt (BadPunkt&);
	~BadPunkt (void);

// weitere Elementfunktionen
	long RSN (void) const {return _lSPNr;}
	int RK (void) const {return _iKaNr;}
	EPunkt RBP (void) const {return _BPkt;}

	bool AddGeoFehler (GeoFehlerListe&);
	void AnalysePuffern (string& sAnalyseText, CoordTransX* pCT);
	void ErrorCorrection (void);
	void ZweiKonturen (int&, int&) {};	// nur f�r Konturinzidenz
	GEOFEHLERTYP GetType (void) { return GFT_BadPunkt; }
};

#endif // _BADPUNKT_HXX
