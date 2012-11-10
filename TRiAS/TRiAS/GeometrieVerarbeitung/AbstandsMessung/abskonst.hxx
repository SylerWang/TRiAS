// Konstanten f�r Abstandsbestimmung
// File: ABSKONST.HXX
// W. M�rtl

#if !defined(_ABSKONST_HXX)
#define _ABSKONST_HXX


// ********************************************************************************************
// Konstantendefinitionen
const long lSpGr = 4096;// Gr��e des Speichers, in dem Me�ergebnisse zwischengespeichert werden
const double dVer = 20;	// ist der Mittelpunktsabstand mindestens dVer-mal gr��er als die
						// gr��te Seite des ein Objekt umschlie�enden Rechtecks, dann wir
						// dieses Objekt automatisch auf den Rechteckmittelpunkt reduziert und
						// f�r die Abstandsberechnung nicht die St�tzpunkte im einzelnen
						// hinzugezogen
const int iOff = 5;	// Abstand f�r Textobjekt von dem dazugeh�rigen Kilometrierungspunkt
						// (in BS-Pixel)

#endif  // _ABSKONST_HXX
