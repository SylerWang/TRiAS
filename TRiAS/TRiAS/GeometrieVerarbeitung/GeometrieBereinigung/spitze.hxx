// Deklaration des Geometriefehlers "Spitze"
// File: SPITZE.HXX
// W. M�rtl

#ifndef _SPITZE_HXX
#define _SPITZE_HXX


class Spitze : public GeoFehler
{
private:
//	void ExpenseingRemove (void);
	void SpecialRemove (EKante* pLine, long lLen, bool bClosed, long lVorInd);

protected:
	long _lSPNr;		// Index des spitzen St�tzpunktes
	int _iKaNr;			// Index der Kante mit Spitze
	bool m_bNull;		// Winkel ist exakt 0� (true)
	EPunkt _SPkt;		// Kopie der Koordinaten der Spitze
	double m_dDPEps;	// Grenzwert (in Meter) f�r Test auf "doppelte Punkte"
	DoublePair m_dpUF;	// Transformationsfaktor, mit dessen Hilfe ein in Metern vorgegebener
						// Wert in x- bzw. y-Richtung multipliziert werden mu�, um auf
						// Datenbank-Verh�ltnisse zu kommen
	bool m_bMetric;		// metrische (true) oder geod�tische Datenbank

public:
// Konstruktoren/Destruktor
	// lSPNr St�tzpunktnummer, iKaNr Kantennummer
	Spitze (EObjekt& GO, long lSPNr, int iKaNr, bool bNull, double dDPEps, DoublePair dpUF,
			bool bMetric);
	Spitze (Spitze&);
	~Spitze (void);

// weitere Elementfunktionen
	long RSN (void) const {return _lSPNr;}
	int RK (void) const {return _iKaNr;}
	EPunkt RSP (void) const {return _SPkt;}

	bool AddGeoFehler (GeoFehlerListe&);
	void AnalysePuffern (string& sAnalyseText, CoordTransX* pCT);
	void ErrorCorrection (void);
	void ZweiKonturen (int&, int&) {};	// nur f�r Konturinzidenz
	GEOFEHLERTYP GetType (void) { return GFT_Spitze; }
};


#endif // _SPITZE_HXX
