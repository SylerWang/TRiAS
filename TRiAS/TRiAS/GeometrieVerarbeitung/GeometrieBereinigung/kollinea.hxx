// Deklaration des Geometriefehlers "Kollinearit�t"
// File: KOLLINEA.HXX
// W. M�rtl

#ifndef _KOLLINEA_HXX
#define _KOLLINEA_HXX


class Kollinearitaet : public GeoFehler 
{
protected:
	long _lSPNr;	// Index des mittleren St�tzpunktes einer Kollinearit�t
	int _iKaNr;		// Index der Kante mit kollinearem Punkt
	EPunkt _KPkt;	// Kopie der koordinaten des kollinearen Punktes

public:
// Konstruktoren/Destruktor
	Kollinearitaet (EObjekt& GO, long lSPNr, int iKaNr);
	Kollinearitaet (Kollinearitaet&);
	~Kollinearitaet (void);

// weitere Elementfunktionen
	long RSN (void) const {return _lSPNr;}
	int RK (void) const {return _iKaNr;}
	EPunkt RKP (void) const {return _KPkt;}

	bool AddGeoFehler (GeoFehlerListe&);
	void AnalysePuffern (string& sAnalyseText, CoordTransX* pCT);
	void ErrorCorrection (void);
	void ZweiKonturen (int&, int&) {};	// nur f�r Konturinzidenz
	GEOFEHLERTYP GetType (void) { return GFT_Kollinearitaet; }
};

#endif // _KOLLINEA_HXX
