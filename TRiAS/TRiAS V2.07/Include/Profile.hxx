// Klassendeklarationen f�r lokale Profile-Dateien ----------------------------
// File: PROFILE.HXX

#if !defined(_PROFILE_HXX)
#define _PROFILE_HXX

// Konstanten f�r Ansichtenverwaltung
#define MAXSIGHTS	200	// max. Anzahl der Ansichten
#define SIGHTMENUITEM	40	// max. L�nge eines Menuitems

#if !defined(NOPROFILE)

class DBaseRel;

// Verwaltung einer ProfileDatei
class ProFile {
protected:
	char *_FullName;	// Pfadname der ProfileDatei
	const char *_pResTarget;	// evtl. ResourceFile

public:
// Konstruktor
	_TRIAS02_ENTRY EXPORT02 ProFile (const char *Project, const char *pResTarget = NULL);

// Memberfunktionen
// Identifikatorweises einf�rben
	Bool SetIdEntry (long Id, Color C, Bool Fill, int Prio);
	Color *GetIdEntry (long Id, Bool &Fill, int &Prio);

// Verwaltung der vorhergehenden DB's
	Bool SetOldDB (short i, char *DB, char *UN, Bool PWD, Bool RO);
	Bool SetOldDBEntry (short i, char *EntryString);
	Bool GetOldDBEntry (short i, char *EntryString, int len);
	char *GetOldDBName (short i);
	char *GetOldUserName (short i);
	Bool GetOldPWDMode (short i);
	Bool GetOldROMode (short i);

// Verwaltung der Ansichten (Sight's)
	char *GetStandardSight (void);
	void SetStandardSight (char *);

// Verwalten der Merkmalskodes, die Bildinfo enthalten
//	long ReadImageCode (char *Id = NULL);

// Verwalten des MerkmalsKodes, der Objektnamen enth�lt
	long GetObjNameCode (char *pOKS = NULL, bool *pfForceMCode = NULL);

// Verwaltung der MerkmalsCodes f�r dBaseDateien
//	int ReadDBaseCodes (long **MKs, char ***MStrs, char *Id = NULL);

// Verwaltung der DBaseRelationen
//	int ReadDBaseRelations (DBaseRel &Master, DBaseRel ***pppDR, char *pId = NULL);

// als DQL-Editor zu verwendendes Programm
//	char *EDName (char *, short);

// Extensions laden
_TRIAS02_ENTRY int EXPORT02 SetPreLoad (char *, int);
_TRIAS02_ENTRY int EXPORT02 GetPreLoad (char *);

// Letzten verwendeten Ident verwalten
	long GetLastIdent (void);
	void SetLastIdent (long lIdent);

// Destruktor
	_TRIAS02_ENTRY EXPORT02 ~ProFile (void);
};
#endif // NOPROFILE

#endif // _PROFILE_HXX
