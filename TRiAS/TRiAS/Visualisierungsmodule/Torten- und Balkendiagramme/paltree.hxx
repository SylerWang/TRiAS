// Klassendeklaration der typspezifischen TreeKlasse --------------------------
// Generiert aus CTTREE.CTT

#if !defined(_PALTREE_HXX)
#define _PALTREE_HXX

typedef const char *pChar;				// SuchSchl�sselTyp

// Klasse, die im Baum h�ngen soll --------------------------------------------
const short MAXPALETTENAMELEN = 32;

class CVisPalette {
private:
	char * m_pPName;				// Suchschl�ssel
	FVisInfo *m_pFVI[MAXPIECOLORS];		// VisualisierungsInfos
	short m_iNumDigits;			// Anzahl der Nachkommastellen

public:
		CVisPalette (void);
		~CVisPalette (void);

// Initialisierung
	BOOL FInit (pChar pName = NULL, LPSTORAGE pIStorage = NULL);
	BOOL FInit (CVisPalette &rVP);

// Setzen einer konkreten VisInfo aus dieser Palette
	FVisInfo *GetFVisInfo (short i) 
		{ return (FVisInfo *)m_pFVI[i] -> Copy(); }
	void SetFVisInfo (FVisInfo *pFVI, short i)
		{ DELETE_OBJ(m_pFVI[i]); m_pFVI[i] = (FVisInfo *)pFVI -> Copy(); }
	
	HRESULT Load (LPSTORAGE);		// Laden der Palette
	HRESULT Save (LPSTORAGE);		// Speichern der Palette
	
	BOOL RetrievePalette (HPALETTE &hPal);
	
	short GetNumDigits (void) { return m_iNumDigits; }
	void SetNumDigits (short iNumDigits) { m_iNumDigits = iNumDigits; }

static CVisPalette *GetDefaultVisPalette (void);

// Funktionen zur SuchSchl�sselVerwaltung
	pChar & FGetpChar (void);		// liefert SuchSchl�ssel
friend int FCmppChar (pChar &, pChar &);	// vergleicht 2 Schl�ssel
};


// Eigentliche typspezifische TreeKlasse --------------------------------------
// Funktionstypen, die Schl�sselverwaltung realisieren ------------------------
typedef void * (* CTTREEGETKEYFCN) (void *);
typedef int (* CTTREECMPKEYFCN)(void *, void *);
  
typedef Bool (* CVisPaletteEnumFunc)(CVisPalette &, void *);

  
class CVisPaletteTree : public CTree {
protected:
	void UserDelete (void *pObj);

public:
// Konstruktor/Destruktor
		CVisPaletteTree (void);
		~CVisPaletteTree (void);

// Elementarfunktionen
	BOOL FAddItem (pChar pPName, LPSTORAGE pIStorage = NULL);	// Element hinzuf�gen
	BOOL FAddItem (CVisPalette &rVP);
	BOOL FDeleteItem (pChar &);		// Element l�schen
	CVisPalette *FFindItem (pChar &);	// Element liefern

	BOOL SavePalettes (LPSTORAGE pIStorabe, const char *pPals);
	BOOL LoadPalettes (LPSTORAGE pIStorage, const char *pPals);

	CVisPalette *DefinitelyGetPalette (pChar &, const char *pDefName, BOOL &fTemp);
	BOOL RetrievePalette (HPALETTE &hPal);

	BOOL FReInsert (pChar &oldKey, pChar &newKey);

// EnumerationsFunktionen
	BOOL FEnumAllItems (CVisPaletteEnumFunc pFcn, void *pEData = NULL);
	BOOL FEnumItems (pChar &rKey, CVisPaletteEnumFunc pFcn, void *pEData = NULL);

// SuchSchl�sselVerwaltung
friend pChar *FCTTreeGetpChar (CVisPalette *pObj);
friend int FCTTreeCmppChar (pChar *pObj1, pChar *pObj2);
};

// KlassenDeklarationen/Definitionen f�r TypLock und TypCreator
DeclareLock (CVisPaletteTree, CVisPalette);

#endif // _PALTREE_HXX

