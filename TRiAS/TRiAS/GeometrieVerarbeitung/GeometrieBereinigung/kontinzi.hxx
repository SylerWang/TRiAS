// Deklaration des Geometriefehlers "KonturInzidenz"
// File: KONTINZI.HXX
// W. M�rtl

#ifndef _KONTINZI_HXX
#define _KONTINZI_HXX
    
    
class KonturInzid : public GeoFehler
{
protected:
	int _iKaNr1;		// Index der 1. Kante
	int _iKaNr2;		//  und 2. Kante mit Konturinzidenz
	EPunkt _GemPkt1;	// gemeinsamer Punkt (Schnitt-, Ber�hrungs-, Wiederholungspunkt,
						// 1. Randpunkt eines �berlappten Konturabschnitts)
	EPunkt _GemPkt2;	// 2. Randpunkt eines �berlappten Konturabschnitts
	SchnittErg _Form;	// Form der KonturInzidenz
						// ECHT       echter Schnitt
						// RAND_MIT   St�tzpunktgleichheit mit Seitenwechsel
						// INNEN_MIT  Ber�hrung mit Seitenwechsel
						// UEBERLAPP  Kontur�berlappung
						// BERUE_OHNE (mindest. zweimalige) St�tzpunktgleichheit bzw. Ber�hrung
						//            ohne Seitenwechsel

public:
// Konstruktoren/Destruktor
	KonturInzid (EObjekt& GO, int iKaNr1, int iKaNr2, EPunkt& GemPkt1, EPunkt& GemPkt2,
				 SchnittErg Form);
	KonturInzid (KonturInzid&);
	~KonturInzid (void);

// Elementfunktionen
	int RK (int i) const
		{if (i == 1) return _iKaNr1; else return _iKaNr2;}
	EPunkt RP (int i) const
		{if (i == 1) return _GemPkt1; else return _GemPkt2;}
	SchnittErg RF (void) const {return _Form;}

	bool AddGeoFehler (GeoFehlerListe&);
	void AnalysePuffern (string& sAnalyseText, CoordTransX* pCT);
	void ZweiKonturen (int& iKNrFL1, int& iKNrFL2) {iKNrFL1 = _iKaNr1; iKNrFL2 = _iKaNr2;}
	GEOFEHLERTYP GetType (void) { return GFT_Konturinzidenz; }
};

#endif // _KONTINZI_HXX
