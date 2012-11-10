// Eingaben und Ergebnisse der Abstandsmessung
// File: ABST_AUS.HXX
// W. M�rtl
      
      
#if !defined(_ABST_AUS_HXX)
#define _ABST_AUS_HXX


#define MESSZEILE 100	// L�nge des Konvertierungspuffers f�r eine Me�zeile


class AbstandsWerte : public ModeLessDialog
{
private:
	MultiLineEdit _Ergebnis;
	FixedText _Abstand;
	PushButton _Speichern, _Vorzeichen, _Loeschen, _Statistik, _Datei, _Automatisch;
	NumEditX _Schritt;
	DoubleNumEditX _Winkel;
	DoubleNumEditX _Zuwachs;

	char m_cGenau;			// Anzahl der Nachkommastellen f�r Anzeige des Abstandes
	int _iSchritt;		// Schrittweite und
	double _dWinkel;		//  Winkel f�r automatische Erzeugung der Abst�nde
	double _dAbst;			// aktueller Abstand
	double _dZIndex;		// einstellbare Zeilennumerierung (Standard: ab 1.0 aufw�rts)
	double _dZuwachs;		// einstellbarer Zuwachs bei der Zeilennumerierung (Standard: 1.0)
	pWindow m_pW;
	int* m_piAnz;	// Anzahl der selektierten (markierten) Objekte in den ge�ffneten
					// Recherchefenstern
					// m_piAnz[0]  Anzahl der selektierten Objekte au�er dem aktivierten
					//             (blinkenden) Objekt
					// m_piAnz[1]  Anzahl der selektierten Fl�chen (evtl. einschl. einer
					//             aktivierten Fl�che)
					// m_piAnz[2]  Anzahl der selektierten Kanten (evtl. einschl. einer
					//             aktivierten Kante)
	int _iOT;			// Typ des aktivierten (blinkenden) Objektes
	char* _pcFileName;	// Name der Datei, in die die Abst�nde abgespeichert werden sollen
	FILE* _fAbst;		// Datei, in die die Abst�nde abgespeichert werden sollen
	int _iAnzAbst;		// Anzahl der f�r Statistik verwendeten Abst�nde
	double _dSumAbst;	// Summe der Abst�nde (f�r Statistik)
	double _dSumAbst2;	// Summe der Abstandsquadrate (f�r Statistik)
	bool _Vorz;			// Vorzeichen f�r gemessene Abst�nde (true = plus, false = minus)
	bool _bSichtb;		// DialogBox ist nicht/sichtbar (false/true)
	bool _bSpForm;		// Speicherform f�r Ergebnisse (true = �berschreiben, false = Anh�ngen)

protected:
	void ButtonClick (ControlEvt);  // Reaktion auf Button-Bet�tigung
	void EditChange (ControlEvt);
	BOOL QueryClose (Event);	// Reaktion auf Bet�tigung des Systemmen�feldes
	int SchrittEinlesen (NumEditX* pEingWert);	// Eingabe der Schrittweite
	void ZIndexEinlesen (void);
//	double DblParamEinlesen (DoubleNumEditX* pEingWert);

	void idb_speichern (void);
	void idb_loeschen (void);
	void idb_datei (void);
	void idb_statistik (void);
	bool idb_automatisch (void);
	void AutomatischSpeichern (void);

public:
// Konstruktor/Destruktor
//		AbstandsWerte (void);
		AbstandsWerte (pWindow, ResID, int iOT, int* piAnz, char cGenau);
		~AbstandsWerte (void);

// Member zur�ckgeben bzw. setzen
	MultiLineEdit* GetErgebnis (void) { return &_Ergebnis; }
	FILE* GetDatei (void) { return _fAbst; }
	bool GetSichtbarkeit (void) { return _bSichtb; }
	void SetSichtbarkeit (bool bSichtb) { _bSichtb = bSichtb; }
	bool GetSpForm (void) { return _bSpForm; }
	void SetSpForm (bool bSpForm) { _bSpForm = bSpForm; }

// weitere Memberfunktionen
	void AbstandEintragen (double dAbst);
	void ErgebnisEintragen (DoublePair AP, DoublePair EP, CoordTransX* pCT);
	char* DateiAuswaehlen (pWindow pParentWindow);
	bool Ueberschreiben (char* pFileName);
};

#endif  // _ABST_AUS_HXX
