// Klassendeklaration der typspezifischen TreeKlasse --------------------------
// Generiert aus CTTREE.CTT

#if !defined(_MLONGSTR_HXX)
#define _MLONGSTR_HXX

// Klasse, die im Baum h�ngen soll --------------------------------------------
class CLongString {
private:
	LONG m_Key;				// Suchschl�ssel
	string m_Data;

public:
		CLongString (LONG lKey, LPCTSTR pData);
		~CLongString (void);

// Funktionen zur SuchSchl�sselVerwaltung
	LONG & FGetLONG (void);		// liefert SuchSchl�ssel
	LPCTSTR FGetData (void) { return m_Data.c_str(); }

friend int FCmpLONG (LONG &, LONG &);	// vergleicht 2 Schl�ssel
};


// Eigentliche typspezifische TreeKlasse --------------------------------------

// Funktionstypen, die Schl�sselverwaltung realisieren ------------------------
typedef void * (* CTTREEGETKEYFCN) (void *);
typedef int (* CTTREECMPKEYFCN)(void *, void *);
  
class CMapLongString : public CTree {
private:
	DWORD m_dwRefCnt;

	DWORD m_dwInsert;	// Zeit der letzten Einf�gung
	DWORD m_dwOpt;		// Zeit der letzten Optimierung

protected:
	void UserDelete (void *pObj);

public:
	DWORD AddRef (void);
	DWORD Release (void);
	
// Konstruktor/Destruktor
		CMapLongString (void);
		~CMapLongString (void);

static CMapLongString *CreateInstance (void);

// Elementarfunktionen
	bool FAddItem (LONG lKey, LPCTSTR pData);	// Element hinzuf�gen
	bool FDeleteItem (LONG &);			// Element l�schen
	CLongString *FFindItem (LONG &);		// Element liefern

// SuchSchl�sselVerwaltung
friend LONG *FCTTreeGetLONG (CLongString *pObj);
friend int FCTTreeCmpLONG (LONG *pObj1, LONG *pObj2);
};

// KlassenDeklarationen/Definitionen f�r TypLock und TypCreator
DeclareLock (CMapLongString, CLongString);

#endif // _MLONGSTR_HXX

