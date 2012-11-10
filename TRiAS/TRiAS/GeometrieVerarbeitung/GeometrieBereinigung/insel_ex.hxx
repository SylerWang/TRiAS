// Deklaration des Geometriefehlers "Insel au�erhalb einer Fl�che"
// File: INSEL_EX.HXX
// W. M�rtl

#ifndef _INSEL_EX_HXX
#define _INSEL_EX_HXX


class InselExt : public GeoFehler
{
protected:
	int _iKaNr;	// Index der au�erhalb liegenden Innenkontur
	EPunkt _AP1;	// Kopie der Koordinaten des Anfangspunktes der externen Insel
	EPunkt _AP2;	// Kopie der Koordinaten des Anfangspunktes der Au�enkontur

public:
// Konstruktoren/Destruktor
	// KaNr KantenIndex
	InselExt (EObjekt& GO, int KaNr);
	InselExt (InselExt&);
	~InselExt (void);

// weitere Elementfunktionen
	int RK (void) const {return _iKaNr;}

	bool AddGeoFehler (GeoFehlerListe&);
	void AnalysePuffern (string& sAnalyseText, CoordTransX* pCT);
	void ZweiKonturen (int&, int&) {};	// nur f�r Konturinzidenz
	GEOFEHLERTYP GetType (void) { return GFT_ExterneInsel; }
};

#endif // _INSEL_EX_HXX
