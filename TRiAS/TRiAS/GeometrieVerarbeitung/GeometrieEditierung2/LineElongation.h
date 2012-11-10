// Deklaration: Linienobjekt verl�ngern
// File: LineElongation.h
// W. M�rtl

#ifndef _LINEELONGATION_H_
#define _LINEELONGATION_H_


#include "SmartInterfaces.h"

//#include "objgguid.h"	// CLSID_ObjektGeometrie, IID_IInitObjektGeometrie


///////////////////////////////////////////////////////////////////////////////////////////////
// Klasse f�r die Verl�ngerung einer Linie
// IModifyOperation ist das Interface, das alle ModifyOperation's f�r die CObjectModify-Klasse
// bereitstellen, d.h. das Interface, �ber das die CObjectModify-Klasse die ModifyOperation's
// rufen kann (Gegen-Interface zu IModifyClassSite)
class CLineElongation : public IModifyOperation,
    					public ITRiASNotificationSink,
    					public ITRiASSysNotificationSink,
    					public CComObjectRoot,
    					public CComCoClass<CLineElongation, &CLSID_LineElongation>
{
private:
    pWindow m_pVWnd;				// TRiAS-ViewFenster
    CoordTransX* m_pCT;				// KoordinatenTransformation
    bool m_bIsPaint;				// Hintergrund (durch GEOVIEWEVT_PaintingView bzw.
    								// GEOVIEWEVT_ViewPainted ausgel�st) wird gezeichnet (true)

    bool m_LeftButtonSem;			// Synchronisation f�r die linke bzw. rechte Maustaste, um
    bool m_RightButtonSem;			//  sicher zu stellen, da� "Down" und "Up" im gleichen
    								//  Fenster kommen
    CursPos m_OldCP;				// bisherige CursorPosition
    CursPos m_NewCP;				// aktuelle CursorPosition
    KoOrd m_lMSpX, m_lMSpY;			// DB-Koordinaten an der Mausspitze

    WEditExtensionSite m_wEdExSite;	// Interface von CGeoEditExtension f�r EditierOperationen
    WTopicalObjects m_wTopObjs;		// Interface der Klasse CTopicalObjects

    WEnumObjektGeometrie m_wModObjs;// zu verl�ngernde Linienobjekte
    ulong m_ulModCnt;				// Anzahl der m_wModObjs-Linienobjekte

    WObjektGeometrie m_wObj;		// ObjektGeometrie des erg�nzenden Liniensegmentes
    KoOrd m_lElongX;				// Anfangskoordinaten des
    KoOrd m_lElongY;				//  erg�nzenden Liniensegmentes
	Point m_LastPt;					// letzter Punkt der aktuell editierten Kontur in BS- bzw.
    EPunkt m_LastPkt;				//  in DB-Koordinaten
    WDragObject m_wDragObj;			// die aktuell nachgezogene Linie

    int m_iGrabCnt;					// Anzahl der hintereinander gegrabten Punkte (f�r
    								// CommonBorder)
    WEnumObjektGeometrie m_wGrabObjs;// die Linien- bzw. Fl�chenobjekte der ausgew�hlten
    								// Objekte, die alle in m_iGrabCnt gez�hlten GrabPunkte als
    								// St�tzpunkte besitzen
    KoOrd* m_pGrabPktX;				// die Koordinaten der in
    KoOrd* m_pGrabPktY;				//  m_iGrabCnt gez�hlten GrabPunkte
    HRESULT m_hrComBorder;			// return-Wert bei Test auf CommonBorder-M�glichkeit
    long m_lComONr;					// Objektnummer des Objektes, von dem die gemeinsamen
    								// St�tzpunkte bei CommonBorder �bernommen werden k�nnen

    DoublePair m_DAP;				// Anfangspunkt der aktuell editierten Strecke
    								// im ASC-Format
    double m_dAktLaenge;			// L�nge der aktuellen Strecke
    double m_dAktGesLaenge;			// aktuelle Gesamtl�nge der verl�ngerten Linie

    // Memberfunktionen
    HRESULT KeyDown (WPARAM wParam);
    HRESULT KeyUp (WPARAM wParam);
    HRESULT MouseMove (LPARAM lParam);
    void LeftMouseDown (LPARAM lParam);
    HRESULT LeftMouseUp (void);
    void RightMouseDown (LPARAM lParam);
    HRESULT RightMouseUp (void);
	HRESULT LeftDoubleClick (void);
    HRESULT IsGrabAllowableForLineElongation (KoOrd lEndPktX, KoOrd lEndPktY);
    HRESULT CompletingSegment (void);
    HRESULT ContinueButtonAction (void);
    HRESULT SetClosePoints (int& iCloseCnt, KoOrd** pplCloseX, KoOrd** pplCloseY);
    HRESULT ElongateLines (ulong ulIdent);
    HRESULT StoreElongatedLine (IObjektGeometrie* pIOG, ulong ulIdent);
    HRESULT SetStartingLength (void);
    bool AktuelleWerteAnzeigen (Point Pt);

public:
    // Konstruktor, Destruktor
    CLineElongation (void);
    ~CLineElongation (void);

    DECLARE_REGISTRY_RESOURCEID(IDR_LINEELONGATION)

    BEGIN_COM_MAP(CLineElongation)
    	COM_INTERFACE_ENTRY(ITRiASNotificationSink)
    	COM_INTERFACE_ENTRY(ITRiASSysNotificationSink)
    	COM_INTERFACE_ENTRY(IModifyOperation)
    END_COM_MAP()

    // IModifyOperation
    STDMETHOD (SetModifyClassSite) (IEditExtensionSite* pIEdExSite, IModifyClassSite*);
    STDMETHOD (LineElongation) (IEnumObjektGeometrie* pModObjs, long lRMX, long lRMY);
    STDMETHOD (AreaPartition) (long, POINT);
    STDMETHOD (IslandAddition) (IEnumObjektGeometrie*);
    STDMETHOD (Rectangularity) (long, int, long, double, double, double, IEnumObjectsByNumber**);
	STDMETHOD (MakeCommonBorder) (IEnumObjektGeometrie*, long, long);

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

#endif // _LINEELONGATION_H_
