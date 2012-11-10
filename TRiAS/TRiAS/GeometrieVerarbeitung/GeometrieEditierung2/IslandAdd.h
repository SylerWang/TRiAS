// Deklaration: Innenkontur hinzuf�gen
// File: IslandAdd.h
// W. M�rtl

#ifndef _ISLANDADD_H_
#define _ISLANDADD_H_


#include "SmartInterfaces.h"

#include "objgguid.h"	// CLSID_ObjektGeometrie, IID_IInitObjektGeometrie



///////////////////////////////////////////////////////////////////////////////////////////////
// Klasse f�r das Hinzuf�gen von Innenkonturen
// IModifyOperation ist das Interface, das alle ModifyOperation's f�r die CObjectModify-Klasse
// bereitstellen, d.h. das Interface, �ber das die CObjectModify-Klasse die ModifyOperation's
// rufen kann (Gegen-Interface zu IModifyClassSite)
class CIslandAdd : public IModifyOperation,
    			   public ITRiASNotificationSink,
    			   public ITRiASSysNotificationSink,
    			   public CComObjectRoot,
    			   public CComCoClass<CIslandAdd, &CLSID_IslandAdd>
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

    WEditExtensionSite m_wEdExSite;	// Interface von CGeoEditExtension f�r EditierOperationen
    WTopicalObjects m_wTopObjs;		// Interface der Klasse CTopicalObjects

    WEnumObjektGeometrie m_wBelowObjs;// m_wTopObjs-Fl�chenobjekte, die bei Aufruf dieser
    								// Operation unter der Mausspitze lagen
    WEnumObjektGeometrie m_wModObjs;// m_wBelowObjs-Fl�chenobjekte, zu denen eine Innenkontur
    								// hinzugef�gt werden soll (Untermenge von m_wBelowObjs)
    WEnumObjektGeometrie m_wAndArea;// eine Durchschnittsfl�che der m_wModObjs-Fl�chen
	long m_lAndONr;					// Objektnummer f�r Durchschnittsfl�che m_wAndArea
    ulong m_ulModCnt;				// Anzahl der m_wModObjs-Fl�chenobjekte

    WObjektGeometrie m_wIsland;		// ObjektGeometrie der neuen Insel
    long m_lInSize;					// Anzahl der schon editierten St�tzpunkte
	Point m_FirstPt;				// erster Punkt der aktuell editierten Kontur in BS- bzw.
    EPunkt m_FirstPkt;				//  in DB-Koordinaten
	Point m_LastPt;					// letzter Punkt der aktuell editierten Kontur in BS- bzw.
    EPunkt m_LastPkt;				//  in DB-Koordinaten
    WDragObject m_wDragObj;			// die aktuell nachgezogene Linie
    bool m_bCloseLineDelete;		// Linie l�schen, die die editierte Insel schlie�t

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

    double m_dAktDreieck;			// Fl�cheninhalt der aktuellen Dreiecksfl�che
    double m_dAktInsel;				// Fl�cheninhalt der aktuellen Insel
    double m_dAktGesFlaeche;		// aktueller Gesamtfl�cheninhalt einer Fl�che, zu der eine
    								// neue Insel hinzugef�gt werden soll

    // Memberfunktionen
    HRESULT KeyDown (WPARAM wParam);
    HRESULT KeyUp (WPARAM wParam);
    HRESULT MouseMove (HWND hWnd, LPARAM lParam);
    HRESULT LeftMouseDown (LPARAM lParam);
    HRESULT LeftMouseUp (void);
    void RightMouseDown (LPARAM lParam);
    HRESULT RightMouseUp (void);
	HRESULT LeftDoubleClick (void);
    HRESULT BuildModObjects (void);
    HRESULT BuildAndArea (void);
    void VisalAndArea (ulong ulIdent);
    HRESULT IsGrabAllowableForIslandAdd (IEnumObjektGeometrie* pIEnumOG);
    HRESULT NewIslandObject (void);
    HRESULT ContinueButtonAction (void);
    void IslandButtonAction (ulong ulIdent);
    HRESULT AddIsland (ulong ulIdent);
    HRESULT StoreAreaWithNewIsland (IObjektGeometrie* pIOG, ulong ulIdent);
    HRESULT SetStartingContents (void);
    bool AktuelleWerteAnzeigen (Point Pt);

public:
    // Konstruktor, Destruktor
    CIslandAdd (void);
    ~CIslandAdd (void);

    DECLARE_REGISTRY_RESOURCEID(IDR_ISLANDADD)

    BEGIN_COM_MAP(CIslandAdd)
    	COM_INTERFACE_ENTRY(ITRiASNotificationSink)
    	COM_INTERFACE_ENTRY(ITRiASSysNotificationSink)
    	COM_INTERFACE_ENTRY(IModifyOperation)
    END_COM_MAP()

    // IModifyOperation
    STDMETHOD (SetModifyClassSite) (IEditExtensionSite* pIEdExSite, IModifyClassSite*);
    STDMETHOD (LineElongation) (IEnumObjektGeometrie*, long, long);
    STDMETHOD (AreaPartition) (long, POINT);
    STDMETHOD (IslandAddition) (IEnumObjektGeometrie* pBelowObjs);
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

#endif // _ISLANDADD_H_
