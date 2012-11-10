/*
File: MERKMAL.HXX
realiert die Verwaltung einer Merkmals-Tabelle.

erarbeitet : J. Benkenstein                 Stand vom 12.1.1994
*/

#ifndef _MERKMAL_HXX
#define _MERKMAL_HXX

enum TableTypes { PatTable, AatTable, OtherTable, UnknownTable };

//  Die Klasse speichert alle Informationen zu einem Merkmal.
class Merkmal {
private:
// Attribute
    Bool _Valid;            // G�ltigkeitsflag
    long _MK;               // f�r Merkmal vergebener Kode
    pchar _pName;           // Merkmalsname
    short _La;              // L�nge des Merkmals
    short _MaxLa;           // max. L�nge
    short _Col;             // Spalte im Merkmalssatz
    Bool _Result;           // Konstruktor-Flag

public:
//  Konstruktor/Destruktor
    Merkmal (long MK, pchar Name, short La, short Col);
    ~ Merkmal (void);

// sonstige Member
    Bool Result (void) { return _Result; }
    long  MerkmalsKode (void) { return _MK; }
    pchar MerkmalsName (void) { return _pName; }
    short &MerkmalsLaenge (void) { return _La; }
    short &MerkmalsSpalte (void) { return _Col; }
    Bool &Valid (void) { return _Valid; }
    short &MaxLa (void) { return _MaxLa; }

//  friend Funktionen
    void* GetMName (void *pObj);            // Get-Key-Funktion
	int CompareNames (void *pObj1, void *pObj2);
};

class Entries;
//  Die Klasse verwaltet Merkmalsbeschreibungen.
class MerkmalsBaum : public CTree {
private:
//  Attribute
    long _Cnt;          // Anzahl der auszugebenden Merkmalss�tze
    short _ActCol;      // aktuelle Lesespalte
    Bool _OutTXM;       // Merkmale bereits in PBD ausgegeben ?
    
//	Daten f�r "sonstige" Tabellen    
    char *_pTableName;	// Tabellen-Name (nur f�r "sonstige" Tabellen gespeichert)
    OFSTRUCT _of;
    HFILE _fh;
    
public:
	TableTypes _TableType;			// Tabellentyp	    

protected:
    void __export UserDelete (void *pObj);

	// n�chsten Merkmalssatz aus Eingabe-Datei lesen
    Bool _ReadNextRecord (pchar pBuffer, short Cnt);
                                
    //	Merkmal in Text-Datei ausgeben
	Bool _OutputMerkmal (char *pMerkmalsWert);    	

public:
//  Konstruktor/Destruktor
    MerkmalsBaum (void);
    ~ MerkmalsBaum (void);      // Tabelleninhalt l�schen

// sonstige Member
	// wenn Name g�ltig, dann neuen Eintrag in Liste erzeugen,
	// sonst nur Spaltenz�hler weitersetzen
    Bool AddMerkmal (short La, pchar pMerkmalsName = NULL, Bool UserIDFeld = False);
    
    Bool AddMerkmal (long MKode, pchar pKurzText);

    long &Cnt (void) { return _Cnt; }

	// Merkmale in PBD ausgeben
    Bool OutTXM (void);

	// Merkmale einschlie�lich Geometrie ausgeben
    Bool OutMerkmale (Entries *pE, Bool CheckUniPoly, Bool Output);

	// interne Werte r�cksetzen und Objekte ung�ltig erkl�ren
    Bool Reset (void);

    Bool ReadMerkmale (void);						// alle Merkmalskodes lesen
    
    Bool StoreTableName (char *);					// Tabellen-Name speichern
    
    Bool DeleteUnvalids (void);					// Ung�ltige Eintr�ge l�schen
};
DeclareLock (MerkmalsBaum, Merkmal);

#endif // _MERKMAL_HXX
