// Interfacedeklaration f�r Schnittstellen der Geometrie-Erweiterungen
// File: IGEOMETR.HXX

#ifndef _IGEOMETR_HXX
#define _IGEOMETR_HXX

#if _MSC_VER < 1100 && !defined(DECLSPEC_UUID)
#define DECLSPEC_UUID(x)
#endif // _MSC_VER < 1100 && !defined(DECLSPEC_UUID)


// --------------------------------------------------------------------------------------------
// Interfacedeklaration f�r Schnittstellen der Klasse "ObjektGeometrie"

#undef INTERFACE
#define INTERFACE IID_IInitObjektGeometrie

// 07963834-3123-101C-BB62-00AA0018497C	
// DEFINE_GUID(IID_IInitObjektGeometrie, 0x07963834L, 0x3123, 0x101C, 0xBB, 0x62, 0x00, 0xAA,
//			   0x00, 0x18, 0x49, 0x7C);

interface DECLSPEC_UUID("07963834-3123-101C-BB62-00AA0018497C")
IInitObjektGeometrie : IUnknown
{
	// IUnknown-Methoden
	STDMETHOD (QueryInterface) (THIS_ REFIID riid, LPVOID FAR* ppvOBJ) PURE;
	STDMETHOD_ (ULONG, AddRef) (THIS) PURE;
	STDMETHOD_ (ULONG, Release) (THIS) PURE;

	// IInitObjektGeometrie-Methoden
	STDMETHOD_ (HRESULT, InitObjGeometry) (VOID) PURE;
	STDMETHOD_ (HRESULT, InitObjGeometry) (LONG lONr) PURE;
	STDMETHOD_ (HRESULT, InitObjGeometry) (LONG x, LONG y, short iOT) PURE;
	STDMETHOD_ (HRESULT, InitObjGeometry) (LONG* plX, LONG* plY, LONG lAnz, short iOT) PURE;
};




#undef INTERFACE
#define INTERFACE IID_IObjektGeometrie

// 07963833-3123-101C-BB62-00AA0018497C	
// DEFINE_GUID(IID_IObjektGeometrie, 0x07963833L, 0x3123, 0x101C, 0xBB, 0x62, 0x00, 0xAA, 0x00,
//			   0x18, 0x49, 0x7C);

// Position eines Indexes innerhalb des pOG->pdblX- bzw. pOG->pdblY-Vektors einer Fl�che
enum IndPos
{
	ERSTER,		// erster Index
	MITTE,		// Index innerhalb einer Kontur
	LETZTER,	// letzter Index
	NICHTS		// pOG keine Fl�che
};

#if !defined(_CURSPOS_DEFINED)	// auch in IGeoEdit.idl definiert
#define _CURSPOS_DEFINED
// CursorPosition bez. eines pOG-Objektes
enum CursPos
{
	CURSPOS_VERTEX,				// Cursor im Marker eines beliebigen St�tzpunktes
	CURSPOS_FIRST_VERTEX,		// Cursor im Marker des ersten St�tzpunktes
	CURSPOS_LAST_VERTEX,		// Cursor im Marker des letzten St�tzpunktes
	CURSPOS_OUTBORDER_VERTEX,	// Cursor im Marker eines belieb. St�tzpunktes der Au�enkontur
	CURSPOS_INBORDER_VERTEX,	// Cursor im Marker eines belieb. St�tzpunktes der Innenkontur
	CURSPOS_LINE,				// Cursor "in der N�he" einer beliebigen Strecke
	CURSPOS_OUTBORDER,			// Cursor "in der N�he" der Strecke der Au�enkontur
	CURSPOS_INBORDER,			// Cursor "in der N�he" der Strecke der Innenkontur
	CURSPOS_OBJECT,				// Cursor innerhalb eines Objektes
	CURSPOS_OUTSIDE,			// Cursor ohne Bezug zu einem Objekt
	CURSPOS_UNKNOWN				// unbekannte Cursorposition
};
#endif // _CURSPOS_DEFINED

// Durchlaufrichtung bei �bernahme einer Teilkante
enum MoveDir
{
	MOVEDIR_UP,		// mit aufsteigenden St�tzpunkt-Indizes
	MOVEDIR_DOWN	// mit absteigenden St�tzpunkt-Indizes
};

// Position eines Objektes zu einem Bezugsobjekt
enum Posit
{
	INNERH,		// vollst�ndig innerhalb des Bezugsobjektes
	INNERHB,	// innerhalb des Bezugsobjektes ( = Fl�che), aber mit Ber�hrung des
				// Fl�chenrandes
	KONTUR,		// vollst�ndig auf dem Rand des Bezugsobjektes
	AUSSERH,	// vollst�ndig au�erhalb des Bezugsobjektes
	AUSSERHB,	// au�erhalb des Bezugsobjektes, aber mit Ber�hrung des Bezugsobjektes
	INNAUSS,	// teilweise innerhalb, teilweise au�erhalb des Bezugsobjektes
	UMSCHL,		// au�erhalb des Bezugsobjektes, aber umschlie�t das Bezugsobjekt vollst�ndig
				// (nur f�r geschlossenes Bezugsobjekt m�glich)
	UMSCHLB,	// au�erhalb des Bezugsobjektes, aber mit Ber�hrung des Bezugsobjektes und
				// umschlie�t das Bezugsobjekt vollst�ndig (nur f�r geschlossenes Bezugsobjekt
				// m�glich)
	OFFEN,		// Rand des Bezugsobjektes ( = Fl�che) nicht geschlossen
	UNKLAR,		// vorzeitiges Ende bei falschen Parametern, unzureichendem dynamischen
				// Speicher oder Abbruch durch den Anwender
	GLEICH		// beide Objekte sind identisch
};

interface DECLSPEC_UUID("07963833-3123-101C-BB62-00AA0018497C")
IObjektGeometrie : IUnknown
{
	// IUnknown-Methoden
	STDMETHOD (QueryInterface) (THIS_ REFIID riid, LPVOID FAR* ppvOBJ) PURE;
	STDMETHOD_ (ULONG, AddRef) (THIS) PURE;
	STDMETHOD_ (ULONG, Release) (THIS) PURE;

	// IObjektGeometrie-Methoden
	STDMETHOD_ (HRESULT, GetONr) (LONG* plONr) PURE;
	STDMETHOD_ (HRESULT, GetIdent) (ULONG* pulIdent) PURE;
	STDMETHOD_ (HRESULT, SetIdent) (ULONG ulIdent) PURE;
	STDMETHOD_ (HRESULT, GetObjTyp) (short* piObjTyp) PURE;
	STDMETHOD_ (HRESULT, SetObjTyp) (short iObjTyp) PURE;
	STDMETHOD_ (HRESULT, GetFlags) (short* piFlags) PURE;
	STDMETHOD_ (HRESULT, SetFlags) (short iFlags) PURE;
	STDMETHOD_ (HRESULT, GetCnt) (LONG* plCnt) PURE;
	STDMETHOD_ (HRESULT, GetKCnt) (short* piKCnt) PURE;
	STDMETHOD_ (HRESULT, SetKCnt) (short iKCnt) PURE;
	STDMETHOD_ (HRESULT, GetX) (VOID** ppX) PURE;
	STDMETHOD_ (HRESULT, GetY) (VOID** ppY) PURE;
	STDMETHOD_ (HRESULT, GetLPCnt) (LONG** pplCnt) PURE;
	STDMETHOD_ (HRESULT, AddPunkt) (LONG x, LONG y, LONG lIndGes, short iKInd) PURE;
	STDMETHOD_ (HRESULT, AddPunkt) (LONG* plX, LONG* plY, LONG lAnzahl, LONG lIndGes,
									short iKInd) PURE;
	STDMETHOD_ (HRESULT, AddKantenTeil) (IObjektGeometrie* pIOG, LONG lAnfId, LONG lEndId,
										 MoveDir MD) PURE;
	STDMETHOD_ (HRESULT, SubPunkt) (LONG lIndGes, short* piKInd) PURE;
	STDMETHOD_ (HRESULT, ModPunkt) (LONG x, LONG y, LONG lIndGes) PURE;
	STDMETHOD_ (HRESULT, IndexTest) (LONG lIndGes, short* piKInd, LONG* plInd, IndPos* pipIP)
									 PURE;
	STDMETHOD_ (HRESULT, IndexVorNach) (LONG lIndGes, LONG* plIndv, LONG* plIndn) PURE;
	STDMETHOD_ (HRESULT, IndexVor) (LONG lIndGes, LONG* plIndv) PURE;
	STDMETHOD_ (HRESULT, GetCont) (LONG* plXmin, LONG* plXmax, LONG* plYmin, LONG* plYmax)
								   PURE;
	STDMETHOD_ (HRESULT, OrientDreh) (short iKInd) PURE;
	STDMETHOD_ (HRESULT, GeometrieAnTRiAS) (BOOL bUndo, RECT* pRec) PURE;
	STDMETHOD_ (HRESULT, SetLPCnt) (LONG* plCnt, short iCnt) PURE;
	STDMETHOD_ (HRESULT, AddKante) (LONG* x, LONG* y, LONG lSize, short iKontInd) PURE;
	STDMETHOD_ (HRESULT, SubKante) (short iAnzahl, short iKontInd) PURE;
	STDMETHOD_ (HRESULT, IsClear) (VOID) PURE;
	STDMETHOD_ (HRESULT, SubPunkt) (LONG lAnz, LONG lIndGes, BOOL bEqVertDel, short* piKInd)
									PURE;
	STDMETHOD_ (HRESULT, RectangleToDraw) (RECT* pRec) PURE;
	STDMETHOD_ (HRESULT, SubPunkt) (LONG lIndGes, BOOL bEqVertDel, short* piKInd) PURE;
	STDMETHOD_ (HRESULT, CursorPositionAtObject) (LONG x, LONG y, LONG lEpsX, LONG lEpsY,
				LONG lEpsStr, BOOL bInBorder, CursPos* pCP, LONG* pGrabX, LONG* pGrabY) PURE;
	STDMETHOD_ (HRESULT, CursorInObject) (LONG xLM, LONG yLM, LONG lEpsX, LONG lEpsY,
										  LONG lEpsLine, BOOL bInBorder, CursPos* pCP) PURE;
	STDMETHOD_ (HRESULT, GetVertexIndex) (LONG lX, LONG lY, LONG* plInd) PURE;
	STDMETHOD_ (HRESULT, GetPointOnObject) (LONG* plXP, LONG* plYP, LONG* plInd, BOOL* pbSP)
											PURE;
	STDMETHOD_ (HRESULT, SetCnt) (LONG lCnt) PURE;
	STDMETHOD_ (HRESULT, SetX) (VOID* pX) PURE;
	STDMETHOD_ (HRESULT, SetY) (VOID* pY) PURE;
	STDMETHOD_ (HRESULT, GetLineIndex) (LONG lX, LONG lY, LONG lEps, LONG* plInd) PURE;
	STDMETHOD_ (HRESULT, Position) (LONG lX, LONG lY, BOOL bIsland, Posit* pLage) PURE;
	STDMETHOD_ (HRESULT, CursorInMarker) (LONG x, LONG y, LONG lEpsX, LONG lEpsY,
										  BOOL* pbInMark, LONG* pGrabX, LONG* pGrabY) PURE;
	STDMETHOD_ (HRESULT, RectangleToDraw2) (RECT* pRec, int iMarkGr) PURE;
	STDMETHOD_ (HRESULT, GeometrieAnTRiASEx) (INT_PTR hPr, BOOL bUndo, RECT* pRec) PURE;
};



// --------------------------------------------------------------------------------------------
// Interfacedeklaration f�r Schnittstelle zur Erweiterung "Abstandsmessung"

#undef INTERFACE
#define INTERFACE IExtendAbstand2

// 0796383C-3123-101C-BB62-00AA0018497C
// DEFINE_GUID(IID_IExtendAbstand2, 0x0796383CL, 0x3123, 0x101C, 0xBB, 0x62, 0x00, 0xAA, 0x00,
//			   0x18, 0x49, 0x7C);

// verschiedene Formen der Abstandsbestimmung
enum DistTyp
{
	DISTTYP_AUTO,	// automatische Entscheidung �ber die Form der Abstandsbestimmung
	DISTTYP_MIDDLE,	// Abstand zwischen den Containermittelpunken der beiden Objekte
	DISTTYP_VERTEX,	// k�rzeste Entfernung zwischen je einem St�tzpunkt
	DISTTYP_EXACT	// k�rzeste Entfernung bei Ber�cksichtigung der Punkte zwischen den
					// St�tzpunkten
};

// Extrema bei der Abstandsbestimmung
enum ExtrAbst
{
	ABST_MIN,		// kleinster Abstand
	ABST_MAX,		// gr��ter Abstand
	ABST_MAXMIN,	// gr��ter der kleinsten Abst�nde
	ABST_MINMAX,	// kleinster der gr��ten Abst�nde
};

// Seite f�r Verschiebung einer Teilkante
enum Side
{
	ABST_LEFT,		// linke Seite
	ABST_RIGHT,		// rechte Seite
};


interface DECLSPEC_UUID("0796383C-3123-101C-BB62-00AA0018497C")
IExtendAbstand2 : IUnknown
{
	// IUnknown-Methoden
	STDMETHOD (QueryInterface) (THIS_ REFIID riid, LPVOID FAR* ppvOBJ) PURE;
	STDMETHOD_ (ULONG, AddRef) (THIS) PURE;
	STDMETHOD_ (ULONG, Release) (THIS) PURE;

	// IExtendAbstand2-Methoden
	STDMETHOD_ (HRESULT, DistanceObjObj_ONr) (LONG lONr1, LONG lONr2, double* pdAbst,
											  DistTyp dtTyp, ExtrAbst exAbst) PURE;
	STDMETHOD_ (HRESULT, DistanceObjObj_Geom) (IObjektGeometrie* pIOG1,
				 IObjektGeometrie* pIOG2, double* pdAbst, DistTyp dtTyp, ExtrAbst exAbst) PURE;

	// kleinster bzw. gr��ter Abstand der Objekte einer ulIdent-Objektklasse
	STDMETHOD_ (HRESULT, DistanceObjOClass_ONr) (LONG lONr, ULONG ulIdent, double* pdAbst,
											 DistTyp dtTyp, ExtrAbst exAbst, LONG* plONr) PURE;
	STDMETHOD_ (HRESULT, DistanceObjOClass_Geom) (IObjektGeometrie* pIOG, ULONG ulIdent,
							 double* pdAbst, DistTyp dtTyp, ExtrAbst exAbst, LONG* plONr) PURE;
	STDMETHOD_ (HRESULT, LinePart) (IObjektGeometrie* pIOGIn, LONG lXA, LONG lYA, LONG lXE,
									LONG lYE, double dDist, IObjektGeometrie** ppIOGOut) PURE;
	STDMETHOD_ (HRESULT, DistanceFromOrigin_Geom) (IObjektGeometrie* pIOG, LONG* plX,
												   LONG* plY, double* pdAbst) PURE;
	STDMETHOD_ (HRESULT, ShiftedLinePart) (IObjektGeometrie* pIOGIn, LONG lXA, LONG lYA,
										   double dLaenge, Side Seite, double* pdAbst,
										   ULONG ulIdent, IObjektGeometrie** ppIOGOut) PURE;
};

typedef IExtendAbstand2* LPEXTENDABSTAND;



// --------------------------------------------------------------------------------------------
// Interfacedeklaration f�r Schnittstelle zur Erweiterung "Puffer um GeoObjekte"

#undef INTERFACE
#define INTERFACE IExtendBuffer

// 0796383E-3123-101C-BB62-00AA0018497C	
// DEFINE_GUID(IID_IExtendBuffer, 0x0796383EL, 0x3123, 0x101C, 0xBB, 0x62, 0x00, 0xAA, 0x00,
//			   0x18, 0x49, 0x7C);

// Ausformung der konvexen Ecken
enum ConvexMode
{
	BUFF_ARC,		// quasi-kreisf�rmig (n-Eck)
	BUFF_KITE,		// Drachenviereck
	BUFF_TIP,		// spitz
	BUFF_PLAIN		// abgeflacht
};

// Anzeige der Ergebnisse beim Objekt-Verschnitt
enum BuffSide
{
	BUFF_LEFT,		// linksseitiger Puffer
	BUFF_RIGHT,		// rechtsseitiger Puffer
	BUFF_BOTH		// beidseitiger Puffer
};

// Pufferaufbau
enum PuffBau
{
	PBAU_RING,	// Fl�che mit Aussparung ("ringf�rmige" Form)
	PBAU_VOLL	// vollst�ndige Fl�che
};

// Form der Abspeicherung
enum SpForm
{
	SFORM_PERM,	// permanente Abspeicherung
	SFORM_TEMP	// tempor�re Abspeicherung
};

// Puffer um ein GeoObjekt
interface DECLSPEC_UUID("0796383E-3123-101C-BB62-00AA0018497C")
IExtendBuffer : IUnknown
{
	// IUnknown-Methoden
	STDMETHOD (QueryInterface) (THIS_ REFIID riid, LPVOID FAR* ppvOBJ) PURE;
	STDMETHOD_ (ULONG, AddRef) (THIS) PURE;
	STDMETHOD_ (ULONG, Release) (THIS) PURE;

	// IExtendBuffer-Methoden
	// Pufferung des lONr-Objektes mit den Eingabeparametern
	// dWidth	 Pufferbreite (in Metern mit Kommastellen)
	// iCount    Pufferanzahl
	// bPBau     ringf�rmiger Puffer / volle Fl�che
	// sfSForm   permanente / tempor�re Abspeicherung
	// ulBIdent  Basis-Identifikator, aus dem die Identifikatoren der Pufferobjekte abgeleitet
	//           werden
	// In ppEnumOut werden die Objektnummern der erzeugten Puffer zur�ckgegeben.

	// echter Puffer um lONr-Objektes
	STDMETHOD_ (HRESULT, RealBuffering_ONr) (LONG lONr, double dWidth, short iCount,
					PuffBau bPBau, SpForm sfSForm, ULONG ulBIdent, IEnumLONG** ppEnumOut) PURE;

	// echter Puffer um lpIOG-Objektes
	STDMETHOD_ (HRESULT, RealBuffering_Geom) (IObjektGeometrie* pIOG, double dWidth,
					 short iCount, SpForm sfSForm, ULONG ulBIdent, IEnumLONG** ppEnumOut) PURE;

	// kreisf�rmiger Puffer um Mittelpunkt des Objektcontainers
	STDMETHOD_ (HRESULT, CircularBuffering_ONr) (LONG lONr, double dWidth, short iCount,
					PuffBau bPBau, SpForm sfSForm, ULONG ulBIdent, IEnumLONG** ppEnumOut) PURE;

	STDMETHOD_ (HRESULT, CircularBuffering_Geom) (IObjektGeometrie* pIOG, double dWidth,
					 short iCount, SpForm sfSForm, ULONG ulBIdent, IEnumLONG** ppEnumOut) PURE;

	// einzelner echter Puffer um lONr-Objekt
	STDMETHOD_ (HRESULT, WorkingBuffer_ONr) (LONG lONr, double dWidth, PuffBau bPBau,
						   BuffSide bsSide, ConvexMode cmMode, double dPrec, LONG* plONr) PURE;

	// einzelner echter Puffer um pInObj-Objekt, der NICHT in die DB gespeichert wird
	STDMETHOD_ (HRESULT, WorkingBuffer_Geom) (IObjektGeometrie* pInObj, double dWidth,
											 PuffBau bPBau, BuffSide bsSide, ConvexMode cmMode,
											 double dPrec, IObjektGeometrie** ppOutObj) PURE;
};

typedef IExtendBuffer* LPExtendBuffer;



// --------------------------------------------------------------------------------------------
// Interfacedeklaration f�r Schnittstelle zur Erweiterung "Editierung von GeoObjekten"

#undef INTERFACE
#define INTERFACE IExtendGeoEdit

// 07963831-3123-101C-BB62-00AA0018497C	
// DEFINE_GUID(IID_IExtendGeoEdit, 0x07963831L, 0x3123, 0x101C, 0xBB, 0x62, 0x00, 0xAA, 0x00,
//             0x18, 0x49, 0x7C);

// Auswahl der Bezugsstrecke (mit fallender Priorit�t)
enum RefLine
{
	EDIT_RECTANGULAR,	// gemeinsame Strecke zu Objekten, die schon rechtwinklig gemacht
						// wurden
	EDIT_COMMON,		// gemeinsame Strecke zu Objekten vorgebbarer Objektklassen
	EDIT_LONGEST,		// die l�ngste Strecke
	EDIT_SOUTHERN		// die s�dlichste Strecke
};

// Editierung von GeoObjekten
interface DECLSPEC_UUID("07963831-3123-101C-BB62-00AA0018497C")
IExtendGeoEdit : IUnknown
{
	// IUnknown-Methoden
	STDMETHOD (QueryInterface) (THIS_ REFIID riid, LPVOID FAR* ppvOBJ) PURE;
	STDMETHOD_ (ULONG, AddRef) (THIS) PURE;
	STDMETHOD_ (ULONG, Release) (THIS) PURE;

	// IExtendGeoEdit-Methoden
	STDMETHOD_ (HRESULT, MakeRectangular_ONr) (LONG lONr, RefLine rfLine, double dEps90,
			   double dEps180, double dEpsCom, IEnumLONG* pEnumIn, IEnumLONG** ppEnumOut) PURE;
};

typedef IExtendGeoEdit* LPExtendGeoEdit;
								


// --------------------------------------------------------------------------------------------
// Interfacedeklaration f�r Schnittstelle zur Erweiterung "Objektoperationen"

#undef INTERFACE
#define INTERFACE IExtendObjOper

// 0796381E-3123-101C-BB62-00AA0018497C	
// DEFINE_GUID(IID_IExtendObjOper, 0x0796381EL, 0x3123, 0x101C, 0xBB, 0x62, 0x00, 0xAA, 0x00,
//             0x18, 0x49, 0x7C);

// ausw�hlbare Lage f�r Lagebestimmung der Schnittergebnisse
#define LINN	0x01			// Objekt liegt innerhalb,
#define LAUSS	0x02			//  au�erhalb,
#define LINAU	LINN | LAUSS	//	sowohl innerhalb als auch au�erhalb,
#define LKONT	0x04			//  auf der Kontur des schneidenden Objektes

enum MoveDir;	// Definition siehe bei INTERFACE IID_IObjektGeometrie

interface DECLSPEC_UUID("0796381E-3123-101C-BB62-00AA0018497C")
IExtendObjOper : IUnknown
{
	// IUnknown-Methoden
	STDMETHOD (QueryInterface) (THIS_ REFIID riid, LPVOID FAR* ppvOBJ) PURE;
	STDMETHOD_ (ULONG, AddRef) (THIS) PURE;
	STDMETHOD_ (ULONG, Release) (THIS) PURE;

	// IExtendObjOper-Methoden
	// lONr-Objekt schneidet die Objekte, deren Objektnummern in pEnumIn �bergeben werden;
	// das Bitmuster f�r Auswahl bei Schnittoperationen kann in dwLageAusw, die Speicherform in
	// sfSForm vorgegeben werden;
	// die Objektnummern der Ergebnis-Objekte werden in ppEnumOut zur�ckgegeben
	STDMETHOD_ (HRESULT, SectionObjObjs_ONr) (LONG lONr, IEnumLONG* pEnumIn, DWORD dwLageAusw,
											  SpForm sfSForm, IEnumLONG** ppEnumOut) PURE;

	// pIOG-Objekt schneidet die Objekte, deren Objektnummern in pEnumIn �bergeben werden
	STDMETHOD_ (HRESULT, SectionObjObjs_Geom) (IObjektGeometrie* pIOG, IEnumLONG* pEnumIn,
								 DWORD dwLageAusw, SpForm sfSForm, IEnumLONG** ppEnumOut) PURE;

	// lONr-Objekt schneidet alle Objekte der ulIdent-Objektklasse
	STDMETHOD_ (HRESULT, SectionObjOClass_ONr) (LONG lONr, ULONG ulIdent, DWORD dwLageAusw,
												SpForm sfSForm, IEnumLONG** ppEnumOut) PURE;

	// pIOG-Objekt schneidet alle Objekte der ulIdent-Objektklasse
	STDMETHOD_ (HRESULT, SectionObjOClass_Geom) (IObjektGeometrie* pIOG, ULONG ulIdent,
								 DWORD dwLageAusw, SpForm sfSForm, IEnumLONG** ppEnumOut) PURE;

	// pIOG-Kante schneidet lONr-Objekt
	STDMETHOD_ (HRESULT, SectionLineObj_Geom) (IObjektGeometrie* pIOG, LONG lONr,
											   IEnumLONG** ppEnumOut) PURE;

	// pIOG-Kante schneidet alle Objekte der ulIdent-Objektklasse
	STDMETHOD_ (HRESULT, SectionLineObjs_Geom) (IObjektGeometrie* pIOG, ULONG ulIdent,
												IEnumLONG** ppEnumOut) PURE;

	// Durchschnitt der Fl�chen, deren Objektnummern in pEnumIn �bergeben werden
	STDMETHOD_ (HRESULT, AndArea) (IEnumLONG* pEnumIn, ULONG ulIdent, SpForm sfSForm,
								   IEnumLONG** ppEnumOut) PURE;

	// Vereinigung der Fl�chen, deren Objektnummern in pEnumIn �bergeben werden
	STDMETHOD_ (HRESULT, OrArea) (IEnumLONG* pEnumIn, ULONG ulIdent, SpForm sfSForm,
								  IEnumLONG** ppEnumOut) PURE;

	// Exklusiv-Oder der lONr-Fl�che mit allen Fl�chen, deren Objektnummern in pEnumIn
	// �bergeben werden
	STDMETHOD_ (HRESULT, XorArea_ONr) (LONG lONr, IEnumLONG* pEnumIn, SpForm sfSForm,
									   IEnumLONG** ppEnumOut) PURE;

	// Exklusiv-Oder der pIOG-Fl�che mit allen Fl�chen, deren Objektnummern in pEnumIn
	// �bergeben werden
	STDMETHOD_ (HRESULT, XorArea_Geom) (IObjektGeometrie* pIOG, IEnumLONG* pEnumIn,
										SpForm sfSForm, IEnumLONG** ppEnumOut) PURE;

	// gemeinsame Konturabschnitte (Kanten) der lONr-Fl�che mit allen pEnumIn-Fl�chen
	STDMETHOD_ (HRESULT, CommonContour_ONr) (LONG lONr, ULONG ulIdent, IEnumLONG* pEnumIn,
								 DWORD dwLageAusw, SpForm sfSForm, IEnumLONG** ppEnumOut) PURE;

	// gemeinsame Konturabschnitte (Kanten) der pIOG-Fl�che mit allen pEnumIn-Fl�chen
	STDMETHOD_ (HRESULT, CommonContour_Geom) (IObjektGeometrie* pIOG, ULONG ulIdent,
			 IEnumLONG* pEnumIn, DWORD dwLageAusw, SpForm sfSForm, IEnumLONG** ppEnumOut) PURE;

	// Linienobjekte werden zu m�glichst gemeinsamen Linienobjekten vereinigt
	STDMETHOD_ (HRESULT, LinesUnion) (IEnumLONG* pEnumIn, ULONG ulIdent, ULONG ulFill,
									 BOOL bAsArea, SpForm sfSForm, IEnumLONG** ppEnumOut) PURE;

	// 2 Linienobjekte werden (m�glichst) zu einem gemeinsamen Linienobjekt vereinigt
	STDMETHOD_ (HRESULT, LinesUnion_Geom) (IObjektGeometrie* pIOGIn1,
										 IObjektGeometrie* pIOGIn2, ULONG ulFill, BOOL bAsArea,
										 ULONG ulIdent, IObjektGeometrie** ppIOGOut) PURE;

	// Splitten aller Objekte, deren Objektnummern in pEnumIn �bergeben werden
	STDMETHOD_ (HRESULT, Splitting) (IEnumLONG* pEnumIn, ULONG ulFuzzyX, ULONG ulFuzzyY,
					  ULONG ulDangle, IEnumLONG** ppEnumOutNew, IEnumLONG** ppEnumOutMod) PURE;

	// Verschieben des lONr-Objektes
	STDMETHOD_ (HRESULT, LineShifting_ONr) (LONG lONr, LONG lXB, LONG lYB, LONG lXA, LONG lYA,
						   LONG lXE, LONG lYE, MoveDir MD, BOOL bVerlA, BOOL bVerlE, LONG lEps,
						   LONG lXMin, LONG lYMin, LONG lXMax, LONG lYMax, LONG* plONr) PURE;

	// Verschieben des pIOG-Objektes
	STDMETHOD_ (HRESULT, LineShifting_Geom) (IObjektGeometrie* pIOG, LONG lXB, LONG lYB,
				  LONG lXA, LONG lYA, LONG lXE, LONG lYE, MoveDir MD, BOOL bVerlA, BOOL bVerlE,
				  LONG lEps, LONG lXMin, LONG lYMin, LONG lXMax, LONG lYMax, LONG* plONr) PURE;

	// Die pEnumRegard-Objekte schneiden die pEnumTarget-Objekte; die wirklich geschnittenen
	// Originalobjekte werden in ppEnumUsed zur�ckgegeben, die neu erzeugten Objekte in
	// ppEnumNew
	STDMETHOD_ (HRESULT, ObjectSection) (HPROJECT hPr, IEnumLONG* pEnumRegard,
							   IEnumLONG* pEnumTarget, DWORD dwLage, BOOL bFeat, BOOL bFortAnz,
							   IEnumLONG** ppEnumUsed, IEnumLONG** ppEnumNew) PURE;
};

typedef IExtendObjOper* LPExtendObjOPer;



// --------------------------------------------------------------------------------------------
// Interfacedeklaration f�r Schnittstelle zur Erweiterung "Topologische Relationen"

#undef INTERFACE
#define INTERFACE IExtendTopRel2

// 0796383D-3123-101C-BB62-00AA0018497C	
// DEFINE_GUID(IID_IExtendTopRel2, 0x0796383DL, 0x3123, 0x101C, 0xBB, 0x62, 0x00, 0xAA, 0x00,
//			   0x18, 0x49, 0x7C);

// TRiAS-Relation eines Objektes zu einem Bezugsobjekt
enum Relat
{
// TRiAS-Relationen (im niederwertigen Byte)
	REL_INN,	// vollst�ndig innerhalb des Bezugsobjektes (alle Punkte des Objektes sind auch
				// Punkte des Bezugsobjektes)
	REL_AUSS,	// vollst�ndig au�erhalb des Bezugsobjektes (kein einziger Punkte des Objektes
				// ist auch Punkt des Bezugsobjektes)
	REL_INAUS,	// Objekt liegt sowohl innerhalb als auch au�erhalb des Bezugsobjektes (es gibt
				// sowohl Punkte des Objektes, die zum Bezugsobjekt geh�ren, als auch Punkte,
				// die nicht zum Bezugsobjekt geh�ren)
	REL_UNKLAR,	// Relation nicht bestimmbar, z. B. durch unzureichenden dynamischen Speicher

// OGC-Relationen (im h�herwertigen Byte)
	REL_WITHIN = 0x0100,	// vollst�ndig innerhalb des Bezugsobjektes
	REL_CONTAIN = 0x0200,	// �berdeckt das Bezugsobjekt vollst�ndig
	REL_OVERLAP = 0x0400,	// teilweise innerhalb, teilweise au�erhalb des Bezugsobjektes
							// (nur f�r die Kombinationen Linie/Linie und Fl�che/Fl�che; der
							// Durchschnitt beider Objekte mu� die gleiche Dimension wie die
							// Vergleichsobjekte haben)
	REL_ENTER = 0x0800,		// teilweise innerhalb, teilweise au�erhalb des Bezugsobjektes (nur
							// f�r die Kombinationen Linie/Linie, Linie/Fl�che und
							// Fl�che/Linie; der Durchschnitt beider Objekte mu� eine geringere
							// Dimension wie die gr��ere der beiden Dimensionen der
							// Vergleichsobjekte haben)
	REL_TOUCH = 0x1000,		// ber�hrt das Bezugsobjekt von au�en
	REL_EQUAL = 0x2000,		// vollst�ndig identisch mit dem Bezugsobjekt
	REL_DISJOINT = 0x4000,	// keinerlei Gemeinsamkeiten mit dem Bezugsobjekt
	REL_INTERSECT = REL_WITHIN | REL_CONTAIN | REL_OVERLAP | REL_ENTER | REL_TOUCH | REL_EQUAL,
							// mindestens ein Punkt mit dem Bezugsobjekt gemeinsam
							// (NOT DISJOINT)
	REL_UNCLEAR = 0x8000	// Relation nicht bestimmbar, z. B. durch vorzeitiges Ende bei
							// falschen Parametern, unzureichendem dynamischen Speicher oder
							// Abbruch durch den Anwender
};


interface DECLSPEC_UUID("0796383D-3123-101C-BB62-00AA0018497C")
IExtendTopRel2 : IUnknown
{
	// IUnknown-Methoden
	STDMETHOD (QueryInterface) (THIS_ REFIID riid, LPVOID FAR* ppvOBJ) PURE;
	STDMETHOD_ (ULONG, AddRef) (THIS) PURE;
	STDMETHOD_ (ULONG, Release) (THIS) PURE;

	// IExtendTopRel2-Methoden
	STDMETHOD_ (HRESULT, TopoRelationObjObj_ONr) (LONG lONr1, LONG lONr2, Relat* prTR) PURE;
	STDMETHOD_ (HRESULT, TopoRelationObjObj_Geom) (IObjektGeometrie* pIOG1,
												   IObjektGeometrie* pIOG2, Relat* prTR) PURE;
	STDMETHOD_ (HRESULT, GetObjectsObj_ONr) (LONG lONr, Relat rTR, IEnumLONG** ppEnumOut) PURE;
	STDMETHOD_ (HRESULT, GetObjectsObj_Geom) (IObjektGeometrie* pIOG, Relat rTR,
											  IEnumLONG** ppEnumOut) PURE;

	STDMETHOD_ (HRESULT, TopoRelationObjObj2_ONr) (LONG lONr1, LONG lONr2, UINT* puiTR) PURE;
	STDMETHOD_ (HRESULT, TopoRelationObjObj2_Geom) (IObjektGeometrie* pIOG1,
													IObjektGeometrie* pIOG2, UINT* puiTR) PURE;
	STDMETHOD_ (HRESULT, GetPointInsideArea_ONr) (LONG lONr, double* pdInX, double* pdInY)
												  PURE;
	STDMETHOD_ (HRESULT, GetPointInsideArea_Geom) (IObjektGeometrie* pIOG, double* pdInX,
												  double* pdInY) PURE;
};

typedef IExtendTopRel2* LPExtendTopRel;



// --------------------------------------------------------------------------------------------
// Interfacedeklarationen f�r Schnittstelle zur Erweiterung "Geometriebereinigung"

#undef INTERFACE
#define INTERFACE IExtendGeoRein

// 07963840-3123-101C-BB62-00AA0018497C	
// DEFINE_GUID(IID_IExtendGeoRein, 0x07963840L, 0x3123, 0x101C, 0xBB, 0x62, 0x00, 0xAA, 0x00,
//			   0x18, 0x49, 0x7C);

#if !defined(_TESTRICHT_DEFINED)	// auch in IGeoEdit.idl definiert
#define _TESTRICHT_DEFINED
// Wahlm�glichkeiten bei verk�rztem Test auf Geometriefehler
enum TestRicht
{
	VORW,		// Test nur mit der Strecke, die mit dem Bezugsindex und dessen Nachfolger
				// gebildet wird
	RUECKW,		// Test nur mit der Strecke, die mit dem Bezugsindex und dessen Vorg�nger
				// gebildet wird
	VORRUECK,	// Test nur mit den zwei Strecken, die mit dem Bezugsindex und sowohl dessen
				// Vorg�nger als auch dessen Nachfolger gebildet werden
	OHNE		// kein Test auf Geometriefehler
};
#endif // _TESTRICHT_DEFINED


// Anzeige der Ergebnisse beim Objekt-Verschnitt
enum ErrorTextMode
{
	REIN_NOTHING,	// Fehlertext an keines der beiden Objekte wegschreiben
	REIN_FIRST,		// Fehlertext an das erste Objekt wegschreiben
	REIN_SECOND,	// Fehlertext an das zweite Objekt wegschreiben
	REIN_BOTH		// Fehlertext an beide Objekte wegschreiben
};


interface DECLSPEC_UUID("07963840-3123-101C-BB62-00AA0018497C")
IExtendGeoRein : IUnknown
{
	// IUnknown-Methoden
	STDMETHOD (QueryInterface) (THIS_ REFIID riid, LPVOID FAR* ppvOBJ) PURE;
	STDMETHOD_ (ULONG, AddRef) (THIS) PURE;
	STDMETHOD_ (ULONG, Release) (THIS) PURE;

	// IExtendGeoRein-Methoden
	STDMETHOD_ (HRESULT, WholeAnalysis_ONr) (LONG lONr, BOOL* pbSucc) PURE;
	STDMETHOD_ (HRESULT, WholeAnalysis_Geom) (IObjektGeometrie* pIOG, BOOL* pbSucc) PURE;
	STDMETHOD_ (HRESULT, ShortAnalysis) (IObjektGeometrie* pIOG, TestRicht trRicht,
										 LONG* plSInd) PURE;
	STDMETHOD_ (HRESULT, InterObjectsAnalysis_ONr) (LONG lONr1, LONG lONr2,
													ErrorTextMode etText, BOOL* pbSucc) PURE;
	STDMETHOD_ (HRESULT, InterObjectsAnalysis_Geom) (IObjektGeometrie* pIOG1,
							 IObjektGeometrie* pIOG2, ErrorTextMode etText, BOOL* pbSucc) PURE;
	STDMETHOD_ (HRESULT, ReducedGeometryCleaning) (IObjektGeometrie* pIOG) PURE;
};

typedef IExtendGeoRein* LPEXTENDGEOREIN;




#undef INTERFACE
#define INTERFACE IAdjustValues

// 07963841-3123-101C-BB62-00AA0018497C	
// DEFINE_GUID(IID_IAdjustValues, 0x07963841L, 0x3123, 0x101C, 0xBB, 0x62, 0x00, 0xAA, 0x00,
//             0x18, 0x49, 0x7C);


// Abfrage bzw. Modifizierung von einstellbaren Parametern
enum AdjValue
{
	REIN_DEFAULT,		// f�r alle Parameter die default-Werte einstellen
	REIN_AUTOCLEAR,		// automatische bzw. keine Bereinigung von Geometriefehlern
	REIN_DOUBLE,		// Grenzwert f�r Test auf "doppelte Punkte"
	REIN_ACUTEANGLE,	// Grenzwert f�r Test auf "Spitze"
	REIN_VERTREDUCE		// Wert f�r die Reduzierung der St�tzpunktanzahl
};


interface DECLSPEC_UUID("07963841-3123-101C-BB62-00AA0018497C")
IAdjustValues : IUnknown
{
	// IUnknown-Methoden
	STDMETHOD (QueryInterface) (THIS_ REFIID riid, LPVOID FAR* ppvOBJ) PURE;
	STDMETHOD_ (ULONG, AddRef) (THIS) PURE;
	STDMETHOD_ (ULONG, Release) (THIS) PURE;

	// IAdjustValues-Methoden
	STDMETHOD_ (HRESULT, GetAdjustValue) (AdjValue avKey, LONG* plValue) PURE;
	STDMETHOD_ (HRESULT, SetAdjustValue) (AdjValue avKey, LONG lValue) PURE;
};

typedef IAdjustValues* LPAdjustValues;


#endif // _IGEOMETR_HXX
