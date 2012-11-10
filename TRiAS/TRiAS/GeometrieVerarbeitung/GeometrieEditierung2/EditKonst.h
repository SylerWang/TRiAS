// Allgemeine Deklarationen f�r die Erweiterung "Geometrie-Editierung"
// File: EditKonst.h
// W. M�rtl

#ifndef _EDITKONST_H
#define _EDITKONST_H


///////////////////////////////////////////////////////////////////////////////////////////////
// m�gliche Aktivit�ten beim Erfassen eines Objektes
enum AktNeu
{
	OK,			// OK-Button gedr�ckt
	BEENDEN,	// Editierung abschlie�en, Objekt speichern
	ABBRECHEN,	// Editierung abbrechen, Objekt nicht speichern
	LOESCHEN	// St�tzpunkt l�schen
};

// Einteilung der Winkel von Fl�chen
enum StrWinkel
{
	RECHTER,	// ("nahe") 90� bzw. 270�
	GESTRECKT,	// ("nahe") 180�
	ENTARTET,	// 0� bzw. 360�
	ALLGEMEIN,	// alle anderen (NORMAL ist wegen Redefinition nicht m�glich!)
	UNBEKANNT	// noch nicht berechnet
};

// m�gliche Zust�nde beim Rechtwinkligmachen
enum RectMode
{
	RECHTW,	// es gibt Winkel, die rechtwinklig zu machen sind
	KEINRW,	// es gibt keinen Winkel, der rechtwinklig zu machen ist und es gibt auch keinen,
			// der schon exakt rechtwinklig ist (NICHTS ist wegen Redefinition nicht m�glich!)
	EXAKT	// es gibt keinen Winkel, der rechtwinklig zu machen ist, aber es gibt mindestens
			// einen, der schon exakt rechtwinklig ist
};


///////////////////////////////////////////////////////////////////////////////////////////////
// Konstantendefinition
const int iUGr = 8;				// untere Grenze f�r Markierungsquadrate (in Pixel)
const int iOGr = 8;				// obere Grenze f�r Markierungsquadrate (in Pixel)
const ulong ulGW0 = 0x00;		// F�llfarbe eines Markierungsquadrates
const ulong ulGW1 = 0x408040;	// Randfarbe des 1. Markierungsquadrates einer Kante bzw.
								// Fl�chenkontur (Blau=0x40, Gr�n=0x80, Rot=0x40)
const ulong ulGW2 = 0x4040A0;	// Randfarbe des letzten Markierungsquadrat einer Kante
								// (Blau=0x40, Gr�n=0x40, Rot=0xA0)
const int iThick = 1;			// Randst�rke eines Markierungsquadrates
const int iZug = 2;				// Sicherheitszugabe f�r zu bildendes Rechteck bei Neuzeichnen
const int iAway = 2;			// Dialoge und Men�s werden iAway Pixel noch verschoben, damit sie
								// nicht so unmittelbar an einer St�tzpunktmarkierung kleben
const double dRWnkEps = 10.;	// Epsilon f�r rechten Winkel                  { f�r das
const double dGWnkEps = 7.;		// Epsilon f�r gestreckten Winkel              { Recht-
const double dAngrEps = 0.;		// Epsilon Gleichheit der angrenzenden Objekte { winkligmachen
const int iComCnt = 3;			// max. Anzahl m�glicher GrabPunkte f�r CommonBorder

const long lMaxAnz = 500;		// max. Eckenzahl des n-Ecks f�r Kreisfl�che
const long lMinAnz1 = 60;		// min. Eckenzahl des n-Ecks f�r Kreisfl�che (darf nicht 0 sein !!!)
const long lMinAnz2 = 5;		// min. Eckenzahl des n-Ecks f�r Kreisbogen (darf nicht 0 sein !!!)
const double dKantenL = 100.;	// max. Kantenl�nge des zu erzeugenden n-Ecks

const int iDPSize = 18;			// Ausdehnung f�r kreuzf�rmigen RestrictCursor (in Pixel)

#define BMPSIZE_EDIT	6		// Anzahl der Button in der EditToolbar-Bitmap
#define BMPSIZE_DESIGN	2		// Anzahl der Button in der DesignToolbarBitmap

#define DESIGNKEY	1101949		// Schl�ssel f�r Registrier-DB, damit der DesignMode aktiviert wird


///////////////////////////////////////////////////////////////////////////////////////////////
// Stringkonstanten
// TRiAS2
const char RegistryExtPathEdit[] = TEXT("Software\\" REG_COMPANY_KEY "\\" REG_PRODUCT_KEY "\\Extensions\\TRiAS.Editierung.2\\Config");
const char g_cbRegConfig[] = TEXT("Software\\" REG_COMPANY_KEY "\\" REG_PRODUCT_KEY "\\Config");

#if _TRiAS_VER < 0x0300
const char g_cbApplication[] = TEXT("TRiAS.Application.2");
#elif _TRiAS_VER < 0x0400
const char g_cbApplication[] = TEXT("TRiAS.Application.3");
#else
const char g_cbApplication[] = TEXT("TRiAS.Application.4");
#endif // _TRiAS_VER < 0x0400

const char g_cbGeoEdit[] = TEXT("TRiAS.Editierung.2");
const char g_cbGeoEditNewPoint[] = TEXT("PropertySheetHandlers\\NewPoint");
const char g_cbGeoEditNewLine[] = TEXT("PropertySheetHandlers\\NewLine");
const char g_cbGeoEditNewArea[] = TEXT("PropertySheetHandlers\\NewArea");
const char g_cbGeoEditLineElongat[] = TEXT("PropertySheetHandlers\\LineElongation");
const char g_cbGeoEditIslandAdd[] = TEXT("PropertySheetHandlers\\IslandAdd");
// je nach Bedarf andere Keys dazudefinieren


///////////////////////////////////////////////////////////////////////////////////////////////
// eigene Windows-Messages
const UINT WM_WM_SETMYFOCUS = WM_USER + 1000;
const UINT WM_WM_OBJMODIFYEND = WM_USER + 1001;
const UINT WM_WM_DESIGNBUILDEND = WM_USER + 1002;


///////////////////////////////////////////////////////////////////////////////////////////////
// Struktur f�r Daten�bergabe der Routine AddToORWindow()
struct MoveONr
{
	INT_PTR lAltObjNr, lNeuObjNr;	// Objektnummer des Original- und des verschobenen Objektes
};

#endif  // _EDITKONST_H
