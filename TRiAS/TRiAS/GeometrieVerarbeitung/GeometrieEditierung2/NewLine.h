// Deklarationen: Editierung eines neuen Linienobjektes
// File: NewLine.h
// W. M�rtl

#ifndef _NEWLINE_H_
#define _NEWLINE_H_


#include "SmartInterfaces.h"


///////////////////////////////////////////////////////////////////////////////////////////////
// Klasse f�r die Editierung eines neuen Linienobjektes
// IEditOperation ist das Interface, das alle EditierOperationen f�r die GeoEdit-Erweiterung
// bereitstellen, d.h. das Interface, �ber das die GeoEdit-Erweiterung die EditierOperationen
// rufen kann (Gegen-Interface zu IEditExtensionSite)
class CNewLine : public IEditOperation,
    			 public ITRiASNotificationSink,
    			 public ITRiASSysNotificationSink,
    			 public CComObjectRoot,
    			 public CComCoClass<CNewLine, &CLSID_NewLine>
{
private:
    WTriasXtensionSite m_Site;		// TRiAS-Kontext
    DWORD m_dwCookieN;				// Nummer des ConnectionPoint f�r ITRiASNotificationSink
    DWORD m_dwCookieSN;				// Nummer des ConnectionPoint f�r ITRiASSysNotificationSink
    pWindow m_pVWnd;				// TRiAS-ViewFenster
    CoordTransX* m_pCT;				// KoordinatenTransformation
    bool m_bIsPaint;				// Hintergrund (durch GEOVIEWEVT_PaintingView bzw.
    								// GEOVIEWEVT_ViewPainted ausgel�st) wird gezeichnet (true)

    bool m_LeftButtonSem;			// Synchronisation f�r die linke bzw. rechte Maustaste, um
    bool m_RightButtonSem;			//  sicher zu stellen, da� "Down" und "Up" im gleichen
    								//  Fenster kommen
    LPARAM m_lParamOld;				// letzte Mausposition
    CursPos m_OldCP;				// bisherige CursorPosition
    CursPos m_NewCP;				// aktuelle CursorPosition

    WEditExtensionSite m_wEdExSite;	// Interface von CGeoEditExtension f�r EditierOperationen
    WTopicalObjects m_wTopObjs;		// Interface der Klasse CTopicalObjects
    WEnumObjektGeometrie m_wAllTObjs;// die ausgew�hlten Objekte

    WObjektGeometrie m_wObj;		// ObjektGeometrie des neuen Linienobjektes
	LPARAM m_lParam;				// LPARAM-Wert, bei dem rechte Maustaste gedr�ckt wurde
	Point m_LastPt;					// letzter Punkt der aktuell editierten Linie in BS- bzw.
    EPunkt m_LastPkt;				//  in DB-Koordinaten
	EPunkt m_pStartPkt[1];			// Startpunkt der zu zeichnenden Linie

    WDragObject m_wDragObj;			// die aktuell nachgezogene Linie

    int m_iGrabCnt;					// Anzahl der hintereinander gegrabten Punkte (f�r
    								// CommonBorder)
    WEnumObjektGeometrie m_wGrabObjs;// die Linien- bzw. Fl�chenobjekte der m_wAllTObjs-Objekte,
    								// die alle in m_iGrabCnt gez�hlten GrabPunkte als
    								// St�tzpunkte besitzen
    KoOrd* m_pGrabPktX;				// die Koordinaten der in
    KoOrd* m_pGrabPktY;				//  m_iGrabCnt gez�hlten GrabPunkte
    HRESULT m_hrComBorder;			// return-Wert bei Test auf CommonBorder-M�glichkeit
    long m_lComONr;					// Objektnummer des Objektes, von dem die gemeinsamen
    								// St�tzpunkte bei CommonBorder �bernommen werden k�nnen

    DoublePair m_DAP;				// Anfangspunkt der aktuell editierten Strecke im
    								// ASC-Format
    double m_dAktLaenge;			// L�nge der aktuellen Strecke
    double m_dAktGesLaenge;			// aktuelle Gesamtl�nge einer editierten Linie

	WRestrictLine m_wRestrLine1;	// Interface zu Konstruktionshilfslinie
	WRestrictLine m_wRestrLine2;	// Interface zu Konstruktionshilfslinie
	WRestrictCursor m_wRestrictCursor;// der abgetrennte, auf einer Hilfslinie nachgezogene Cursor
	bool m_bMessBox;				// bei 2 Hilfslinien wurde eine MessageBox angezeigt (true)
	bool m_bWithDel;				// beim Zeichnen einer nachgezogenen Linie die alte Lage
									// l�schen (true)

    // Memberfunktionen
    HRESULT DisconnectFromServer (void);

    HRESULT KeyDown (HWND hWnd, WPARAM wParam);
    HRESULT KeyUp (WPARAM wParam);
    HRESULT MouseMove (LPARAM lParam);
    void LeftMouseDown (LPARAM lParam);
    HRESULT LeftMouseUp (void);
    void RightMouseDown (LPARAM lParam);
    HRESULT RightMouseUp (void);
	void LeftDoubleClick (void);
	HRESULT ShowDialogForLine (void);
    HRESULT NeueKante (void);
	HRESULT Grabbing (void);
    HRESULT ContinueButtonAction (void);
    bool AktuelleWerteAnzeigen (Point Pt);
	HRESULT MouseMoveWithoutRestrictLines (LPARAM lParam);
	HRESULT MouseMoveWithRestrictLines (LPARAM lParam, BOOL bTopIsPaint);

public:
    // Konstruktor, Destruktor
    CNewLine (void);
    ~CNewLine (void);

    DECLARE_REGISTRY_RESOURCEID(IDR_NEWLINE)

    BEGIN_COM_MAP(CNewLine)
    	COM_INTERFACE_ENTRY(ITRiASNotificationSink)
    	COM_INTERFACE_ENTRY(ITRiASSysNotificationSink)
    	COM_INTERFACE_ENTRY(IEditOperation)
    END_COM_MAP()

    // IEditOperation
    STDMETHOD (SetEditExtensionSite) (IEditExtensionSite* pIEdExSite);
	STDMETHOD (InformRestrictLinesState) (IRestrictLine* pRestrLine1,
										  IRestrictLine* pRestrLine2);
	STDMETHOD (DeleteRestrictedCursor) (void);
    
    // ITRiASNotificationSink
    STDMETHOD(ServerEvent) (SERVEREVT se);
    STDMETHOD(ProjectEvent) (long hPr, PROJECTEVT pe, VARIANT vProj);
    STDMETHOD(GeoViewEvent) (long hPr, GEOVIEWEVT ve, VARIANT vData);
    STDMETHOD(GeoClassEvent) (long hPr, GEOCLASSEVT ce, long ulIdent);
    STDMETHOD(GeoObjectEvent) (long hPr, GEOOBJECTEVT oe, long lONr);
    STDMETHOD(GeoFeatureEvent) (long hPr, GEOFEATUREEVT fe, long ulMCode);
    STDMETHOD(GeoRelationEvent) (long hPr, GEORELATIONEVT re, long ulRCode);
    STDMETHOD(ObjectWindowEvent) (OBJWNDEVT oe, long hORWnd);

    // ITRiASSysNotificationSink
    STDMETHOD (WindowsMessage) (long hWnd, long uiMsg, long wParam, long lParam);

};

#endif //_NEWLINE_H_
