// Transformation und Projektionsparameter, notwendig f�r Zeichnen von DBObj
// File: TRANSFRM.HXX

// IRISWIN: %W% %E%

#ifndef _TRANSFRM_HXX
#define _TRANSFRM_HXX

#include <dblpair.hxx>

#if !defined(NOTRANSFORMATION)
// DefaultProjektionsfunktionen -----------------------------------------------
inline void DefPrj (KoOrd * /*x*/, KoOrd * /*y*/) { /* do nothing */ }
inline Punkt DefInvPrj (Punkt Pt) { return Pt; }

// Klasse, die Transformation beim Zeichnen definiert
class Transformation 
{
#if !defined(NOTRANSFORM)
private:
// Datenbereich (Daten existieren nur einmal (global))
	static CoOrd m_EALeft;			// einzeln, damit Daten NEAR bleiben
	static CoOrd m_EATop;
	static CoOrd m_EARight;
	static CoOrd m_EABottom;

	static KoOrd m_EOCXMin;			// einzeln, damit Daten NEAR bleiben
	static KoOrd m_EOCXMax;
	static KoOrd m_EOCYMin;
	static KoOrd m_EOCYMax;
	static long _ClipRegionObjNr;	// ObjektNummer, an dem geklippt werden soll

// Prim�rdaten
	static KoOrd _xWindowOrg;       // NullPunkt im Fenster
	static KoOrd _yWindowOrg;
	static KoOrd _xWindowExt;       // Fenstergr��e
	static KoOrd _yWindowExt;
	static CoOrd _xViewportOrg;     // NullPunktkoordinaten des Ausschnittes
	static CoOrd _yViewportOrg;
	static CoOrd _xViewportExt;     // Ausschnittsgr��e
	static CoOrd _yViewportExt;
	static CoOrd _xLogPixels;		// AspectRatio
	static CoOrd _yLogPixels;

	static double _Masstab;			// aktueller BildMasstab/Bezugsmasstab

// Sekund�rdaten
	static double _xK;              // Skalierungskoeffizienten
	static double _yK;
	static double _invxK;           // inverser Skalierungskoeffizienten
	static double _invyK;
	static KoOrd _xWindowOffset;    // Transformierter Nullpunkt
	static KoOrd _yWindowOffset;
	static KoOrd _xViewportOffset;  // R�cktransformierter Nullpunkt
	static KoOrd _yViewportOffset;

	static double _CTAspect;		// AspektRatio des Koordinatensystems
#endif // NOTRANSFORM

// private Memberfunktionen
	void SetTransPars (void);       // Transformationsparameter berechnen

protected:
// Funktionen, die zur Berechnung der Projektion verwendet wird
	static void (*_Prj)(KoOrd *x, KoOrd *y);	// HinProjektion
	static Punkt (*_invPrj)(Punkt Pt);			// R�ckprojektion

#if !defined(NOTRANSFORM)
	static bool m_fIsValid;		// Transformationsparameter sind g�ltig
	static bool m_fChanged;		// Transformationsparameter wurden ver�ndert
#endif // NOTRANSFORM
		
public:
// Konstruktoren
		// keine 
		// (Daten sind statisch und werden statisch initialisiert)

// Transformationsfunktionen
friend  Point OCtoDC (KoOrd x, KoOrd y);        // Objekt --> Device
friend	Point OCtoDC (const Punkt &);
#if defined(_FORCE_LEGACY_CODE)
friend	void OCtoDC (Punkt *pPkt, Point *pPt, long lCnt);
friend  void OCtoDC (Punkt *pPkt, Point *pPt, long lCnt, Rectangle &rrcBound);
friend 	void DCtoOC (Point *pPt, Punkt *pPkt, long lCnt);
#else
friend	HRESULT OCtoDC (_DGMGeometry *pPkt, POINT *pPt, long lCnt, struct CSCOORD *pCoords);
#endif // _FORCE_LEGACY_CODE
friend	CoOrd OCtoDCX (KoOrd x);
friend	CoOrd OCtoDCXDelta (KoOrd dX);
friend	CoOrd OCtoDCY (KoOrd y);
friend	CoOrd OCtoDCYDelta (KoOrd dY);

friend  Punkt DCtoOC (const Point &);                 // Device --> Objekt
friend 	Punkt DCtoOC (CoOrd x, CoOrd y);
friend	KoOrd DCtoOCX (CoOrd x);
friend	KoOrd DCtoOCXDelta (CoOrd dX);
friend	KoOrd DCtoOCY (CoOrd y);
friend	KoOrd DCtoOCYDelta (CoOrd dY);

// Einstellen der Transformationsparameter
	Punkt SetWindowOrg (Punkt &);           // Ausschnitt
	Ausdehnung SetWindowExt (Ausdehnung &);
	Point SetViewportOrg (Point &);         // Bezugsfenster
	Dimension SetViewportExt (Dimension &);
	Point SetAspectRatio (Point &, double &);
	double GetAspectRatio();

// Einstellen der Projektionsfunktionen
	void SetPrjFcn (void (*F)(KoOrd *x, KoOrd *y), Punkt (*invF)(Punkt Pt));

// Initialisierungsfunktion
static void InitStaticData (void);

#if !defined(NOTRANSFORM)
static bool IsValid (void) { return m_fIsValid ? true : false; }
static void SetValid (bool fValid = true) { m_fIsValid = fValid ? true : false; }

static bool IsChanged (void) { return m_fChanged ? true : false; }
static void SetChanged (bool fChanged = true) { m_fChanged = fChanged ? true : false; }

// Abfragen der aktuellen Parameter
	Dimension GetViewportExt (void) 
		{ return Dimension (_xViewportExt, _yViewportExt); }
	Point GetViewportOrg (void) 
		{ return Point (_xViewportOrg, _yViewportOrg); }

// Zugriff auf den ung�ltigen FensterBereich
	Rectangle EA (void) 
		{ return Rectangle (m_EATop, m_EALeft, m_EABottom, m_EARight); }
	void SetEA (Rectangle &rc) 
		{ m_EATop = rc.Top(); m_EALeft = rc.Left(), m_EABottom = rc.Bottom(); m_EARight = rc.Right(); }
	ObjContainer ExpOC (void) 
		{ return ObjContainer (m_EOCXMin, m_EOCXMax, m_EOCYMin, m_EOCYMax); }
	void SetExpOC (ObjContainer &oc) 
		{ m_EOCXMin = oc.XMin(); m_EOCXMax = oc.XMax(); m_EOCYMin = oc.YMin(); m_EOCYMax = oc.YMax(); }
	long &ClipRegionONr (void) { return _ClipRegionObjNr; }

// Test auf �berschneidung mit gegebenen ObjContainer
	bool ClipsOC (const ObjContainer &rOC)
	{
		return !(m_EOCXMin > rOC.XMax() || m_EOCXMax < rOC.XMin() || m_EOCYMin > rOC.YMax() || m_EOCYMax < rOC.YMin());
	}
	double &M (void) { return _Masstab; }
#endif // NOTRANSFORM
// Destruktoren
		// ebenfalls keine
};
#else // NOTRANSFORMATION

// Transformationsfunktionen
Point OCtoDC (Punkt &);			// Objekt --> Device
Point OCtoDC (KoOrd x, KoOrd y);
CoOrd OCtoDCX (KoOrd x);
CoOrd OCtoDCXDelta (KoOrd dX);
CoOrd OCtoDCY (KoOrd y);
CoOrd OCtoDCYDelta (KoOrd dY);

Punkt DCtoOC (Point &);                 // Device --> Objekt
Punkt DCtoOC (CoOrd x, CoOrd y);
KoOrd DCtoOCX (CoOrd x);
KoOrd DCtoOCXDelta (CoOrd dX);
KoOrd DCtoOCY (CoOrd y);
KoOrd DCtoOCYDelta (CoOrd dY);

#endif // NOTRANSFORMATION

#if defined(_KOORD_ISDOUBLE)
#define ROUNDING_OFFSET		0.0
#define ROUNDING_OFFSET2	0.5
#else
#define ROUNDING_OFFSET		0.5
#define ROUNDING_OFFSET2	0.0
#endif // _KOORD_ISDOUBLE

__forceinline CoOrd ToCoOrd (KoOrd dVal)
{
#if defined(_NO_ASSEMBLY_OPTIMIZATIONS)
	if (0 == dVal)
		return 0;

	return dVal > 0 ? CoOrd(dVal + ROUNDING_OFFSET2) : CoOrd(dVal - ROUNDING_OFFSET2);
#else
CoOrd iRes;

	__asm {
		fld	dVal;
		frndint;		// rundet korrekt
		fistp iRes;
	}
	return iRes;
#endif // defined(_NO_ASSEMBLY_OPTIMIZATIONS)
}

///////////////////////////////////////////////////////////////////////////////
// Berechnen der Dots/je mm f�r ein Ausgabeger�t
Dimension GetDotsPerMM (HDC hDC = NULL, DoublePair *pDPair = NULL);

#endif // TRANSFRM_HXX
