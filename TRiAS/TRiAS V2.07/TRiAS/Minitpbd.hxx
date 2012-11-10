// Initialisieren diverser Systemeintraege in einer PBD -----------------------
// File: MINITPBD.HXX

// Struktur enth�lt ResID's f�r verschiedene PBD-Eintr�ge, die automatisch
// vergeben werden
typedef struct tagINITPBDRESID {
	short iTyp;				// Target und Zugeh�rigkeit
	unsigned int uiHeaderKey;	// ResID vom HeaderKey
	unsigned int uiKurzText;	// ResID vom KurzText
	unsigned int uiLangText;	// ResID vom LangText
	DWORD dwHdrFlags;			// Flags f�r HeaderEintrag
	long m_lMCode;				// evtl. zu verwendender MCode
} INITPBDRESID;

#define MITypIdentifikator	0x01
#define MITypMerkmal		0x02
#define MITypRelation		0x04 
#define MITyp				0x07	// Maske f�r alle

#define MISystemMerkmal		0x08	// systeminternes Merkmal
#define MIReadOnlyMerkmal	0x10	// schreibgesch�tztes Merkmal

#define ObjTarget		0x100
#define SichtTarget		0x200
#define IdentTarget		0x400
#define TargetTyp		0x700	// Maske f�r alle

// Funktionsprototyp ---------------------------------------------------------
ErrCode MainInitPbd (GeoDB &DB, unsigned int resID = 0, 
		     Bool iEnterNewCode = FALSE, long lNewCode = -1L);
