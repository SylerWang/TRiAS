// Deklarationen: Design-Funktionen
// File: Designing.h
// W. M�rtl

#ifndef _DESIGNING_H_
#define _DESIGNING_H_


#include "SmartInterfaces.h"


///////////////////////////////////////////////////////////////////////////////////////////////
// Klasse f�r die Design-Funktionen
// IEditOperation ist das Interface, das alle EditierOperationen f�r die GeoEdit-Erweiterung
// bereitstellen, d.h. das Interface, �ber das die GeoEdit-Erweiterung die EditierOperationen
// rufen kann (Gegen-Interface zu IEditExtensionSite)
class CDesigning : public IEditOperation,
				   public ITRiASNotificationSink,
				   public ITRiASSysNotificationSink,
				   public CComObjectRoot,
				   public CComCoClass<CDesigning, &CLSID_Designing>
{
private:
    WTriasXtensionSite m_Site;		// TRiAS-Kontext
    DWORD m_dwCookieN;				// Nummer des ConnectionPoint f�r ITRiASNotificationSink
    DWORD m_dwCookieSN;				// Nummer des ConnectionPoint f�r ITRiASSysNotificationSink
    pWindow m_pVWnd;				// TRiAS-ViewFenster
    CoordTransX* m_pCT;				// KoordinatenTransformation
	DoublePair m_dpUF;				// Umrechnungsfaktor bei geod�tischen Koordinaten
    bool m_bIsPaint;				// Hintergrund (durch GEOVIEWEVT_PaintingView bzw.
    								// GEOVIEWEVT_ViewPainted ausgel�st) wird gezeichnet (true)
    bool m_RightButtonSem;			// Synchronisation f�r die rechte Maustaste, um sicher zu
									// stellen, da� "Down" und "Up" im gleichen Fenster kommen
    LPARAM m_lParamOld;				// letzte Mausposition
    CursPos m_OldCP;				// bisherige CursorPosition
    CursPos m_NewCP;				// aktuelle CursorPosition

    WEditExtensionSite m_wEdExSite;	// Interface von CGeoEditExtension f�r EditierOperationen
    WTopicalObjects m_wTopObjs;		// Interface der Klasse CTopicalObjects
    WEnumObjektGeometrie m_wBelowObjs;// diejenigen der ausgew�hlten Objekte, die unter der
    								//  Mausspitze liegen

	Point m_ptRM;					// BS-Punkt, bei dem rechte Maustaste gedr�ckt wurde
	RestrType m_ResType;			// Form der Konstruktionshilfslinie (STRECKE, GERADE, KREIS)
	bool m_bRightAngle;				// im Dialog wurde "rechter Winkel" ausgew�hlt (true)
	double m_dRelAngle;				// Winkel f�r Hilfslinie aus der Dialogeingabe
	double m_dLength;				// L�nge der Hilfslinie
	EPunkt m_FixPkt;				// der ausgew�hlte Fixpunkt
	WRestrictLine m_wRestrLine;		// Interface zu Konstruktionshilfslinie

    // Memberfunktionen
    HRESULT DisconnectFromServer (void);

    HRESULT MouseMove (LPARAM lParam);
    void RightMouseDown (LPARAM lParam);
    HRESULT RightMouseUp (void);
	HRESULT DesignRestrictLine (void);
    HRESULT RefreshCursorForm (void);
	bool IsRestrictLineAtVertex (IObjektGeometrie* pIOG, int iOT, long lCnt, long lPInd);
	bool RegardingCoordinates (IObjektGeometrie* pIOG, long lCnt, long lPInd, long lSInd,
							   KoOrd& x0, KoOrd& y0, KoOrd& x1, KoOrd& y1);
	double GradientAngle (double x0, double y0, double x1, double y1);
	HRESULT RepaintTemporaryObjects (void);
	bool OnePointInline (IObjektGeometrie* pIOG, int iOT, long lCnt, long lPInd);

public:
    // Konstruktor, Destruktor
    CDesigning (void);
    ~CDesigning (void);

    DECLARE_REGISTRY_RESOURCEID(IDR_DESIGNING)

    BEGIN_COM_MAP(CDesigning)
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

#endif //_DESIGNING_H_
