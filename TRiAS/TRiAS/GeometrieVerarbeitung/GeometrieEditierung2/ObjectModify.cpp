// Definitionen: Geometrie existierender Objekte modifizieren
// File: ObjectModify.cpp
// W. M�rtl


#include "GeoEditP.h"

#include <defattr.h>		// StandardAttribute f�r Punkte, Linien etc. (DEF_SIZE_PUNKT_X, ...)
#include <hdrentrx.hxx>		// HeaderEntryX
#include <registrx.hxx>		// CCurrentUser

#include "strecke.hxx"

#include "ObjectModify.h"



#if defined(_DEBUG)
#undef THIS_FILE
static char BASED_CODE THIS_FILE[] = __FILE__;
#endif



///////////////////////////////////////////////////////////////////////////////////////////////
// externe Variable
extern ResourceFile* pRF;



///////////////////////////////////////////////////////////////////////////////////////////////
// statische globale Variable
static void AddMenuOffset (HMENU hMenu, int iOffset);



///////////////////////////////////////////////////////////////////////////////////////////////
// die aktivierten (blinkenden) Objekte aller Recherchefenster durchgehen
BOOL _GEOEDIT_EXPORT FAR PASCAL AktivierteObjekte (LONG hWnd, BOOL, void* pvAktObjs)
{
// Objektnummer des aktivierten Objektes des hWnd-Recherchefensters geben lassen
long lONr = DEX_GetActiveObject (hWnd);

	_ASSERTE (lONr != 0);
	_ASSERTE (lONr != -1);

    if (0 != lONr && -1 != lONr)
    {
    	if (SUCCEEDED (((CObjectModify*)pvAktObjs)->TestActObject (lONr)))
    		return true;
    }
    return false;
}



///////////////////////////////////////////////////////////////////////////////////////////////
// Konstruktor
CObjectModify::CObjectModify (void)
{
    m_pVWnd = g_pTE->MVWind();	// TRiAS-ViewFenster
    m_dwCookieN = 0L;
    m_dwCookieSN = 0L;
    m_bGeoRein = false;			// Ankopplung von GeoRein.ext �ber Interface noch nicht erfolgt
    m_LeftButtonSem = false;	// linke Maustaste noch nicht gedr�ckt
    m_RightButtonSem = false;	// rechte Maustaste noch nicht gedr�ckt
    m_lParamOld = 0;			// letzte Mausposition
    m_NewCP = CURSPOS_UNKNOWN;	// aktuelle CursorPosition
    m_OldCP = CURSPOS_UNKNOWN;	// bisherige CursorPosition
    m_bSpezCP = false;			// noch keine spezielle CursorPosition
    m_bMenu = false;			// Men� wird noch nicht angezeigt
	m_bRW = false;				// kein m_wBelowObjs-Objekt geh�rt zu einer R/W-Objektklasse
}


// --------------------------------------------------------------------------------------------
// Destruktor
CObjectModify::~CObjectModify (void)
{
    // Interface's wieder freigeben
    m_wGeoRein.Assign (NULL);

    if (m_wModOper.IsValid())
	{
		m_wModOper->SetModifyClassSite (NULL, NULL);
		m_wModOper.Assign (NULL);
	}
}



///////////////////////////////////////////////////////////////////////////////////////////////
// Verbindung zur GeoEdit-Erweiterung �ber deren Interface IEditExtensionSite herstellen
// --------------------------------------------------------------------------------------------
STDMETHODIMP CObjectModify::SetEditExtensionSite (IEditExtensionSite* pIEdExSite)
{
    try
    {
    	if (pIEdExSite != NULL)
    	{
    	WUnknown wISite;

    		// Verbindung zu TRiAS �ber Interface ITriasExtension herstellen
    		THROW_FAILED_HRESULT (pIEdExSite->GetXtensionSite (wISite.ppi()));
    		THROW_FAILED_HRESULT (pIEdExSite->CreateInterfaceTO (m_wTopObjs.ppi()));

    		if (wISite.IsValid()) 		// in TRiAS reinh�ngen
    		{
    			if (m_dwCookieN != 0L || m_dwCookieSN != 0L)	// anmelden
    				_com_issue_error (E_UNEXPECTED);		// darf noch nicht angemeldet sein

    			m_Site = wISite;			// throws_com_error
    			THROW_FAILED_HRESULT (AtlAdvise (m_Site, (ITRiASNotificationSink*)this,
    								  IID_ITRiASNotificationSink, &m_dwCookieN));

    			THROW_FAILED_HRESULT (AtlAdvise (m_Site, (ITRiASSysNotificationSink*)this,
    								  IID_ITRiASSysNotificationSink, &m_dwCookieSN));
    		}

    		m_wEdExSite = pIEdExSite;

    		m_wTopObjs->SetMarkVis (true);	// St�tzpunkte der ausgew�hlten Objekte sollen
    										//  markiert werden
    	}
    	else
    	{
    		// St�tzpunktmarkierungen der ausgew�hlten Objekte sollen gel�scht werden
    		m_wTopObjs->SetMarkVis (false);

    		// Cursor wieder auf die Standard-Form "PFEIL" zur�cksetzen
    		m_wEdExSite->SetCursor (CURSFORM_PFEIL, TRUE);

    		if (m_dwCookieN != 0L || m_dwCookieSN != 0L)		// abmelden
    			THROW_FAILED_HRESULT (DisconnectFromServer());	// gibt uns u.u. frei

    		m_wTopObjs.Assign (NULL);	// freigeben
    		m_wEdExSite.Assign (NULL);	// freigeben
    	}
    }
    catch (_com_error& e)
    {
    	return _COM_ERROR (e);
    }

    return S_OK;

} // SetEditExtensionSite


// --------------------------------------------------------------------------------------------
// TRiASNotificationSink und TRiASSysNotificationSink bei TRiAS wieder abmelden
HRESULT CObjectModify::DisconnectFromServer (void)
{
// k�nstliches AddRef, da uns nachfolgendes AtlUnadvise freigeben kann
WUnknown Unk ((IEditOperation*)this);

    AtlUnadvise (m_Site, IID_ITRiASNotificationSink, m_dwCookieN); 
    AtlUnadvise (m_Site, IID_ITRiASSysNotificationSink, m_dwCookieSN); 
    
    m_Site.Assign (NULL);	// freigeben von TRiAS
    m_dwCookieN = 0L;
    m_dwCookieSN = 0L;
    return S_OK;

} // DisconnectFromServer


// --------------------------------------------------------------------------------------------
STDMETHODIMP CObjectModify::InformRestrictLinesState (IRestrictLine*, IRestrictLine*)
{
    ATLTRACENOTIMPL("CObjectModify::InformRestrictLinesState");
}

// --------------------------------------------------------------------------------------------
STDMETHODIMP CObjectModify::DeleteRestrictedCursor (void)
{
    ATLTRACENOTIMPL("CObjectModify::DeleteRestrictedCursor");
}


///////////////////////////////////////////////////////////////////////////////////////////////
// IMenuHandling
// --------------------------------------------------------------------------------------------
// Behandlung der von der GeoEdit-Erweiterung �bergebenen MenuCommand's
STDMETHODIMP CObjectModify::WorkMenuCommand (WPARAM MenuItemID, HWND hWnd)
{
HRESULT hrRet = S_OK;

    switch (MenuItemID)
    {
    	case IDM_VERTEXMOD:		// St�tzpunkt verschieben durch Koordinaten �ndern
    		ManualVertexModify();// nicht als separates C++-Objekt
    		break;

    	case IDM_VERTEXADD:		// St�tzpunkt hinzuf�gen durch Koordinaten erg�nzen
    		ManualVertexAdd();	// nicht als separates C++-Objekt
    		break;

    	case IDM_VERTEXDEL:		// St�tzpunkt l�schen
    		VertexDelete();		// nicht als separates C++-Objekt
    		break;

    	case IDM_LINEPART:
    		LineSplitting();	// nicht als separates C++-Objekt
    		break;

    	case IDM_LINEELONG:
    		LineElongationStart();
    		break;

    	case IDM_LINETOAREA:
    		LineToArea();		// nicht als separates C++-Objekt
    		break;

    	case IDM_OBJECTROT:
//			ObjectRotateStart();
    		break;

    	case IDM_OBJECTPART:	// Schnittlinie f�r Fl�chenteilung bilden
    		AreaPartitionStart();
    		break;

    	case IDM_OBJECTCUT:		// Objekt bei Geometriefehlern auftrennnen
    		ObjectsCut();		// nicht als separates C++-Objekt
    		break;

    	case IDM_ISLANDADD:
    		IslandAddStart();
    		break;

    	case IDM_ISLANDDEL:		// Insel l�schen
    		IslandsDelete();	// nicht als separates C++-Objekt
    		break;

    	case IDM_AREATOLINE:	// Fl�che aufbrechen
    		AreaToLine();		// nicht als separates C++-Objekt
    		break;

    	case IDM_RECHTWINKL:	// Rechtwinkligkeit bezogen auf die angeklickte Strecke erzeugen
    		MakeAreaRectangular();	// nicht als separates C++-Objekt
    		break;

		case IDM_COMMONBORDER:	// Teil einer Linie bzw. Fl�chenkontur �bernehmen
			CommonBorderStart();
			break;

    	case IDM_OBJECTDEL:		// Objekt(e) l�schen
    		ObjectsDelete();	// nicht als separates C++-Objekt
    		break;

    	case IDCANCEL:
    		break;

    	default:
    		_ASSERTE (false);
    		hrRet = S_FALSE;
    }

    return hrRet;

} // WorkMenuCommand
 

// --------------------------------------------------------------------------------------------
// Behandlung des von der GeoEdit-Erweiterung �bergebenen MenuInit; kommt, bevor ein Men� auf
// dem Bildschirm angezeigt wird
STDMETHODIMP CObjectModify::WorkMenuInit (HMENU hMenu, LPARAM lParam, HWND hWnd)
{
    if (!m_bMenu)
    	return S_FALSE;		// nicht mein Men�

UINT uiMOffset;		// MenuOffset(); ist in xtencatl.hxx f�r CTriasExtension definiert

    m_wEdExSite->GetMenuOffset (&uiMOffset);

    // wenn nur LINIENobjekte ausgew�hlt wurden, dann Men�-Eintr�ge "Linie(n) teilen",
    // "Linie(n) verl�ngern" und "Linie(n) zu Fl�chen" einf�gen
    if (OTLinie == m_iAllOT)
    {
    	InsertMenu (hMenu, IDM_OBJECTDEL+uiMOffset, MF_BYCOMMAND|MF_STRING,
    				IDM_LINETOAREA+uiMOffset, ResString(ResID(IDS_LINETOAREA,pRF),50).Addr());
    	InsertMenu (hMenu, IDM_LINETOAREA+uiMOffset, MF_BYCOMMAND|MF_STRING,
    				IDM_LINEELONG+uiMOffset, ResString(ResID(IDS_LINEELONG,pRF),50).Addr());
    	InsertMenu (hMenu, IDM_LINEELONG+uiMOffset, MF_BYCOMMAND|MF_STRING,
    				IDM_LINEPART+uiMOffset, ResString(ResID(IDS_LINEPART,pRF),50).Addr());

		InsertMenu (hMenu, 6, MF_BYPOSITION|MF_SEPARATOR, 0 , NULL);

    	// Men�punkt "Linie(n) verl�ngern" nur aktivieren, wenn Cursor auf dem ersten bzw.
    	// letzten St�tzpunkt eines Linienobjektes steht, keines der Linienobjekte geschlossen
		// ist und alle zur gleichen Datenquelle geh�ren
    	if (m_bSpezCP && AllOpen() && OneDataSource())
    		EnableMenuItem (hMenu, IDM_LINEELONG+uiMOffset, MF_BYCOMMAND|MF_ENABLED);
    	else
    		EnableMenuItem (hMenu, IDM_LINEELONG+uiMOffset, MF_BYCOMMAND|MF_GRAYED);

    	// Men�punkt "Linie(n) teilen" nur aktivieren, wenn Cursor nicht auf dem ersten bzw.
    	// letzten St�tzpunkt eines Linienobjektes steht
    	if (m_bSpezCP)
    		EnableMenuItem (hMenu, IDM_LINEPART+uiMOffset, MF_BYCOMMAND|MF_GRAYED);
    	else
    		EnableMenuItem (hMenu, IDM_LINEPART+uiMOffset, MF_BYCOMMAND|MF_ENABLED);

    // Men�punkt "Linie(n) zu Fl�chen" nur aktivieren, wenn Cursor auf geschlossenem 
	// Linienobjekt steht
	// #hk020719: Linien werden auch umgewandelt, wenn sie nicht geschlossen sind,
	// dazu wird eine Warnung in der eigentlichen Routine ausgegeben
//    	if (AllClosed())
    		EnableMenuItem (hMenu, IDM_LINETOAREA+uiMOffset, MF_BYCOMMAND|MF_ENABLED);
//    	else
//    		EnableMenuItem (hMenu, IDM_LINETOAREA+uiMOffset, MF_BYCOMMAND|MF_GRAYED);
    }


ulong ulBelowCnt;	// Anzahl der Objekte, die unter der Mausspitze liegen

	m_wBelowObjs->GetCount (&ulBelowCnt);

    // wenn nur FL�CHENobjekte ausgew�hlt wurden ...
    if (OTFlaeche == m_iAllOT)
    {
    	// ... und alle zur gleichen Datenquelle geh�ren, dann Men�punkt "Insel(n) hinzuf�gen"
		// aktivieren
		if (OneDataSource())
    		EnableMenuItem (hMenu, IDM_ISLANDADD+uiMOffset, MF_BYCOMMAND|MF_ENABLED);

    	// ... und Cursor auf wenigstens einer Innenkontur steht, dann Men�punkt
		// "Insel(n) l�schen" aktivieren
    	if (m_bSpezCP)
    		EnableMenuItem (hMenu, IDM_ISLANDDEL+uiMOffset, MF_BYCOMMAND|MF_ENABLED);

    	// ... und genau EINE Fl�che unter der Mausspitze liegt, dann Men�punkt
		// "Schnittlinie bilden" aktivieren
    	if (1 == ulBelowCnt) {
    		EnableMenuItem (hMenu, IDM_OBJECTPART+uiMOffset, MF_BYCOMMAND|MF_ENABLED);

		// wenn genau eine Fl�che unter Mausspitze liegt und diese keine Insel hat
		// dann Menupunkt 'Zu Linie konvertieren' hinzuf�gen
		WUnknown Unk;

			m_wBelowObjs -> Reset();
			if (S_OK == m_wBelowObjs -> Next (1, Unk.ppi(), NULL)) {
			WObjektGeometrie wObj (Unk);
			short iOT, iKCnt;			// Parameter des wObj-Objektes

	    		wObj -> GetObjTyp (&iOT);
	    		wObj -> GetKCnt (&iKCnt);
				if (OT_FLAECHE == iOT && 1 == iKCnt) {
			    	InsertMenu (hMenu, IDM_OBJECTDEL+uiMOffset, MF_BYCOMMAND|MF_STRING,
    					IDM_AREATOLINE+uiMOffset, ResString(ResID (IDS_AREATOLINE,pRF),50).Addr());
				}
			}
		}
    }


    // wenn nur LINIEN- bzw. FL�CHENobjekte ausgew�hlt wurden und Cursor auf einer Strecke
    // steht, dann Men�punkt "St�tzpunkt(e) modifizieren" durch "St�tzpunkt(e) hinzuf�gen"
    // ersetzen
    if (((m_iAllOT & OTLinie || m_iAllOT & OTFlaeche) && 0 == (m_iAllOT & OTPunkt)) &&
    	CURSPOS_LINE == m_NewCP)	// Cursor auf Strecke
    {
    	ModifyMenu (hMenu, IDM_VERTEXMOD+uiMOffset, MF_BYCOMMAND|MF_STRING,
    				IDM_VERTEXADD+uiMOffset, ResString(ResID(IDS_VERTEXADD,pRF),50).Addr());

    	// Men�punkt "St�tzpunkt(e) l�schen" deaktivieren
    	EnableMenuItem (hMenu, IDM_VERTEXDEL+uiMOffset, MF_BYCOMMAND|MF_GRAYED);
    }


    // wenn Cursor auf einer Konturstrecke einer einzigen aktivierten Fl�che steht und kein
	// Schreibschutz vorliegt, dann Men�punkt "Rechtwinkligkeit" aktivieren, sonst deaktivieren
    if (CURSPOS_LINE == m_NewCP &&	// Cursor auf Strecke und
    	(m_iAllOT & OTFlaeche))		// mindestens 1 Fl�che selektiert
    {
    	m_lAktONr = 0;

    ENUMNOKEYLONG ENKL;		// Enumeration aller Recherchefenster

    	memset (&ENKL, '\0', sizeof (ENUMNOKEYLONG));
    	ENKL.eFcn = (ENUMNOKEYLONGPROC) AktivierteObjekte;
    	ENKL.ePtr = (void*)this;

    bool bRet = DEX_EnumORWindows (ENKL);

    	if (0 != m_lAktONr && -1 != m_lAktONr && bRet)	// Cursor steht an einer einzigen
														//  aktivierten Fl�che
    		// Men�punkt "Rechtwinkligkeit" aktivieren
    		EnableMenuItem (hMenu, IDM_RECHTWINKL+uiMOffset, MF_BYCOMMAND|MF_ENABLED);
    }

	// Men�punkt "Selbstinzidenzen bereinigen"
	MenuSelfTouch (hMenu);

	// Men�punkt "Gemeinsame Linie"
	MenuCommonBorder (hMenu);

    // wenn mehrere Objekte unter der Mausspitze liegen, dann die Singular- durch die
    // Plural-Men�texte ersetzen
    if (ulBelowCnt > 1) PluralTexts (hMenu, uiMOffset);

    return S_OK;

} // WorkMenuInit
 

// --------------------------------------------------------------------------------------------
// Behandlung des von der GeoEdit-Erweiterung �bergebenen MenuSelect
STDMETHODIMP CObjectModify::WorkMenuSelect (UINT uiMenuID, HMENU hMenu, HWND hWnd)
{
ResString rsText (ResID (IDS_STATKOORDMOD, pRF), 100);		// case IDM_VERTEXMOD

    switch (uiMenuID)
    {
    	case IDM_VERTEXMOD:
    		break;

    	case IDM_VERTEXDEL:	// St�tzpunkt l�schen
    		rsText = ResString (ResID (IDS_STATVERTDELETE, pRF), 100);
    		break;

    	case IDM_VERTEXADD:		// St�tzpunkt hinzuf�gen
    		rsText = ResString (ResID (IDS_STATVERTADD, pRF), 100);
    		break;

    	case IDM_LINEPART:		// Linie teilen
    		rsText = ResString (ResID (IDS_STATLINIETEIL, pRF), 100);
    		break;

    	case IDM_LINEELONG:		// Linie verl�ngern
    		rsText = ResString (ResID (IDS_STATLINIEVERL, pRF), 100);
    		break;

    	case IDM_LINETOAREA:		// Linie zu Fl�che konvertieren
    		rsText = ResString (ResID (IDS_STATLINETOAREA, pRF), 100);
    		break;

    	case IDM_OBJECTROT:
    		rsText = ResString (ResID (IDS_STATOBJDREHEN, pRF), 100);
    		break;

    	case IDM_OBJECTPART:		// Schnittlinie f�r Fl�chenteilung bilden
    		rsText = ResString (ResID (IDS_STATOBJPART, pRF), 100);
    		break;

    	case IDM_OBJECTCUT:			// Objekt bei Geometriefehlern auftrennnen
    		rsText = ResString (ResID (IDS_STATOBJCUT, pRF), 100);
    		break;

    	case IDM_ISLANDADD:
    		rsText = ResString (ResID (IDS_STATADDINSEL, pRF), 100);
    		break;

    	case IDM_ISLANDDEL:
    		rsText = ResString (ResID (IDS_STATSUBINSEL, pRF), 100);
    		break;

    	case IDM_AREATOLINE:
    		rsText = ResString (ResID (IDS_STATAREATOLINE, pRF), 100);
    		break;

    	case IDM_RECHTWINKL:	// Rechtwinkligkeit bezogen auf die angeklickte Strecke erzeugen
    		rsText = ResString (ResID (IDS_STATRECHTWINKL, pRF), 100);
    		break;

    	case IDM_OBJECTDEL:		// Objekt(e) l�schen
    		rsText = ResString (ResID (IDS_STATOBJDELETE, pRF), 100);
    		break;

    	case IDCANCEL:
    		rsText = ResString (ResID (IDS_STATABBRUCH, pRF), 100);
    		break;

    	default:
    		DEX_SetMessageStringNoKickIdle ("");
    		return S_FALSE;
    }

    DEX_SetMessageStringNoKickIdle (rsText.Addr());
    return S_OK;

} // WorkMenuSelect



///////////////////////////////////////////////////////////////////////////////////////////////
// IModifyClassSite
// --------------------------------------------------------------------------------------------
// weitere Parameter an ModifyOperation's �bergeben
HRESULT CObjectModify::GetParameter (long* plMPX, long* plMPY,
									 IEnumObjektGeometrie** ppBelowObjs)
{
    // aktuelle CursorPosition und die darunter liegenden ausgew�hlten Objekte ermitteln, da
    // nach einem St�tzpunktHinzuf�gen OHNE erneutes MouseMove gleich wieder ein LeftMouseDown
    // f�r St�tzpunktVerschieben kommen kann
    RefreshCursorForm();

    *plMPX = m_GrabPkt.X();
    *plMPY = m_GrabPkt.Y();
    *ppBelowObjs = m_wBelowObjs;	// ein weiterer Zugriff auf *ppBelowObjs durch
    (*ppBelowObjs)->AddRef();		// diese Pointerkopie; deshalb AddRef()
	// AddRef() w�re auch f�r den rechten Operanten "m_wBelowObjs" m�glich; damit h�tte aber
	// vermutlich der BoundsChecker Probleme, da AddRef() und Release() f�r die GLEICHE
	// Variable erwartet wird
    return S_OK;

} // GetParameter


// --------------------------------------------------------------------------------------------
// rechteckiger Ausschnitt neu zeichnen, in dem der modifizierte Teil des Objektes pIOG liegt
HRESULT CObjectModify::SectorToDraw (IUnknown* pIOG, long lModPktX, long lModPktY, long lInd,
	 								 BOOL bVtDel, RECT* pSector)
{
    _ASSERTE (pIOG != NULL);

double dQuot = 1.;   // Quotient von Bezugsma�stab und Darstellungsma�stab

	if (!DEX_GetActiveScaling (dQuot))
		dQuot = 1.;

    if (dQuot > 0)
		dQuot *= 100.;	
    else
    {
    	_ASSERTE (dQuot > 0);
    	dQuot = 1.;   // um Division durch Null vorzubeugen
    }

Dimension dimDots = GetDotsPerMM (NULL);	// Pixel pro Millimeter f�r den Bildschirm

int iMarkGr;

    m_wTopObjs->GetMarkerSizeBS (&iMarkGr);

short iOT;
ulong ulIdent = (ulong)-1;
WObjektGeometrie wObj;

	try
	{
		wObj = pIOG;		// mit implizitem QueryInterface
		wObj->GetObjTyp (&iOT);
		wObj->GetIdent (&ulIdent);
    }
    catch (_com_error& e)
    {
    	return _COM_ERROR (e);
    }

HANDLEVISINFO HVI;

    INITSTRUCT (HVI, HANDLEVISINFO);	// Initialisierung
    HVI.m_lIdent = ulIdent;				// Identifikator
    HVI.m_pDesc = NULL;					// beschreibender Text
    HVI.m_pView = NULL;					// SichtName (aktuelle Sicht: NULL)

    switch (iOT)
    {
    	case OT_PUNKT:
    	{
    	PVISINFO PVI;
    	SIZE sizePG;
    			
    		HVI.m_iVTyp = VTPunkt;		// VisInfoTyp
    		HVI.m_pVI = &(PVI.m_VI);	// generischer Pointer auf VisInfo
    		if (DEX_GetIdentVisInfo (HVI))	// R�ckkehrCode ausgewertet
    			sizePG = PVI.m_Size;   // Punktgr��e (Eintrag aus der VisInfo)
    		else
    		{
    			sizePG.cx = DEF_SIZE_PUNKT_X;
    			sizePG.cy = DEF_SIZE_PUNKT_Y;
    		}

    	// Gr��e des Punktsymbols in BS-Pixel in x- bzw. y-Richtung
    	int ixpix = (int) (sizePG.cx * dimDots.Width() / dQuot);
    	int iypix = (int) (sizePG.cy * dimDots.Height() / dQuot);
    	
    		*pSector = SectorDefine (wObj, lModPktX, lModPktY, lInd, bVtDel);
    		pSector->left -= ixpix/2 + iZug;
    		pSector->right += ixpix/2 + iZug; 
    		pSector->top += iypix/2 + iZug;
    		pSector->bottom -= iypix/2 + iZug;
    		break;
    	}


    	case OT_KANTE:
    	{
    	LVISINFO LVI;
    	int iLinBr;

    		HVI.m_iVTyp = VTLinie;		// VisInfoTyp
    		HVI.m_pVI = &(LVI.m_VI);	// generischer Pointer auf VisInfo
    		if (DEX_GetIdentVisInfo (HVI))		// R�ckkehrCode ausgewertet
    			// LinienBreite (Eintrag aus der Visualisierungsinformation)
    			iLinBr = LVI.m_Width;
    		else
    			iLinBr = DEF_WIDTH_LINIE;

    	// Maximum aus Linienbreite und Gr��e eines Markers in x- bzw. y-Richtung
    	// der double-Cast vor dem 2. Parameter ist erforderlich weil die max-Routine f�r beide
    	// Parameter den gleichen Typ erwartet
	 	int iZugX = (int)max (iLinBr * dimDots.Width() / dQuot + iZug, (double)iMarkGr);
	 	int iZugY = (int)max (iLinBr * dimDots.Height() / dQuot + iZug, (double)iMarkGr);
    	
    	
    		*pSector = SectorDefine (wObj, lModPktX, lModPktY, lInd, bVtDel);
    		pSector->left -= iZugX;	// zu bildendes Rechteck noch um Maximun aus Linienbreite
    		pSector->right += iZugY;	//  bzw. Marker-Gr��e vergr��ern
    		pSector->top += iZugX;
    		pSector->bottom -= iZugY;
    		break;
    	}

    		
    	case OT_FLAECHE:
    	{
    	FVISINFO FVI;
    	double dKontBr;
    			
    		HVI.m_iVTyp = VTFlaeche;		// VisInfoTyp
    		HVI.m_pVI = &(FVI.m_VI);		// generischer Pointer auf VisInfo
    		if (DEX_GetIdentVisInfo (HVI))	// R�ckkehrCode ausgewertet
    			// m_Style ist ein 16-Bit-Wort mit mehreren Informationen; wenn das 16. Bit
    			// ausgeblendet und der Rest durch 100 dividiert wird, liefert das ganzzahligen
    			// Divisionsergebnis die Konturbreite in 0.01 mm, d.h. den Eintrag aus der
    			// Visualisierungsinformation
    			dKontBr = ((FVI.m_VI.m_Style) & 0x7FFF) / 100.;
    		else
    			dKontBr = DEF_WIDTH_FRAME;

    	// Maximum aus Konturbreite und Gr��e eines Markers in x- bzw. y-Richtung
	 	int iZugX = (int)max (dKontBr * dimDots.Width() / dQuot + iZug, (double)iMarkGr);
	 	int iZugY = (int)max (dKontBr * dimDots.Height() / dQuot + iZug, (double)iMarkGr);
    	
    		*pSector = SectorDefine (wObj, lModPktX, lModPktY, lInd, bVtDel);
    		pSector->left -= iZugX;	// zu bildendes Rechteck noch um Maximun aus Konturbreite
    		pSector->right += iZugY;	//  bzw. Marker-Gr��e vergr��ern
    		pSector->top += iZugX;
    		pSector->bottom -= iZugY;
    		break;
    	}


    	default:
    		_ASSERTE (false);
    		break;
    }
     
    return S_OK;

} // SectorToDraw


// --------------------------------------------------------------------------------------------
// Hilfsroutine f�r CVertexMove, VertexDelete() und CVertexAdd;
// es wird true zur�ckgegeben, wenn Objekt gespeichert wurde, sonst false
HRESULT CObjectModify::ModObjSpeicherung (IUnknown* pIOG, long lModPktX, long lModPktY,
	 									 long lInd, BOOL bVtDel, TestRicht trRicht, RECT* pRec)
{
    _ASSERTE (pIOG != NULL);
    _ASSERTE (pRec != NULL);

    if (! pIOG) return E_UNEXPECTED;

WObjektGeometrie wObj;

	try
	{
		wObj = pIOG;	// mit implizitem QueryInterface
	}
    catch (_com_error& e)
    {
    	return _COM_ERROR (e);
    }

// mit Schl�ssel "GeoFehlerTest" in den projektbezogenen Eintr�gen des DB-Headers testen ...
// ... ob vor Abspeicherung des wObj-Objektes nach TRiAS auf Geometriefehler getestet werden
//     soll (ja) oder nicht (nein)
// ... Entartung bereinigt werden soll (Bit 4 = 1) oder nicht (Bit 4 = 0)
ResString Schluessel (ResID (IDS_GEOFEHLERTEST, pRF), 30);	
HeaderEntryX HE (Schluessel);
char pcInPuffer[20] = { "\0" };	// Wert des Schl�ssels "GeoFehlerTest"

    if (HE.Status() != HE_INVALID)	// Schl�ssel "GeoFehlerTest" existiert im DB-Header
    	strcpy (pcInPuffer, HE.EntryText());

HRESULT hrSA = S_OK;	// return-Wert der Routine ShortAnalysis() 
bool bGeoRein = true;	// GeoRein.ext soll angeworfen werden
long lONr;

   	wObj->GetONr (&lONr);

    if (pcInPuffer[0] != 'n' && pcInPuffer[0] != 'N')
    {
    short iOT;

    	// wenn Objekt schon von vornherein fehlerbehaftet ist (Eintrag im Merkmal
    	// "Geometriefehler"), dann kommt nur eine vollst�ndige Geometriepr�fung in Betracht;
    	// andererseits reicht eine Kurzanalyse aus (Unterscheidung in dem OGGeometryIsChecked-
    	// Flag)
    	wObj->GetObjTyp (&iOT);
   		GeoReinInterface();		// (wenn noch nicht, dann) GeoReinInterface f�r
    							// FehlerhaftesObjekt() und  ShortAnalysis() zuschalten
    	if ((OT_KANTE == iOT || OT_FLAECHE == iOT) &&
    		 S_OK != FehlerhaftesObjekt (m_wGeoRein, lONr))
    	{
    		if (m_wGeoRein.IsValid())
    		{
    			hrSA = m_wGeoRein->ShortAnalysis (wObj, trRicht, &lInd);
    			if (S_OK == hrSA)	// Analyse ergab keinen Geometriefehler
    				bGeoRein = false;	// GeoRein.ext nicht anwerfen
    			else
    			{
    				if (E_FAIL == hrSA)	// Analyse ergab Geometriefehler
    				{
    				// bei St�tzpunktmanipulation ist ein Geometriefehler entstanden
    				ResString resText (ResID (IDS_GEOFEHLERMOD, pRF), 150);
    				ResString resCapt (ResID (IDS_LONGCLASSNAME, pRF), 50);
    				
    					MessageBox (__hWndM, resText.Addr(), resCapt.Addr(),
    								MB_ICONEXCLAMATION | MB_OK);
    				}
    				else
    				{
    					// �bergabe von unerlaubten Parametern
    					DEX_Error (RC_ObjectModify, EC_ILLPARS);					
    					MessageBox (__hWndM, "Das ver�nderte Objekt wurde nicht abgespeichert,\nda unerlaubte Parameter �bergeben wurden!",
    								"Achtung:", MB_ICONEXCLAMATION | MB_OK);
    				}
    			}
    		}
    	}
    }
    else
    	bGeoRein = false;	// GeoRein.ext nicht anwerfen

    // Ausschnitt f�r Neuzeichnen nach Geometrie-Modifikation
    SectorToDraw (wObj, lModPktX, lModPktY, lInd, bVtDel, pRec);

    if (S_OK == hrSA)	// modifiziertes Objekt wird nach TRiAS gespeichert
    {
		// OGModObject:         Geometrie des Objektes soll ersetzt werden
		// OGForceGeometry:     auch au�erhalb des aktuellen DBConts abspeichern
		// OGGeometryIsChecked: GeoRein.ext sol nicht angeworfen werden
    	if (bGeoRein)
    		wObj->SetFlags (OGModObject | OGForceGeometry);
    	else
    		wObj->SetFlags (OGModObject | OGForceGeometry | OGGeometryIsChecked);

#if _TRiAS_VER < 0x0300
    	// 1. Parameter von GeometrieAnTRiAS() besagt, da� Undo m�glich ist
    	return wObj->GeometrieAnTRiAS (true, pRec);
#else
	INT_PTR hPr = reinterpret_cast<INT_PTR>(DEX_GetObjectProject (lONr));

    	// 2. Parameter von GeometrieAnTRiASEx() besagt, da� Undo m�glich ist
    	return wObj->GeometrieAnTRiASEx (hPr, true, pRec);
#endif // _TRiAS_VER < 0x0300
    }

    return hrSA;

} // ModObjSpeicherung


// --------------------------------------------------------------------------------------------
// GrabPunkt m_GrabPkt setzen
HRESULT CObjectModify::SetGrabPoint (long lGPX, long lGPY)
{
    m_GrabPkt.X() = lGPX;
    m_GrabPkt.Y() = lGPY;
    return S_OK;

} // SetGrabPoint


// --------------------------------------------------------------------------------------------
// die CursorForm aktualisieren und den Schreibschutz der ge�ffneten Datenquellen ermitteln
HRESULT CObjectModify::RefreshCursorForm (void)
{
#if _TRiAS_VER < 0x0300
	m_bRW = true;	// Objektklasse hat R/W-Modus
#else
	m_bRW = false;	// keine Objektklasse mit R/W-Modus
#endif // _TRiAS_VER < 0x0300

	try
	{
		m_wTopObjs->CursorAtTopicalObjects (&m_NewCP, &m_bSpezCP, &m_GrabPkt.X(),
											&m_GrabPkt.Y(), m_wBelowObjs.ppi());
#if _TRiAS_VER >= 0x0300
	WUnknown Unk;
	ulong ulIdent = 0;

		for (m_wBelowObjs->Reset(); S_OK == m_wBelowObjs->Next (1, Unk.ppi(), NULL); )
		{
		// Abfrage, ob zugeh�rige Objektklassen schreibgesch�tzt sind oder nicht
		WObjektGeometrie wObj (Unk);

    		wObj->GetIdent (&ulIdent);
			if (0 == DEX_GetROModeIdent (ulIdent))
			{
				m_bRW = true;	// mindestens eine Objektklasse mit R/W-Modus
				break;
			}
		}
#endif // _TRiAS_VER >= 0x0300
	}
   	catch (_com_error&)
   	{
	    return m_wEdExSite->SetCursor (CURSFORM_PFEIL, TRUE);
	}

    if (m_NewCP == m_OldCP)
	{
		if (CURSPOS_UNKNOWN == m_NewCP)
		    return m_wEdExSite->SetCursor (CURSFORM_PFEIL, TRUE);
		return S_OK;
	}

    m_OldCP = m_NewCP;	// bisherige CursorPosition retten

    if (CURSPOS_VERTEX == m_NewCP)		// Cursor im Marker eines St�tzpunktes
    {
		if (m_bRW)
		{
    		if (GetKeyState (VK_CONTROL) >= 0)	// CTRL-Taste nicht gedr�ckt
    			return m_wEdExSite->SetCursor (CURSFORM_STERN, TRUE);
    		return m_wEdExSite->SetCursor (CURSFORM_KREUZ, TRUE);
		}

	// nur R/O-Modus, deshalb Anzeige in der Statuszeile
	ResString rsText (ResID (IDS_ROMODE, pRF), 100);

		DEX_SetMessageStringNoKickIdle (rsText.Addr());
		return m_wEdExSite->SetCursor (CURSFORM_PFEIL, TRUE);
    }

    if (CURSPOS_LINE == m_NewCP)	// Cursor "in der N�he" einer Strecke
	{
		if (m_bRW)
	    	return m_wEdExSite->SetCursor (CURSFORM_TRENNER, TRUE);

	// nur R/O-Modus, deshalb Anzeige in der Statuszeile
	ResString rsText (ResID (IDS_ROMODE, pRF), 100);

		DEX_SetMessageStringNoKickIdle (rsText.Addr());
		return m_wEdExSite->SetCursor (CURSFORM_PFEIL, TRUE);
	}

    return m_wEdExSite->SetCursor (CURSFORM_PFEIL, TRUE);

} // RefreshCursorForm



///////////////////////////////////////////////////////////////////////////////////////////////
// Interface ITRiASNotificationSink: TRiAS-Notification's abfangen
// --------------------------------------------------------------------------------------------
STDMETHODIMP CObjectModify::ServerEvent (SERVEREVT se)
{
    ATLTRACE("CObjectModify::ServerEvent not implemented");
	return S_OK;
}


// --------------------------------------------------------------------------------------------
STDMETHODIMP CObjectModify::ProjectEvent (long hPr, PROJECTEVT pe, VARIANT vProj)
{
    ATLTRACE("CObjectModify::ProjectEvent not implemented");
	return S_OK;
}


// --------------------------------------------------------------------------------------------
// TRiAS-Notification's abfangen, die f�r die aktuelle Sicht verschickt werden
STDMETHODIMP CObjectModify::GeoViewEvent (long hPr, GEOVIEWEVT ve, VARIANT vData)
{
    if (m_wModOper.IsValid()) // eine ModifyOperation ist aktiv
    {
    	try
    	{
    	WTRiASNotificationSink wNotSink (m_wModOper);

    		// Weiterleitung an aktive ModifyOperation
    		wNotSink->GeoViewEvent (hPr, ve, vData);
    	}
    	catch (_com_error&)
    	{
		    ATLTRACE("throw-failure in CObjectModify::GeoViewEvent");
    	}

    	return S_OK;
    }

	return S_OK;

} // GeoViewEvent


// --------------------------------------------------------------------------------------------
STDMETHODIMP CObjectModify::GeoClassEvent (long hPr, GEOCLASSEVT ce, long ulIdent)
{
    ATLTRACE("CObjectModify::GeoClassEvent not implemented");
	return S_OK;
}


// --------------------------------------------------------------------------------------------
STDMETHODIMP CObjectModify::GeoObjectEvent (long hPr, GEOOBJECTEVT oe, long lONr)
{
    ATLTRACE("CObjectModify::GeoObjectEvent not implemented");
	return S_OK;
}


// --------------------------------------------------------------------------------------------
STDMETHODIMP CObjectModify::GeoFeatureEvent (long hPr, GEOFEATUREEVT fe, long ulMCode)
{
    ATLTRACE("CObjectModify::GeoFeatureEvent not implemented");
	return S_OK;
}


// --------------------------------------------------------------------------------------------
STDMETHODIMP CObjectModify::GeoRelationEvent (long hPr, GEORELATIONEVT re, long ulRCode)
{
    ATLTRACE("CObjectModify::GeoRelationEvent not implemented");
	return S_OK;
}


// --------------------------------------------------------------------------------------------
STDMETHODIMP CObjectModify::ObjectWindowEvent (OBJWNDEVT oe, long hORWnd)
{
    ATLTRACE("CObjectModify::ObjectWindowEvent not implemented");
	return S_OK;
}



///////////////////////////////////////////////////////////////////////////////////////////////
// Interface ITRiASSysNotificationSink: WindowsNotification's abfangen
// --------------------------------------------------------------------------------------------
STDMETHODIMP CObjectModify::WindowsMessage (long hWnd, long uiMsg, long wParam, long lParam)
{
    switch (uiMsg)
    {
    	case WM_KEYDOWN:
    		KeyDown (hWnd, uiMsg, wParam, lParam);
    		break;
    	
    	case WM_KEYUP:
    		KeyUp (hWnd, uiMsg, wParam, lParam);
    		break;

		case WM_CHAR:
    		WMChar (hWnd, uiMsg, wParam, lParam);
			break;

    	case WM_MOUSEMOVE:
    		MouseMove (hWnd, uiMsg, wParam, lParam);
    		break;

    	case WM_LBUTTONDOWN:
    		LeftMouseDown (hWnd, uiMsg, wParam, lParam);
    		break;

    	case WM_LBUTTONUP:
    		LeftMouseUp (hWnd, uiMsg, wParam, lParam);
    		break;

    	case WM_RBUTTONDOWN:
    		RightMouseDown (hWnd, uiMsg, wParam, lParam);
    		break;

    	case WM_RBUTTONUP:
    		RightMouseUp (hWnd, uiMsg, wParam, lParam);
    		break;

		case WM_LBUTTONDBLCLK:
    		LeftDoubleClick (hWnd, uiMsg, wParam, lParam);
    		break;

		// aktive ModifyOperation abmelden (z.B. LineElongation)
		case WM_WM_OBJMODIFYEND:
			if (m_wModOper.IsValid())
			{
	    		m_wModOper->SetModifyClassSite (NULL, NULL);
				m_wModOper.Assign (NULL);
			}

			break;
    }

    return S_OK;	// immer weiterleiten

} // WindowsMessage


// --------------------------------------------------------------------------------------------
// eine bestimmte Taste der Tastatur wurde gedr�ckt, z. B. SHIFT, CTRL
HRESULT CObjectModify::KeyDown (long hWnd, UINT uiMsg, WPARAM wParam, LPARAM lParam)
{
    if (! m_wModOper.IsValid())	// keine ModifyOperation aktiv
    {
    	if (VK_CONTROL == wParam) 				// CTRL-Taste gedr�ckt und
    	{
    		if (CURSPOS_VERTEX == m_NewCP)		// Cursor im Marker eines St�tzpunktes
    			return m_wEdExSite->SetCursor (CURSFORM_KREUZ, TRUE);	// dann KREUZ-Form
    	}
    	else return S_FALSE;	// keine f�r ObjectModify relevante Taste gedr�ckt
    }

    else						// eine ModifyOperation aktiv
    {
    	try
    	{
    	WTRiASSysNotificationSink wSysNotSink (m_wModOper);

    		// Weiterleitung der WindowsMessage an aktive ModifyOperation
    		wSysNotSink->WindowsMessage (hWnd, uiMsg, wParam, lParam);
    	}
    	catch (_com_error& e)
    	{
    		return _COM_ERROR (e);
    	}
    }

    return S_OK;

} // KeyDown


// --------------------------------------------------------------------------------------------
// eine Taste der Tastatur wurde losgelassen
HRESULT CObjectModify::KeyUp (long hWnd, UINT uiMsg, WPARAM wParam, LPARAM lParam)
{
    if (! m_wModOper.IsValid())	// keine ModifyOperation aktiv
    {
    	if (VK_CONTROL == wParam)	// CTRL-Taste losgelassen
    	{
    		if (CURSPOS_VERTEX == m_NewCP)		// Cursor im Marker eines St�tzpunktes
    			return m_wEdExSite->SetCursor (CURSFORM_STERN, TRUE);
    		else if (CURSPOS_LINE == m_NewCP)	// Cursor "in der N�he" einer Strecke
    			return m_wEdExSite->SetCursor (CURSFORM_TRENNER, TRUE);
    		else
    			return m_wEdExSite->SetCursor (CURSFORM_PFEIL, TRUE);
    	}
    	return S_FALSE;		// keine f�r ObjectModify relevante Taste losgelassen
    }

    else						// eine ModifyOperation aktiv
    {
   	WTRiASSysNotificationSink wSysNotSink (m_wModOper);

    	COM_TRY
    	{
			if (m_wModOper.IsValid())
				wSysNotSink = m_wModOper;

    		// Weiterleitung der WindowsMessage an aktive ModifyOperation
    		wSysNotSink->WindowsMessage (hWnd, uiMsg, wParam, lParam);
    	}
		COM_CATCH;
    }

    return S_OK;

} // KeyUp


// --------------------------------------------------------------------------------------------
// eine bestimmte Taste wurde gedr�ckt, z. B. TAB
HRESULT CObjectModify::WMChar (long hWnd, UINT uiMsg, WPARAM wParam, LPARAM lParam)
{
    if (! m_wModOper.IsValid())	// keine ModifyOperation aktiv
    	return S_FALSE;

   	COM_TRY
   	{
   	WTRiASSysNotificationSink wSysNotSink (m_wModOper);

   		// Weiterleitung der WindowsMessage an ModifyOperation
   		wSysNotSink->WindowsMessage (hWnd, uiMsg, wParam, lParam);
   	}
	COM_CATCH;

    return S_OK;

} // WMChar


// --------------------------------------------------------------------------------------------
// Maus wurde bewegt
HRESULT CObjectModify::MouseMove (long hWnd, UINT uiMsg, WPARAM wParam, LPARAM lParam)
{
	if (NULL == g_pTE->MVWind())	// Projekt wird geschlossen oder kein Projekt ge�ffnet
    	return S_FALSE;				// NICHT "if (NULL == m_pVWnd)" !!!!

    if (lParam == m_lParamOld) return S_OK;	// keine Mausbewegung

    if (m_bMenu) return S_FALSE;			// Men� wird angezeigt

    m_lParamOld = lParam;

long lCnt = 0;

    m_wTopObjs->GetCount (&lCnt);
    if (0 == lCnt)	// keine ausgew�hlten Objekte vorhanden
    	return S_FALSE;

    // wenn keine ModifyOperation aktiv ist, dann f�r CursorForm die Normaleinstellung,
    // ansonsten die Arbeit eben dieser ModifyOperation �berlassen
    if (! m_wModOper.IsValid())
    	// aktuelle CursorPosition und die darunter liegenden ausgew�hlten Objekte ermitteln
    	return RefreshCursorForm();

    // eine ModifyOperation ist aktiv
    try
    {
    WTRiASSysNotificationSink wSysNotSink (m_wModOper);

    	// Weiterleitung der WindowsMessage an aktive ModifyOperation
    	wSysNotSink->WindowsMessage (hWnd, uiMsg, wParam, lParam);
    }
    catch (_com_error& e)
    {
    	return _COM_ERROR (e);
    }

    return S_OK;

} // MouseMove


// --------------------------------------------------------------------------------------------
// linke Maustaste wurde gedr�ckt
HRESULT CObjectModify::LeftMouseDown (long hWnd, UINT uiMsg, WPARAM wParam, LPARAM lParam)
{
    if (m_bMenu ||				// Men� wird angezeigt
		m_LeftButtonSem ||		// linke Maustaste wurde nicht losgelassen
		! m_bRW)				// keine Objektklasse im R/W-Modus
		return S_FALSE;

    m_LeftButtonSem = true;		// linke Maustaste wurde gedr�ckt

    if (m_wModOper.IsValid())	// eine ModifyOperation ist aktiv (z.B. LineElongation)
    {
    	m_bStopLMUp = false;	// ModifyOperation bei LeftMouseUp nicht beenden

    	try
    	{
    	WTRiASSysNotificationSink wSysNotSink (m_wModOper);

    		// Weiterleitung der WindowsMessage an aktive ModifyOperation
    		wSysNotSink->WindowsMessage (hWnd, uiMsg, wParam, lParam);
    	}
    	catch (_com_error& e)
    	{
    		return _COM_ERROR (e);
    	}

    	return S_OK;
    }

    // es ist keine ModifyOperation aktiv
    m_bStopLMUp = true;		// ModifyOperation bei LeftMouseUp beenden

CursForm CF;	// aktuelle CursorForm

    m_wEdExSite->GetCursor (&CF);

    if (CURSFORM_STERN == CF)
    	VertexMoveStart (hWnd, uiMsg, wParam, lParam);	// "St�tzpunkt verschieben" anschieben
    else if (CURSFORM_KREUZ == CF)
	{
    	if (E_FAIL == VertexDelete())		// St�tzpunkt l�schen
			// wenn St�tzpunkt nicht gel�scht werden kann, kommt eine Fehlerausschrift, wodurch
			// LeftMouseUp() �bergangen wird; deshalb ein Pseudo-LeftMouseUp() (29.06.99)
			m_LeftButtonSem = false;
	}
    else if (CURSPOS_LINE == m_NewCP)
    	VertexAddStart (hWnd, uiMsg, wParam, lParam);	// "St�tzpunkt hinzuf�gen" anschieben
    else
    	// befindet sich der Cursor beim Dr�cken der linken Maustaste weder innerhalb einer
    	// St�ztpunktmarkierung noch "in der N�he" einer Kante, gilt dies wie "linke Maustaste
    	// nicht gedr�ckt"
    	m_LeftButtonSem = false;

    return S_OK;

} // LeftMouseDown


// --------------------------------------------------------------------------------------------
// linke Maustaste wurde losgelassen
HRESULT CObjectModify::LeftMouseUp (long hWnd, UINT uiMsg, WPARAM wParam, LPARAM lParam)
{
    if (!m_LeftButtonSem)	// linke Maustaste wurde nicht gedr�ckt
    	return S_FALSE;

    m_LeftButtonSem = false;		// linke Maustaste wurde losgelassen

    try
    {
    WTRiASSysNotificationSink wSysNotSink (m_wModOper);

    	wSysNotSink->WindowsMessage (hWnd, uiMsg, wParam, lParam);
    }
    catch (_com_error& e)
    {
    	return _COM_ERROR (e);
    }

    if (m_bStopLMUp && m_wModOper.IsValid())	// ModifyOperation beenden
	{
		m_wModOper->SetModifyClassSite (NULL, NULL);
    	m_wModOper.Assign (NULL);
	}

    return S_OK;

} // LeftMouseUp


// --------------------------------------------------------------------------------------------
// rechte Maustaste wurde gedr�ckt
HRESULT CObjectModify::RightMouseDown (long hWnd, UINT uiMsg, WPARAM wParam, LPARAM lParam)
{
    if (m_wModOper.IsValid()) // eine ModifyOperation ist aktiv (z.B. LineElongation)
    {
    	try
    	{
    	WTRiASSysNotificationSink wSysNotSink (m_wModOper);

    		// Weiterleitung der WindowsMessage an aktive ModifyOperation
    		wSysNotSink->WindowsMessage (hWnd, uiMsg, wParam, lParam);
    	}
    	catch (_com_error& e)
    	{
    		return _COM_ERROR (e);
    	}

    	return S_OK;
    }

    // es ist keine ModifyOperation aktiv
    if (m_bMenu) return S_FALSE;	// Men� wird angezeigt

    // wenn sich Cursor nicht im Marker bzw. auf der Strecke eines Objektes befindet, dann wird
    // dies angesehen wie "rechte Maustaste nicht gedr�ckt"
    if (CURSPOS_VERTEX != m_NewCP && CURSPOS_LINE != m_NewCP)
    	return S_FALSE;

    m_RightButtonSem = true;		// rechte Maustaste wurde gedr�ckt
	m_ptRM = BSPoint (lParam);		// BS-Punkt, bei dem rechte Maustaste gedr�ckt wurde

    // die beiden nachfolgenden Aktionen werden f�r die Linienverl�ngerung und das
    // Rechtwinkligmachen ben�tigt
	m_PktRM = DBKoordinaten (m_ptRM);	// DB-Punkt, bei dem rechte Maustaste gedr�ckt wurde
    m_wTopObjs->GetEpsilon (&m_lEpsilon);

    return S_OK;

} // RightMouseDown


// --------------------------------------------------------------------------------------------
// rechte Maustaste wurde losgelassen
HRESULT CObjectModify::RightMouseUp (long hWnd, UINT uiMsg, WPARAM wParam, LPARAM lParam)
{
    if (m_wModOper.IsValid()) // eine ModifyOperation ist aktiv (z.B. LineElongation)
    {
    	try
    	{
    	WTRiASSysNotificationSink wSysNotSink (m_wModOper);

    		// Weiterleitung der WindowsMessage an aktive ModifyOperation
    		wSysNotSink->WindowsMessage (hWnd, uiMsg, wParam, lParam);
    	}
    	catch (_com_error& e)
    	{
    		return _COM_ERROR (e);
    	}

    	return S_OK;
    }

    if (!m_RightButtonSem)	// rechte Maustaste wurde nicht gedr�ckt
    	return S_FALSE;

    m_RightButtonSem = false;		// rechte Maustaste wurde losgelassen

	if (! m_bRW)	// kein Objekt aus einer R/W-Objektklasse
		return S_FALSE;

// y-Koordinate zur�ckdrehen, da f�r Anzeige des Men�s Windows(???)-Koordinaten ben�tigt
// werden (iAway ist in EditKonst.h definiert)
Point Pnt;
Rectangle CRc = m_pVWnd->CanvasRect();

    Pnt.X() = m_ptRM.X() + iAway;
    Pnt.Y() = CRc.Top() - CRc.Bottom() - m_ptRM.Y() + iAway;

Window Wnd(__hWndM);	// TRiAS-Hauptfenster

    GetBelowObjTypes();

    m_bMenu = true;		// Men� wird angezeigt
    switch (m_iAllOT)
    {
    	case OTPunkt:
    	case OTPunkt | OTLinie:
    	case OTPunkt | OTFlaeche:
    	case OTPunkt | OTLinie | OTFlaeche:
    		ObjectModifyMenu (&Wnd, Pnt, IDR_POINTMODMENUE);
    		break;

    	case OTLinie:
    	case OTLinie | OTFlaeche:
    		ObjectModifyMenu (&Wnd, Pnt, IDR_LINEMODMENUE);
    		break;

    	case OTFlaeche:
    		ObjectModifyMenu (&Wnd, Pnt, IDR_AREAMODMENUE);
    		break;
    }

    // wenn IN das Men� geklickt wurde, wird an dieser Stelle WorkMenuCommand() eingeschoben,
    // um den ausgew�hlten Men�punkt zu behandeln
    m_pVWnd->Update();		// Hintergrund nach Zerlegen des Men�s sofort zeichnen
    m_bMenu = false;		// Men� wird nicht mehr angezeigt
    // wenn NEBEN das Men� geklickt wurde, wird an dieser Stelle LeftMouseDown() bzw.
    // RightMouseDown() eingeschoben

/* K�nnen die nachfolgenden Zeilen wegen des am 24.02.99 in CGeoEditExtension::WindowsNotification
   (GeoEdit.cpp) eingef�gten "case WM_MOUSEMOVE:" jetzt wegfallen ????????
// durch das Hintergrundzeichnen nach dem Zerlegen des Men�s wird die kurzzeitig angezeigte
// Sanduhr durch TRiAS wieder in den letzten Cursor zur�ck verwandelt; wenn der Anwender mit
// der Mausbedienung zu schnell ist, kann dieses Zur�ckverwandeln zu sp�t und damit verkehrt
// erfolgen; deshalb nachfolgende Vorsichtsma�nahme
CursForm CF;	// aktuelle CursorForm

    m_wEdExSite->GetCursor (&CF);
    m_wEdExSite->SetCursor (CF, TRUE);
*/
	
    return S_OK;

} // RightMouseUp


// --------------------------------------------------------------------------------------------
// Doppelklick auf linke Maustaste
HRESULT CObjectModify::LeftDoubleClick (long hWnd, UINT uiMsg, WPARAM wParam, LPARAM lParam)
{
    if (! m_wModOper.IsValid() || // es ist keine ModifyOperation aktiv
		m_bMenu)		// Men� wird angezeigt
		return S_FALSE;

    // eine ModifyOperation ist aktiv (z.B. LineElongation)
    try
    {
    WTRiASSysNotificationSink wSysNotSink (m_wModOper);

    	// Weiterleitung der WindowsMessage an aktive ModifyOperation
    	wSysNotSink->WindowsMessage (hWnd, uiMsg, wParam, lParam);
    }
    catch (_com_error& e)
    {
    	return _COM_ERROR (e);
    }

    return S_OK;

} // LeftDoubleClick

/*
// --------------------------------------------------------------------------------------------
// Windows-Timer, der aller halbe Sekunden kommt, abfragen
void CObjectModify::WindowsTimer (WPARAM wParam)
{
    if (1 == wParam)	// d.h. TIMER_HALFSECOND
    	m_wEdExSite->SetCursor (m_AktCurForm);
}
*/


// --------------------------------------------------------------------------------------------
// Ermittlung der Typen der ausgew�hlten Objekte
HRESULT CObjectModify::GetBelowObjTypes (void)
{
HRESULT hrRet = S_OK;	// return-Wert
short iOT;
WUnknown Unk;

    m_iAllOT = 0;
	m_lBelowLACnt = 0;

	try
	{
		for (m_wBelowObjs->Reset(); S_OK == m_wBelowObjs->Next (1, Unk.ppi(), NULL); )
		{
		WObjektGeometrie wObj (Unk);

    		wObj->GetObjTyp (&iOT);

    		if (OT_PUNKT == iOT)
    			m_iAllOT |= OTPunkt;
    		else if (OT_KANTE == iOT)
			{
    			m_iAllOT |= OTLinie;
				m_lBelowLACnt++;
			}
    		else if (OT_FLAECHE == iOT)
			{
    			m_iAllOT |= OTFlaeche;
				m_lBelowLACnt++;
			}
    		else 
    		{
    			_ASSERTE (iOT == OT_PUNKT || iOT == OT_KANTE || iOT == OT_FLAECHE);
    			hrRet = E_UNEXPECTED;	// sonst nur weitermachen
    		}
		}
	}
    catch (_com_error& e)
    {
    	return _COM_ERROR (e);
    }

    return hrRet;

} // GetBelowObjTypes


// --------------------------------------------------------------------------------------------
// Testen, ob die m_wBelow-Objekte alles OFFENE Linienobjekte sind; wenn ja, dann ist der
// return-Wert "true"
bool CObjectModify::AllOpen (void)
{
WUnknown Unk;
short iOT;
long lCnt;
KoOrd* plXK; KoOrd* plYK;

    try
    {
    	for (m_wBelowObjs->Reset(); S_OK == m_wBelowObjs->Next (1, Unk.ppi(), NULL); )
    	{
		WObjektGeometrie wObj (Unk);

    		wObj->GetObjTyp (&iOT);

    		if (OT_KANTE != iOT)
    			return false;

    		wObj->GetCnt (&lCnt);
    		wObj->GetX ((void**)&plXK);
    		wObj->GetY ((void**)&plYK);

    		if (plXK[0] == plXK[lCnt-1] && plYK[0] == plYK[lCnt-1])
    			return false;
    	}
    }
    catch (_com_error&)
    {
    	return false;
    }

    return true;

} // AllOpen

// --------------------------------------------------------------------------------------------
// Testen, ob die m_wBelow-Objekte alles GESCHLOSSENE Linienobjekte sind; wenn ja, dann ist der
// return-Wert "true"
bool CObjectModify::AllClosed (void)
{
WUnknown Unk;
short iOT;
long lCnt;
KoOrd* plXK; KoOrd* plYK;

    COM_TRY {
    	for (m_wBelowObjs->Reset(); S_OK == m_wBelowObjs->Next (1, Unk.ppi(), NULL); /**/) {
		WObjektGeometrie wObj (Unk);

    		wObj->GetObjTyp (&iOT);

    		if (OT_KANTE != iOT)
    			return false;

    		wObj->GetCnt (&lCnt);
    		wObj->GetX ((void**)&plXK);
    		wObj->GetY ((void**)&plYK);

    		if (plXK[0] != plXK[lCnt-1] || plYK[0] != plYK[lCnt-1])
    			return false;
    	}
    } COM_CATCH_RETURN(false);
    return true;

} // AllOpen


// --------------------------------------------------------------------------------------------
// Testen, ob die m_wBelow-Objekte alle zur gleichen Datenquelle geh�ren; wenn ja, dann ist der
// return-Wert "true"
bool CObjectModify::OneDataSource (void)
{
#if _TRiAS_VER < 0x0300
	return true;
#else
ulong ulBelowCnt;	// Anzahl der Objekte, die unter der Mausspitze liegen

	m_wBelowObjs->GetCount (&ulBelowCnt);

	// wenn h�chstens 1 Objekt unter der Mausspitze liegt bzw. wenn h�chstens eine Datenquelle
	// ge�ffnet ist, dann ist der Test schon entschieden
	if (ulBelowCnt <= 1 || DEX_GetOpenConnectionCount (QDCAllOpen) <= 1)
		return true;

WUnknown Unk;
long lONr;

    try
    {
	WObjektGeometrie wObj;

   		m_wBelowObjs->Reset();

	HRESULT hr = m_wBelowObjs->Next (1, Unk.ppi(), NULL);

    	if (S_OK == hr) wObj = Unk;
		else return false;

		wObj->GetONr (&lONr);

	HPROJECT hPr = DEX_GetObjectProject (lONr);
		
		for ( ; S_OK == m_wBelowObjs->Next (1, Unk.ppi(), NULL); )
    	{
			wObj = Unk;
    		wObj->GetONr (&lONr);

    		if (hPr != DEX_GetObjectProject (lONr))
    			return false;
    	}
    }
    catch (_com_error&)
    {
    	return false;
    }

    return true;

#endif // _TRiAS_VER < 0x0300
} // OneDataSource
 

// --------------------------------------------------------------------------------------------
// Men�punkt "Selbstinzidenzen bereinigen" evtl. eintragen, wenn
// - in der Registry der Eintrag "SelfTouch" steht
// - genau ein Linien- bzw. Fl�chenobjekt recherchiert wurde
// - dieses Objekt einen Selbstinzidenz-Fehler hat (Eintrag im Merkmal "Geometriefehler")
HRESULT CObjectModify::MenuSelfTouch (HMENU hMenu)
{
ResString rsSelfTouch (ResID (IDS_SELFTOUCH, pRF), 30);	
CCurrentUser cuExtConfig (KEY_READ, RegistryExtPathEdit);
DWORD dw;

	if (!cuExtConfig.GetDWORD (rsSelfTouch.Addr(), dw))
		return S_FALSE;		// kein Eintrag in Registry

    if (0 == (m_iAllOT & OTLinie) && 0 == (m_iAllOT & OTFlaeche))
		return S_FALSE;		// nicht nur LINIEN- und FL�CHENobjekte ausgew�hlt

ulong ulBelowCnt;	// Anzahl der Objekte, die unter der Mausspitze liegen
long lONr;

	m_wBelowObjs->GetCount (&ulBelowCnt);

	if (ulBelowCnt > 1)
		return S_FALSE;		// es liegen mehrere Objekte unter der Mausspitze

    try
    {
	WUnknown Unk;
	WObjektGeometrie wObj;

   		m_wBelowObjs->Reset();

	HRESULT hr = m_wBelowObjs->Next (1, Unk.ppi(), NULL);

    	if (S_OK == hr) wObj = Unk;
		else _com_issue_error (hr);

		wObj->GetONr (&lONr);
    }
    catch (_com_error& e)
    {
		return _COM_ERROR (e);
    }

	GeoReinInterface();
	if (S_OK != FehlerhaftesObjekt (m_wGeoRein, lONr, '1'))
		return S_FALSE;		// Objekt hat keine Selbstinzidenz

UINT uiMOffset;		// MenuOffset(); ist in xtencatl.hxx f�r CTriasExtension definiert

    m_wEdExSite->GetMenuOffset (&uiMOffset);

int iItCnt = GetMenuItemCount (hMenu);	// Anzahl der schon vorhandenen Men�eintr�ge
int i = 0;

    if (OTLinie == m_iAllOT)
    {
		// Men�punkt vor "Objekt(e) l�schen" (genauer gesagt: vor dem Separator, der sich vor
		// dem Men�punkt "Objekt(e) l�schen" befindet) einf�gen
    	// Position des Men�punktes "Objekt(e) l�schen" bestimmen
    	for (i = 0; i < iItCnt; i++)
    		if (IDM_OBJECTDEL+uiMOffset == GetMenuItemID (hMenu, i))
    			break;

    	// i ist die Position des Men�punktes "Objekt(e) l�schen"; um den neuen Men�punkt
    	// "Selbstinzidenzen bereinigen" vor den davor befindlichen Separator einzuf�gen, wird
    	// in InsertMenu() der 2. Parameter auf i-1 gesetzt
	}
	else	// m_iAllOT == OTFlaeche
    {
		// Men�punkt vor "Insel hinzuf�gen" (genauer gesagt: vor dem Separator, der sich vor
		// dem Men�punkt "Insel hinzuf�gen" befindet) einf�gen
    	for (i = 0; i < iItCnt; i++)
    		if (IDM_ISLANDADD+uiMOffset == GetMenuItemID (hMenu, i))
    			break;
	}

	InsertMenu (hMenu, i-1, MF_BYPOSITION|MF_STRING, IDM_OBJECTCUT+uiMOffset,
				ResString(ResID(IDS_CLEARSELFTOUCH,pRF),50).Addr());

	return S_OK;

} // MenuSelfTouch
 

// --------------------------------------------------------------------------------------------
// Men�punkt "Gemeinsame Linie" deaktivieren, wenn
// - unter der Mausspitze keine Linie und keine Fl�che liegt
// - es nicht noch mindestens eine weitere ausgew�hlte Linie bzw. Fl�che gibt
HRESULT CObjectModify::MenuCommonBorder (HMENU hMenu)
{
short iOT;
long lSelLACnt = 0;	// Anzahl der ausgew�hlten Linien und Fl�chen

	COM_TRY
	{
	// alle ausgew�hlten, d.h. markierten Objekte geben lassen
	WEnumObjektGeometrie wAllSelObjs;

		THROW_FAILED_HRESULT (m_wTopObjs->GetEnumTopicalObjectsGeometry (TRUE, wAllSelObjs.ppi()));
	
	WUnknown Unk;

		for (wAllSelObjs->Reset(); S_OK == wAllSelObjs->Next (1, Unk.ppi(), NULL); )
		{
		WObjektGeometrie wObj (Unk);

			wObj->GetObjTyp (&iOT);
			if (OT_KANTE == iOT || OT_FLAECHE == iOT)
				lSelLACnt++;
			else continue;
		}
	}
	COM_CATCH;

	if (0 == m_lBelowLACnt || lSelLACnt <= m_lBelowLACnt)
	{
	UINT uiMOffset;		// MenuOffset(); ist in xtencatl.hxx f�r CTriasExtension definiert

		m_wEdExSite->GetMenuOffset (&uiMOffset);
    	EnableMenuItem (hMenu, IDM_COMMONBORDER+uiMOffset, MF_BYCOMMAND|MF_GRAYED);
	}

	return S_OK;

} // MenuCommonBorder


// --------------------------------------------------------------------------------------------
// wenn mehrere Objekte unter der Mausspitze liegen, dann die Singulartexte der Men�-Eintr�ge
// durch Plural-Men�texte ersetzen
void CObjectModify::PluralTexts (HMENU hMenu, UINT uiMOffset)
{
// St�tzpunkte modifizieren
UINT uiMenuState = GetMenuState (hMenu, IDM_VERTEXMOD+uiMOffset, MF_BYCOMMAND);

    if (uiMenuState != (UINT)-1)
    	ModifyMenu (hMenu, IDM_VERTEXMOD+uiMOffset, MF_BYCOMMAND|uiMenuState,
    				IDM_VERTEXMOD+uiMOffset, ResString(ResID(IDS_VERTICESMOD,pRF),50).Addr());

    // St�tzpunkte hinzuf�gen
    uiMenuState = GetMenuState (hMenu, IDM_VERTEXADD+uiMOffset, MF_BYCOMMAND);
    if (uiMenuState != (UINT)-1)
    	ModifyMenu (hMenu, IDM_VERTEXADD+uiMOffset, MF_BYCOMMAND|uiMenuState,
    				IDM_VERTEXADD+uiMOffset, ResString(ResID(IDS_VERTICESADD,pRF),50).Addr());

    // St�tzpunkte l�schen
    uiMenuState = GetMenuState (hMenu, IDM_VERTEXDEL+uiMOffset, MF_BYCOMMAND);
    if (uiMenuState != (UINT)-1)
    	ModifyMenu (hMenu, IDM_VERTEXDEL+uiMOffset, MF_BYCOMMAND|uiMenuState,
    				IDM_VERTEXDEL+uiMOffset, ResString(ResID(IDS_VERTICESDEL,pRF),50).Addr());

    // Objekte drehen
    uiMenuState = GetMenuState (hMenu, IDM_OBJECTROT+uiMOffset, MF_BYCOMMAND);
    if (uiMenuState != (UINT)-1)
    	ModifyMenu (hMenu, IDM_OBJECTROT+uiMOffset, MF_BYCOMMAND|uiMenuState,
    				IDM_OBJECTROT+uiMOffset, ResString(ResID(IDS_OBJECTSROT,pRF),50).Addr());

    // Linien teilen
    uiMenuState = GetMenuState (hMenu, IDM_LINEPART+uiMOffset, MF_BYCOMMAND);
    if (uiMenuState != (UINT)-1)
    	ModifyMenu (hMenu, IDM_LINEPART+uiMOffset, MF_BYCOMMAND|uiMenuState,
    				IDM_LINEPART+uiMOffset, ResString(ResID(IDS_LINESPART,pRF),50).Addr());

    // Linien verl�ngern
    uiMenuState = GetMenuState (hMenu, IDM_LINEELONG+uiMOffset, MF_BYCOMMAND);
    if (uiMenuState != (UINT)-1)
    	ModifyMenu (hMenu, IDM_LINEELONG+uiMOffset, MF_BYCOMMAND|uiMenuState,
    				IDM_LINEELONG+uiMOffset, ResString(ResID(IDS_LINESELONG,pRF),50).Addr());

    // Linien zu Fl�chen machen
    uiMenuState = GetMenuState (hMenu, IDM_LINETOAREA+uiMOffset, MF_BYCOMMAND);
    if (uiMenuState != (UINT)-1)
    	ModifyMenu (hMenu, IDM_LINETOAREA+uiMOffset, MF_BYCOMMAND|uiMenuState,
    				IDM_LINETOAREA+uiMOffset, ResString(ResID(IDS_LINESTOAREA,pRF),50).Addr());

    // Inseln hinzuf�gen
    uiMenuState = GetMenuState (hMenu, IDM_ISLANDADD+uiMOffset, MF_BYCOMMAND);
    if (uiMenuState != (UINT)-1)
    	ModifyMenu (hMenu, IDM_ISLANDADD+uiMOffset, MF_BYCOMMAND|uiMenuState,
    				IDM_ISLANDADD+uiMOffset, ResString(ResID(IDS_ISLANDSADD,pRF),50).Addr());

    // Inseln l�schen
    uiMenuState = GetMenuState (hMenu, IDM_ISLANDDEL+uiMOffset, MF_BYCOMMAND);
    if (uiMenuState != (UINT)-1)
    	ModifyMenu (hMenu, IDM_ISLANDDEL+uiMOffset, MF_BYCOMMAND|uiMenuState,
    				IDM_ISLANDDEL+uiMOffset, ResString(ResID(IDS_ISLANDSDEL,pRF),50).Addr());

    // Objekte l�schen
    uiMenuState = GetMenuState (hMenu, IDM_OBJECTDEL+uiMOffset, MF_BYCOMMAND);
    if (uiMenuState != (UINT)-1)
    	ModifyMenu (hMenu, IDM_OBJECTDEL+uiMOffset, MF_BYCOMMAND|uiMenuState,
    				IDM_OBJECTDEL+uiMOffset, ResString(ResID(IDS_OBJECTSDEL,pRF),50).Addr());
} // PluralTexts


// --------------------------------------------------------------------------------------------
// Men� generieren
void CObjectModify::ObjectModifyMenu (pWindow pW, Point Pt, uint resID)
{
Menu ModifyMenu (ResID (resID, pRF));
HMENU hMenu = ModifyMenu.Handle (API_MENU_HMENU);

    if (NULL == hMenu) return;	// Ressource nicht gefunden
    
// Men� generieren und Offsets addieren
// mit GetSubMenu() erh�lt man das Handle f�r das zu generierende Men� als Sub-Men� von hMenu
HMENU hSubMenu = GetSubMenu (hMenu, 0);	// Sub-Men� holen

UINT uiMOffset;	// MenuOffset(); ist in xtencatl.hxx f�r CTriasExtension definiert

    m_wEdExSite->GetMenuOffset (&uiMOffset);
    AddMenuOffset (hSubMenu, uiMOffset);

    // Konvertierung der Client-Koordinaten von Pt in Screen-Koordinaten
    ClientToScreen (m_pVWnd->Handle (API_CLIENT_HWND), (LPPOINT)&Pt);

    // Anzeige des Men�s an der Pt-Position und Kennzeichnung der ausgew�hlten
    // Men�-Eintr�ge; an dieser Stelle wird MenuInit eingeschaltet
    TrackPopupMenu (hSubMenu, 0, Pt.X(), Pt.Y(), 0, pW->Handle (API_CLIENT_HWND), NULL);

} // ObjectModifyMenu


// --------------------------------------------------------------------------------------------
// Bereich ermitteln, in dem das Objekt pIOG modifiziert wurde, um diesen Ausschnitt neu zu
// zeichnen;
// ist pIOG Fl�che, wird daf�r ein achsenparalleles Rechteck aus der alten, der neuen
// St�tzpunktposition und aus dem vorhergehenden und nachfolgenden St�tzpunkt der
// entsprechenden Kontur gebildet;
// ist pIOG eine Linie, entf�llt f�r Rechteckbildung der vorhergehende oder nachfolgende
// St�tzpunkt, wenn der verschobene St�tzpunkt der erste bzw. letzte gewesen ist;
 // ist pIOG ein Punkt wird  der rechteckige Bereich nur aus der alten und der neuen
// St�tzpunktposition gebildet;
// bVtDel besagt, da� (k)ein St�tzpunkt gel�scht wurde (true/false)
RECT CObjectModify::SectorDefine (IObjektGeometrie* pIOG, long lModPktX, long lModPktY,
    							  long lInd, bool bVtDel)
{
    _ASSERTE (pIOG != NULL);

    if (! pIOG)
    {
    RECT Rec;

    	Rec.left = m_pVWnd->CanvasRect().Left();
    	Rec.top = m_pVWnd->CanvasRect().Top();
    	Rec.right = m_pVWnd->CanvasRect().Right();
    	Rec.bottom = m_pVWnd->CanvasRect().Bottom();

    	return Rec;		// gesamter Bildschirm
    }

short iOT;
long lCnt;
KoOrd* plXK; KoOrd* plYK;

    pIOG->GetObjTyp (&iOT);
    pIOG->GetCnt (&lCnt);
    pIOG->GetX ((void**)&plXK);
    pIOG->GetY ((void**)&plYK);

    _ASSERTE (lInd <= lCnt);

    if (lInd == lCnt)	// passiert bei L�schen des letzten St�tzpunktes
    	lInd = lCnt - 1;

KoOrd x = plXK[lInd];			// neue x- bzw.
KoOrd y = plYK[lInd];			//  y-Koordinate des modifizierten St�tzpunktes
KoOrd xmin = min (x, lModPktX);	// Vergleich mit den alten Koordinaten des
KoOrd xmax = max (x, lModPktX);	//  modifizierten Punktes
KoOrd ymin = min (y, lModPktY);
KoOrd ymax = max (y, lModPktY);

    switch (iOT)
    {
    	case OT_PUNKT:
    		break;
    		
    	case OT_KANTE:
    		if (lInd > 0)			// es wurde nicht der 1. St�tzpunkt modifiziert, dann
    		{						//  Einbeziehung des vorhergehenden St�tzpunktes
    			xmin = min (xmin, plXK[lInd-1]);
    			xmax = max (xmax, plXK[lInd-1]);
    			ymin = min (ymin, plYK[lInd-1]);
    			ymax = max (ymax, plYK[lInd-1]);
    		}
    		if (lInd < lCnt-1 &&	// es wurde nicht der letzte St�tzpunkt modifiziert und
    			! bVtDel)			//  es wurde kein St�tzpunkt gel�scht,
    		{						//  dann Einbeziehung des nachfolgenden St�tzpunktes
    			xmin = min (xmin, plXK[lInd+1]);
    			xmax = max (xmax, plXK[lInd+1]);
    			ymin = min (ymin, plYK[lInd+1]);
    			ymax = max (ymax, plYK[lInd+1]);
    		}
			if (plXK[0] == plXK[lCnt-1] && plYK[0] == plYK[lCnt-1])	// Kante geschlossen
			{
				if (0 == lInd)				// der 1. St�tzpunkt wurde modifiziert
				{
    				xmin = min (xmin, plXK[lCnt-2]);
    				xmax = max (xmax, plXK[lCnt-2]);
    				ymin = min (ymin, plYK[lCnt-2]);
    				ymax = max (ymax, plYK[lCnt-2]);
				}
				else if (lInd == lCnt - 1)	// der letzte St�tzpunkt wurde modifiziert
				{
    				xmin = min (xmin, plXK[1]);
    				xmax = max (xmax, plXK[1]);
    				ymin = min (ymin, plYK[1]);
    				ymax = max (ymax, plYK[1]);
				}
			}
    		break;
    		
    	case OT_FLAECHE:
    	{
    	long lIndv, lIndn;	// Indizes des vorhergehenden bzw. nachfolgenden St�tzpunktes
    	
    		pIOG->IndexVorNach (lInd, &lIndv, &lIndn);	
    		
    		xmin = min (xmin, plXK[lIndv]);
    		xmax = max (xmax, plXK[lIndv]);
    		ymin = min (ymin, plYK[lIndv]);
    		ymax = max (ymax, plYK[lIndv]);

    		if (! bVtDel)	// nicht St�tzpunkt l�schen
    		{
    			xmin = min (xmin, plXK[lIndn]);
    			xmax = max (xmax, plXK[lIndn]);
    			ymin = min (ymin, plYK[lIndn]);
    			ymax = max (ymax, plYK[lIndn]);
    		}
    		break;
    	}

    	default:
    		_ASSERTE (false);
    		break;
    }
    
Point PLO = BSKoordinaten (xmin, ymax);
Point PRU = BSKoordinaten (xmax, ymin);
RECT Rec;

    Rec.left = PLO.X();
    Rec.top = PLO.Y();
    Rec.right = PRU.X();
    Rec.bottom = PRU.Y();

    return Rec;

} // SectorDefine


// --------------------------------------------------------------------------------------------
// Bezug zur Erweiterung "GeometrieBereinigung" herstellen, wenn noch m_bGeoRein == false
HRESULT CObjectModify::GeoReinInterface (void)
{
    if (m_bGeoRein) return S_FALSE;

HRESULT hrRet;

    if (m_Site)
    	hrRet = m_Site->GetXtension (CLSID_GeometrieBereinigung, IID_IExtendGeoRein,
    								 (LPVOID*)&m_wGeoRein);
    else hrRet = E_UNEXPECTED;

    if (FAILED (hrRet) ||	// Fehler, z.B. GeoRein.ext nicht verf�gbar
    	! m_Site)
    {
    ResString resText (ResID (IDS_NOGEOREIN, pRF), 250);
    ResString resCapt (ResID (IDS_LONGCLASSNAME, pRF), 50);
    	
    	MessageBox (__hWndM, resText.Addr(), resCapt.Addr(), MB_ICONEXCLAMATION | MB_OK);
    	return hrRet;
    }

    m_bGeoRein = true;
    return S_OK;

} // GeoReinInterface   


// --------------------------------------------------------------------------------------------
// Testen, ob der Punkt, bei dem mit der rechten Maustaste das Men� erzeugt wurde, an der
// Strecke des aktivierten (blinkenden) lONr-Objektes steht bzw. ob der betreffende Punkt an
// mehr als einem aktivierten Objekt liegt
// return-Werte:
//   S_OK:	  der rechte-Maustaste-Punkt m_PktRM liegt an dem aktivierten lONr-Objekt; es ist
//            das ERSTE Objekt, das gefunden wurde
//   S_FALSE: das lONr-Objekt ist keine Fl�che bzw. m_PktRM liegt nicht an dem aktivierten
//            lONr-Objekt
//   E_FAIL:  der rechte-Maustaste-Punkt m_PktRM liegt an mehr als einem aktivierten Objekt
HRESULT CObjectModify::TestActObject (long lONr)
{
    if (OT_FLAECHE != DEX_GetObjectType (lONr))
    	return S_FALSE;

WObjektGeometrie wObj;	// ObjektGeometrie des lONr-Objektes

    try
    {
    // neues IObjektGeometrie erzeugen und ...
    WInitObjektGeometrie wIObj (CLSID_ObjektGeometrie);	// throws_com_error

    	THROW_FAILED_HRESULT (wIObj->InitObjGeometry (lONr));	// ... initialisieren

    	wObj = wIObj;
    }
    catch (_com_error& e)
    {
    	return _COM_ERROR (e);
    }

KoOrd* plXK; KoOrd* plYK;
short iKCnt;	// Anzahl der Konturen
long* plCnt;	// Anzahl der St�tzpunkte in den Konturen

    wObj->GetX ((void**)&plXK);
    wObj->GetY ((void**)&plYK);
    wObj->GetKCnt (&iKCnt);
    wObj->GetLPCnt (&plCnt);

KoOrd lAbst;	// Abstand des Punktes m_PktRM von Strecke (x0, y0, x1, y1) in Maximum-Norm
EPunkt LPkt;	// f�r Routine LotPktStrecke(): wird hier aber nicht ausgewertet
long lAInd = 0;	// Startwert f�r Anfangsindex einer Kontur
long lEInd = 0;	// Startwert f�r Endindex einer Kontur (eigentlich richtiger: Anfangsindex der
    			// n�chsten Kontur)

    for (int i = 0; i < iKCnt; i++)
    {
    	lEInd += plCnt[i];

    	for (long j = lAInd; j < lEInd-1; j++)
    	{			
    	KoOrd x0 = plXK[j];
    	KoOrd y0 = plYK[j];
    	KoOrd x1 = plXK[j+1];
    	KoOrd y1 = plYK[j+1];

    		// der nachfolgende Test mu� mit der gleichen Routine durchgef�hrt werden, die
    		// hinter ObjektGeometrie::PunktAnStrecke() steckt
    		if (Strecke(x0, y0, x1, y1).LotPktStrecke (m_PktRM, lAbst, LPkt) &&
    			lAbst < m_lEpsilon)
    		{
    			if (0 != m_lAktONr && -1 != m_lAktONr)
    				return E_FAIL;	// m_PktRM liegt an mehr als einem aktivierten Objekt

    			m_lAktONr = lONr;
    			m_iRecKInd = i;
    			m_lRecStInd = j;
    			return S_OK;
    		}
    	}
    	lAInd = lEInd;
    }

    return S_FALSE;

} // TestActObject


///////////////////////////////////////////////////////////////////////////////////////////////
// statische globale Funktion
// --------------------------------------------------------------------------------------------
// Modifikation eines Men�'s (addieren des Men�offsets)
static void AddMenuOffset (HMENU hMenu, int iOffset)
{
    if (0 == hMenu) return;		// nur f�r g�ltige Men�'s

int nCount = GetMenuItemCount (hMenu);
char MenuEntry[DEX_MENUNAMELEN+1];

    for (int wItem = 0; wItem < nCount; wItem++)
    {
    UINT uiMenuState = GetMenuState (hMenu, wItem, MF_BYPOSITION);
    UINT uiMenuID = GetMenuItemID (hMenu, wItem);

    	if (-1 == uiMenuID)		// PopUpMenu
    	{
    		AddMenuOffset (GetSubMenu (hMenu, wItem), iOffset);	
    		continue;
    	}
    	if (uiMenuState & (MF_MENUBARBREAK | MF_MENUBREAK | MF_SEPARATOR))
    		continue;
    	GetMenuString (hMenu, wItem, MenuEntry, DEX_MENUNAMELEN, MF_BYPOSITION);
    	ModifyMenu (hMenu, wItem, MF_BYPOSITION | uiMenuState, uiMenuID+iOffset, MenuEntry);
    }
} // AddMenuOffset
