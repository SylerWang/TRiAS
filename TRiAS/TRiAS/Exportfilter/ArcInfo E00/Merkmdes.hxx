/*
File: MERKMDES.HXX
realiert die Verwaltung eines Merkmal-Beschreibungs-Baumes.

erarbeitet : J. Benkenstein                              Begonnen am 9. Mai 1993
*/

#ifndef _MERKMDES_HXX
#define _MERKMDES_HXX

// Die Klasse ExtMerkmalDescription speichert die "Attribute" eines Merkmals
class ExtMerkmalDescription : public MerkmalDescription
{
private:
//  Attribute
	short _Column;                    // Spalte f�r Datei-Ausgabe (PAT)
	short _ArcColumn;                  // (AAT)
	pchar _pName;                      // konvertierter Merkmals-Name
	ErrCode _RC;                            // Konstruktor-Flag

public:
//  Konstruktor/Destruktor
	ExtMerkmalDescription (MerkmalDescription &MD, short &Column,
			       short &Unknown);  // _RC wird gesetzt
	~ ExtMerkmalDescription (void);

//  sonstige Member
		// Konstruktor-Flag abfragen
	ErrCode Result (void) { return _RC; }

	short & Column (void) { return _Column; }
	short & ArcColumn (void) { return _ArcColumn; }

		 //  Merkmalsnamen lesen, bei Fehler NULL
	pchar GetName (void);

		//  alten Namen l�schen, Zeiger neu setzen
	ErrCode SetName (pchar pNewName);

//  Friend-Funktionen
	friend int CompareMKodes (void *pObj1, void *pObj2);
	friend void* GetMKode (void *pObj);
};

// Die Klasse ExtMerkmalDescriptionTree verwaltet ExtMerkmalDescriptions
// in einem Baum.
class ExtMerkmalDescriptionTree : public CTree
{
private:
// Attribute
	short _ActColumn;        // aktuelle Spalte f�r Datei-Schreiben (PAT)
	short _ActArcColumn;  // (AAT)
	short _Unknown;    // Anzahl unbekannter Merkmalsnamen                             

protected:
	void EXPORTFLT UserDelete (void *pObj);

public:
//  Konstruktor/Destruktor
	ExtMerkmalDescriptionTree (void);   // Attribute init.
	~ ExtMerkmalDescriptionTree (void); // Bauminhalt l�schen

//  sonstige Member
	short & ActColumn (void) { return _ActColumn; }
	short & ActArcColumn (void) { return _ActArcColumn; }

	short FindColumn (long MCode);    // Spalte eines Merkmals �ber
		  // seinen Kode suchen, die im Fehlerfall 0 ist (f�r PAT)

	short FindArcColumn (long MCode);   // Spalte eines Merkmals �ber
		  // seinen Kode suchen, die im Fehlerfall 0 ist (f�r AAT)

	short FindColumnWidth (long MCode); // Spaltebreite eines Merkmals �ber
		  // seinen Kode suchen, die im Fehlerfall 0 ist.

	Bool AddMerkmDescr (MerkmalDescription &MD); // neue Beschrbg. in Baum

		//  Zeiger eines Merkmalstextes lesen, der im Fehlerfall NULL ist
	pchar GetMerkmalName (long MCode);  // und �ber delete freizugeben ist

		//  Neuen Merkmalsnamen speichern
	ErrCode SetMerkmalName (long MCode, pchar pNewName);

		//  True, wenn weiteren Merkmalsnamen gefunden, der nicht
		//  dem �bergebenen Objekt (ID) geh�rt, sonst False
	Bool OtherMerkmalName (long MKode, pchar pMName);

/*
	// alle Merkmalsbeschreibungen mit ung�ltigen Parametern l�schen
	ErrCode DeleteUnvalids (void);
*/
};

DeclareLock (ExtMerkmalDescriptionTree, ExtMerkmalDescription);

#endif // _MERKMDES_HXX
