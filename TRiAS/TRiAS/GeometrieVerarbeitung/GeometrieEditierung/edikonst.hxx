// Allgemeine Deklarationen f�r "Editier-Funktionen"
// File: EDIKONST.HXX
// W. M�rtl

#if !defined(_EDIKONST_HXX)
#define _EDIKONST_HXX


// m�gliche Editier-Funktionen
enum ObjOp
{
	NEUERFASSEN,		// GeoObjekt neu erfassen
	OBJ_LOESCHEN,		// GeoObjekt l�schen
	PKT_VERSCHIEBEN,	// St�tzpunkt verschieben
	PKT_GREIFEN,		// St�tzpunkt greifen
	OBJ_VERSCHIEBEN,	// GeoObjekt verschieben
	OBJ_DREHEN,			// GeoObjekt drehen
	OBJ_TEILEN,			// GeoObjekt teilen
};

// m�gliche Aktivit�ten beim Neuerfassen eines Objektes
enum AktNeu
{
	VERWERFEN,	// Neuerfassung verwerfen, Objhekt nicht speichern
	BEENDEN,	// Neuerfassung abschlie�en, Objekt speichern
	FORTSETZEN,	// Neuerfassung fortsetzen
	ZUZIEHEN,	// Linienobjekt zuziehen
	LOESCHEN,	// letzten St�tzpunkt l�schen
	INSEL,		// mit dem n�chsten St�tzpunkt beginnt eine Insel
	KREIS,		// aus den letzten 3 St�tzpunkten wird Kreis(bogen) gebildet
};

// m�gliche Cursorpositionen
enum CursPosit
{
	IN_PUNKT,	// Cursor im Marker eines St�tzpunktes
	AUF_STRECKE,// Cursor in der N�he einer Strecke
	IN_OBJEKT,	// Cursor innerhalb eines markierten Objektes
	KEIN_BEZUG	// Cursor weder im Marker eines St�tzpunktes noch in der N�he einer Strecke
};

// Cursorformen bei Modifizierung vorhandener bzw. Neuerfassung von Geometrieobjekte
enum Curs
{
	PFEIL,		// Standard-Cursor
	STERN,		// Cursorposition liegt innerhalb einer St�tzpunktmarkierung (bei Modifizieren von
				//  Objektgeometrieen)
	TRENNER,	// Cursorposition liegt "in der N�he" einer Kante bzw. Fl�chenkontur
	KREUZ,		// Cursorposition liegt innerhalb einer St�tzpunktmarkierung und CTRL-Taste
				//  wurde zus�tzlich gedr�ckt
	INOBJEKT,	// Cursorposition liegt innerhalb eines markierten Objektes
	FANGEN		// Cursorposition liegt innerhalb einer St�tzpunktmarkierung (bei Neuerfassen von
				//  Objektgeometrieen)
};


// ************************************************************************************************
// Konstantendefinition
const short iUGr = 6;	// Standardwert (untere Grenze) f�r Pixelanzahl der Markierungsquadrate
const short iOGr = 20;	// Standardwert (obere Grenze) f�r Pixelanzahl der Markierungsquadrate
const uchar GW = 0;		// Color (Rot=GW, Gr�n=GW, Blau=GW) f�r Rand der Markierungsquadrate
const uchar GW1 = 100;	// Color (Rot=GW1, Gr�n=GW1, Blau=GW1) f�r Rand des 1. Markierungsquadrates
const int zug = 2;		// Sicherheitszugabe f�r zu bildendes Rechteck bei Neuzeichnen


// ******************************************************************************************
// Struktur f�r Daten�bergabe der Routine AddToORWindow()
struct MoveONr
{
	long lAltObjNr, lNeuObjNr;	// Objektnummer des Original- und des verschobenen Objektes
};

struct MultiVtx
{
	short iIndSel;	// Anzahl der selektierten Objekte, zu denen der St�tzpunkt geh�rt,
					// auf den der Cursor zeigt
	long* plONrSel;	// Objektnummer der Objekte, die den St�tzpunkt besitzen, auf den der
					// Cursor zeigt
	short iAnz;		// Anzahl der m_plONrSel-Objekte, die gleichzeitig ein aktiviertes Objekt sind
	long lAktObj;	// Objektnummer eines dieser aktivierten Objekte
};

#endif  // _EDIKONST_HXX
