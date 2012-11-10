// Allgemeine Deklarationen f�r "Gitterbildung"
// File: GitterKonst.h
// W. M�rtl



#if !defined(__GITTERKONST_H_)
#define __GITTERKONST_H_


// --------------------------------------------------------------------------------------------
// Versionskontrolle
#define VERSION				1
#define LAST_KNOWN_VERSION	1


// --------------------------------------------------------------------------------------------
const UINT WM_DEFINENEWITEM = RegisterWindowMessage("WM_DEFINENEWITEM");


// --------------------------------------------------------------------------------------------
// Konstantendefinitionen f�r die Gitterbildung
const int XBREITE = 100;	// Gitterbreite (in Meter) in x- und y-Richtung bei Gitterbildung
							// f�r einen allgemeinen rechteckigen Bereich
const int BREITEOG = 1000;	// obere Grenze f�r standardm��ig vorgegebene Gitterbreite
const int RANZAHL = 5;		// Anzahl der Gitter in Richtung der kleineren Containerbreite
							// bei Gitterbildung f�r ein konkretes Objekt
const int RGENAU10 = 10;	// Genauigkeit (in Meter), auf die eine zweistellige Gitterbreite gerundet wird
const int RGENAU100 = 100;	// Genauigkeit (in Meter), auf die eine dreistellige Gitterbreite gerundet wird
const int RQUADRAT = 10;	// Gitterbreite (in Meter) f�r ein Punktobjekt bzw. absolut waagrechtes
							// bzw. senkrechtes Linienobjekt

// --------------------------------------------------------------------------------------------
// Werte (in Meter) f�r die Rundung von Koordinaten
const char sRound1[] = "1";
const char sRound10[] = "10";
const char sRound100[] = "100";
const char sRound1000[] = "1000";
const char sRound10000[] = "10000";


// --------------------------------------------------------------------------------------------
// f�r Laden der Dialog-Einstellungen aus einer XML-Datei
const char c_cbGridType[] = "GridType";	// Gittertyp
//const char c_cbTopRightValue[] = "TopRightValue";
//const char c_cbTopHightValue[] = "TopHightValue";
//const char c_cbBottomRightValue[] = "BottomRightValue";
//const char c_cbBottomHighValue[] = "BottomHighValue";
const char c_cbRound[] = "Round";
const char c_cbRoundListIndex[] = "RoundListIndex";
const char c_cbXWidth[] = "XWidth";
const char c_cbYWidth[] = "YWidth";
const char c_cbTurnAngle[] = "TurnAngle";


#endif // !defined(__GITTERKONST_H_)
