// Deklaration des Geometriefehlers "Selbstinzidenz"
// File: SELBINZI.HXX
// W. M�rtl

#ifndef _SELBINZI_HXX
#define _SELBINZI_HXX


class SelbstInzid : public GeoFehler
{
protected:
	int _iKaNr;			// Index der Kante mit Selbstinzidenz
	EPunkt _GemPkt1; 	// gemeinsamer Punkt (Schnitt-, Ber�hrungs-, Wiederholungspunkt,
						// 1. Randpunkt eines �berlappten Streckenabschnitts)
	EPunkt _GemPkt2; 	// 2. Randpunkt eines �berlappten Streckenabschnitts
	SchnittErg _Form;	// Form der Selbstinzidenz
						// ECHT      echter Schnitt
						// RAND      Wiederholung in der St�tzpunktfolge
						// INNEN     Randpunkt der einen Strecke liegt im "Inneren" der
						//           anderen Strecke
						// UEBERLAPP �berlappung von Strecken
	EKante* _pEndLoop;	// abgetrennte Schleife vom Ende einer Kante

public:
// Konstruktoren/Destruktor
	SelbstInzid (EObjekt& GO, int iKaNr, EPunkt& GemPkt1, EPunkt& GemPkt2, SchnittErg Form,
		         EKante* _pEndLoop = NULL);
	SelbstInzid (SelbstInzid&);
	~SelbstInzid (void);

// Elementfunktionen
	int RK (void) const { return _iKaNr; }
	EPunkt RP (int i) const
		{ if (i == 1) return _GemPkt1; else return _GemPkt2; }
	SchnittErg RF (void) const { return _Form; }
	void SetEndLoop (EKante* pLKt) { _pEndLoop = pLKt; }
	EKante* GetEndLoop (void) const { return _pEndLoop; }

	bool AddGeoFehler (GeoFehlerListe&);
	void AnalysePuffern (string& sAnalyseText, CoordTransX* pCT);
	void ZweiKonturen (int&, int&) {};		// nur f�r Konturinzidenz
	GEOFEHLERTYP GetType (void) { return GFT_Selbstinzidenz; }
};

#endif // _SELBINZI_HXX
