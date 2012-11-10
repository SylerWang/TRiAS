// Allgemeine Deklarationen f�r "Topologische Relationen"
// File: RelKonst.hxx
// W. M�rtl

#ifndef _RELKONST_HXX
#define _RELKONST_HXX



// ********************************************************************************************
// Versionskontrolle
#define VERSION				1
#define LAST_KNOWN_VERSION	1


// ********************************************************************************************
// Definitionen

// ausw�hlbare Lage f�r Lagebestimmung von GeoObjekten
#define WITH	0x01	// Objekt liegt vollst�ndig innerhalb des Bezugsobjektes
#define CONT	0x02	// Objekt �berdeckt das Bezugsobjekt vollst�ndig
#define OVER	0x04	// Objekt �berlappt das Bezugsobjekt teilweise
#define ENTE	0x08	// Objekt kreuzt das Bezugsobjekt bzw. dringt in dieses ein
#define TOUC	0x10	// Objekt ber�hrt das Bezugsobjekt von au�en
#define EQUA	0x20	// Objekt ist identisch mit dem Bezugsobjekt
#define DISJ	0x40	// Objekt hat keinerlei Gemeinsamkeiten mit dem Bezugsobjekt

// Zusatzinformation bei mehreren Bezugsobjekten
#define All		1		// alle Bezugsobjekte
#define Least	2		// mindestens ... Bezugsobjekte
#define Most	3		// h�chstens ... Bezugsobjekte
#define Exact	4		// genau ... Bezugsobjekte


// ********************************************************************************************
// ClipBoardFormat (f�r Transfer-Objekt bei mehreren Bezugsobjekten)
const char c_cbPATopoRelation[] = "PersistTopoRelation";

// FORMATETC
const FORMATETC c_feClassifyTopoRelation =
{
	RegisterClipboardFormat (c_cbPATopoRelation),	// CLIPFORMAT cf
	NULL,											// DVTARGETDEVICE *ptd
	DVASPECT_CONTENT,								// DWORD dwAspect
	-1,												// LONG lindex	
	TYMED_ISTREAM,									// DWORD tymed
};


// ********************************************************************************************
// Zeichenketten
// f�r Farben im Objektrecherche-Fenster
const char cDefaultColor[] = "255,0,0";		// default
const char cUniversalColor[] = "250,130,0";	// Farbe f�r das Sammelfenster
const char cWithinColor[] = "60,130,220";	// innerhalb
const char cContainColor[] = "30,180,50";	// enthaltend
const char cOverlapColor[] = "0,210,210";	// �berlappend
const char cEnterColor[] = "200,100,0";		// eindringend
const char cTouchColor[] = "220,0,240";		// von au�en ber�hrend
const char cEqualColor[] = "215,215,0";		// identisch
const char cDisjointColor[] = "250,130,0";	// vollst�ndig au�erhalb
const char cUnclearColor[] = "250,0,250";	// unklar (i.d.R. bei Objekten mit Geometriefehlern)

// f�r Laden der Dialog-Einstellungen aus einer XML-Datei
const char c_cbSelectedRelations[] = "SelectedRelations";	// Bitmuster f�r ausgew�hlte Relationen
const char c_cbSeparateWindows[] = "SeparateWindows";		// Analyseergebnisse in separate bzw. ein gemeinsames Fenster ausgeben
const char c_cbMultiReferenceType[] = "MultiReferenceType";	// gew�hlte Methode bei mehreren Bezugsobjekten
const char c_cbRefListIndex[] = "RefListIndex";				// Index in der ComboBox
const char c_cbLimitCounter[] = "LimitCounter";				// Anzahl der Bezugsobjekte f�r "mindestens", "h�chstens" bzw. "exakt"

#endif  // _RELKONST_HXX
