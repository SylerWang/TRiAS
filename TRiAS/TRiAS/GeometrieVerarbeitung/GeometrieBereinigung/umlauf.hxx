// Deklaration des Geometriefehlers "falscher Umlaufsinn einer Fl�chenkontur"
// File: UMLAUF.HXX
// W. M�rtl

#ifndef _UMLAUF_HXX
#define _UMLAUF_HXX


class Umlauf : public GeoFehler
{
protected:
	int _iKaNr;		// Index der Kontur mit fehlerhaftem Umlaufsinn
	double _dFlInh;	// Fl�cheninhalt der Kontur, dessen Umlaufsinn bestimmt werden soll.
					// Ist Fl�cheninhalt == 0., kann Umlaufsinn nicht bestimmt werden.

public:
// Konstruktoren/Destruktor
	Umlauf (EObjekt& GO, double& dFlInh, int iKaNr);
	Umlauf (Umlauf&);
	~Umlauf (void);

// weitere Elementfunktionen
	int RK (void) const {return _iKaNr;}
	double RFI (void) const {return _dFlInh;}

	bool AddGeoFehler (GeoFehlerListe&);
	void AnalysePuffern (string& sAnalyseText, CoordTransX*);
	void ErrorCorrection (void);
	void ZweiKonturen (int&, int&) {};	// nur f�r Konturinzidenz
	GEOFEHLERTYP GetType (void) { return GFT_FalscherUmlauf; }
};

#endif // _UMLAUF_HXX
