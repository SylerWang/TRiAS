// die eigentlichen Operationen f�r die Erweiterung "Objektoperationen mit GeoObjekten"
// File: Operationen.cxx
// W. M�rtl


#include "ObjOperP.hxx"

#include <hdrentrx.hxx>		// HeaderEntryX

#include "GeometrR.h"		// IDS_MARKOBJECT, ...
#include "ObjOperR.h"		// Ressourcekonstanten f�r diese Erweiterung (IDS_GEOFEHL2,  ...)

#include "geotrias.hxx"		// EFlaecheErzeugen()

#include "DlgFunctions.h"	// SetDefaultIdent()
#include "ObjOper.hxx"		// Klasse f�r diese Erweiterung


#if defined(_DEBUG)
#undef THIS_FILE
static char BASED_CODE THIS_FILE[] = __FILE__;
#endif


#if _TRiAS_VER < 0x0300
const CLSID CLSID_ExtLinienVerfolgung = {0x079638DA,0x3123,0x101C,{0xBB,0x62,0x00,0xAA,0x00,0x18,0x49,0x7C}};
#endif // _TRiAS_VER < 0x0300




///////////////////////////////////////////////////////////////////////////////////////////////
// globale Parameter
extern ResourceFile* pRF;



///////////////////////////////////////////////////////////////////////////////////////////////
// Summe der St�tzpunktanzahl der Au�enkonturen aller selektierten (markierten) Objekte
// (au�er dem ersten) ermitteln und in lSumme zur�ckgeben
BOOL _OBJOPER_EXPORT FAR PASCAL StuetzpunktSumme1 (long lONr, BOOL, void* lSumme)
{
	_ASSERTE (lONr != 0);
	_ASSERTE (lONr != -1);
	_ASSERTE ((ObjektOpExtension*)g_pTE != NULL);

	if (*(long*)lSumme < 0)	// Trick, um die St�tzpunktanzahl des 1. Objektes nicht mitzuz�hlen
		*(long*)lSumme = 0;
	else
		*(long*)lSumme += ((ObjektOpExtension*)g_pTE)->StuetzpunkteAussen (lONr);
	return TRUE;
}


// --------------------------------------------------------------------------------------------
// Summe der St�tzpunktanzahl der Au�enkonturen aller selektierten (markierten) Objekte (au�er
// dem aktivierten, d.h. blinkenden) ermitteln und in lSumme zur�ckgeben
BOOL _OBJOPER_EXPORT FAR PASCAL StuetzpunktSumme2 (long lONr, BOOL, void* lSumme)
{
	_ASSERTE (lONr != 0);
	_ASSERTE (lONr != -1);
	_ASSERTE ((ObjektOpExtension*)g_pTE != NULL);

ObjektOpExtension* pOP = (ObjektOpExtension*)g_pTE;

	if (pOP->ONrAO() != lONr)		// das selektierte Objekt ausschlie�en
		*(long*)lSumme += pOP->StuetzpunkteAussen (lONr);
	return TRUE;
}


// --------------------------------------------------------------------------------------------
// Durchschnitt der lONr-Fl�che mit letzter Fl�che aus _CL1
BOOL _OBJOPER_EXPORT FAR PASCAL FlaechenDurchschnitt (long lONr, BOOL, void*)
{
	_ASSERTE (lONr != 0);
	_ASSERTE (lONr != -1);
	_ASSERTE ((ObjektOpExtension*)g_pTE != NULL);

	return ((ObjektOpExtension*)g_pTE)->EinzObjDurchschnitt (lONr);
}


// --------------------------------------------------------------------------------------------
// lONr-Objekt mit Fl�che _pVFl vereinigen
BOOL _OBJOPER_EXPORT FAR PASCAL FlaechenSumme (long lONr, BOOL, void*)
{
	_ASSERTE (lONr != 0);
	_ASSERTE (lONr != -1);
	_ASSERTE ((ObjektOpExtension*)g_pTE != NULL);

	return ((ObjektOpExtension*)g_pTE)->EinzFlaeVereinigen (lONr);
}


// --------------------------------------------------------------------------------------------
BOOL _OBJOPER_EXPORT FAR PASCAL ObjectsCollect (long lONr, BOOL, void* pInput)
{
	if (0 != lONr && -1 != lONr && (IEnumObjectsByNumber*)pInput)
	{
		((IEnumObjectsByNumber*)pInput)->AddItem (lONr);
		return TRUE;
	}

	_ASSERTE (lONr != 0);
	_ASSERTE (lONr != -1);
	_ASSERTE ((IEnumObjectsByNumber*)pInput != NULL);

	return FALSE;
}


// --------------------------------------------------------------------------------------------
// Test, ob die f�r Exklusiv-Oder selektierten Fl�chen keinen Geometriefehler besitzen
BOOL _OBJOPER_EXPORT FAR PASCAL AcceptanceTestExclOr (long lONr, BOOL, void*)
{
	_ASSERTE (lONr != 0);
	_ASSERTE (lONr != -1);

IExtendGeoRein* pIGeoRein = ((ObjektOpExtension*)g_pTE)->GeoReinInterface();

	if (S_FALSE != FehlerhaftesObjekt (pIGeoRein, lONr))
	{
	const int iBufferSize = 150;
	char pcBuffer[iBufferSize];
	ResString Titel (ResID (IDS_LONGCLASSNAME, pRF), 50);
	ResString Text (ResID (IDS_GEOFEHL1, pRF), iBufferSize);

		wsprintf (pcBuffer, Text.Addr(), lONr);
		MessageBox (__hWndM, pcBuffer, Titel.Addr(), MB_ICONEXCLAMATION | MB_OK);
		return FALSE;
	}

	return TRUE;
}


// --------------------------------------------------------------------------------------------
// Exklusiv-Oder der lONr-Fl�che mit dem aktivierten (blinkenden) _lONrAO-Objekt
BOOL _OBJOPER_EXPORT FAR PASCAL ExklOder (long lONr, BOOL, void*)
{
	_ASSERTE (lONr != 0);
	_ASSERTE (lONr != -1);
	_ASSERTE ((ObjektOpExtension*)g_pTE != NULL);

	if (OT_FLAECHE == DEX_GetObjectType (lONr))
		return ((ObjektOpExtension*)g_pTE)->EinzObjExklOder (lONr);
	return TRUE;
}




///////////////////////////////////////////////////////////////////////////////////////////////
// beliebiges geometrisches lONr-Objekt mit dem aktivierten (blinkenden) _lONrAO-Objekt
// schneiden
bool ObjektOpExtension::EinzObjSchneiden (long lONr)
{
	_ASSERTE (lONr != 0);
	_ASSERTE (lONr != -1);

	if (0 == lONr || -1 == lONr)	// Objektnummer fehlerhaft
		return false;

	if (_lONrAO == lONr)	// kein Schnitt mit sich selbst
		return true;

	GeoReinInterface();
	if (S_FALSE != FehlerhaftesObjekt (m_wGeoRein, lONr))
	{
	const int iBufferSize = 150;
	char pcBuffer[iBufferSize];
	ResString resText (ResID (IDS_GEOFEHL2, pRF), iBufferSize);
	ErrCode rcDummy;	// R�ckkehrcode von DEX_SetError()

		wsprintf (pcBuffer, resText.Addr(), lONr);
		DEX_SetError (rcDummy, 0, WC_MESSAGE_OPER, (void*)pcBuffer);
		return true;	// damit die Abarbeitung nach der Fehlermeldung nicht abgebrochen wird
	}

	if (! ObjektSchneiden (lONr))
		return false;
	return true;

} // EinzObjSchneiden


// --------------------------------------------------------------------------------------------
// beliebiges lONr-GeoObjekt mit dem aktivierten (blinkenden) _lONrAO-Objekt schneiden;
// Ablegen der Teilobjekte in ClipListe _CL1
bool ObjektOpExtension::ObjektSchneiden (long lONr)
{
	_ASSERTE (lONr != 0);
	_ASSERTE (lONr != -1);

bool bRet = true;	// return-Wert
IObjektGeometrie* pIOG = NULL;

	if (FAILED(CreateInterfaceOG (&pIOG, lONr)))
		return false;

// Parameter des zu schneidenden Objektes
ulong ulIdent;
short iOT;
KoOrd* plXK; KoOrd* plYK;

	pIOG->GetIdent (&ulIdent);
	pIOG->GetObjTyp (&iOT);
	pIOG->GetX ((void**)&plXK);
	pIOG->GetY ((void**)&plYK);

	switch (iOT)
	{
	Posit posLage;	// f�r Routine Clipping(); wird hier jedoch nicht ausgewertet
	bool bAbbr;		// Schnittoperation wurde abgebrochen (true)
	
		case OT_PUNKT:
		case OT_TEXT:
		case OT_LABEL:		// indirektes Textobjekt
		{
for (long lll = 0; lll < _lSPA; lll++)	// entspr. ((ProzentStatus*)pPSt)->IncValue (_lSPA);
			if (FAILED(GetPIProxy()->IncrementPosition(NULL)))
				return false;
		}
			break;		// Text und GeoPunkt k�nnen nicht geschnitten werden

		case OT_KANTE:	// Schnitt einer Kante
		{
		long lSPAnz;

			pIOG->GetCnt (&lSPAnz);

		GeoKante* pGK = new GeoKante (lONr, ulIdent, plXK, plYK, lSPAnz);

			if (pGK)
			{
			HRESULT hr = S_OK;
#if _TRiAS_VER < 0x0300
				hr = GetPIProxy()->SetObjNr (lONr);
				if (FAILED(hr)) return false;
#endif // _TRiAS_VER < 0x0300
				if (pGK->Clipping (_pBO, _iOT, _ulLageAusw, _CL1, 0, posLage, bAbbr,
								   (BaseProgressStatus*)GetPIProxy()))	// echter Schnitt
					ObjNrSpeichern (lONr);
				if (bAbbr) bRet = false;

				hr = GetPIProxy()->IncrementPosition (NULL);
				if (FAILED(hr)) return false;
				DELETE_OBJ (pGK);
			}
			else
			{
				DEX_Error (RC_Operationen, EC_NOMEMORY);
				bRet = false;
			}
		}
			break;

		case OT_FLAECHE:	// Schnitt einer Fl�che
		{
		short iKCnt;	// Gr��e des Konturfeldes
		long* plK;

			pIOG->GetKCnt (&iKCnt);
			pIOG->GetLPCnt (&plK);

		EFlaeche* pFl = EFlaecheErzeugen (iKCnt, plXK, plYK, plK);

			if (! pFl)
			{
				DEX_Error (RC_Operationen, EC_NOMEMORY);
				bRet = false;
				break;
			}

		GeoFlaeche* pGF = new GeoFlaeche (lONr, ulIdent, *pFl);

			if (pGF)
			{
			HRESULT hr = S_OK;
#if _TRiAS_VER < 0x0300
				hr = GetPIProxy()->SetObjNr (lONr);
				if (FAILED(hr)) return false;
#endif // _TRiAS_VER < 0x0300
				if (pGF->Clipping (_pBO, _iOT, _ulLageAusw, _CL1, 0, posLage, bAbbr,
								   (BaseProgressStatus*)GetPIProxy()))	// echter Schnitt
					ObjNrSpeichern (lONr);
				if (bAbbr) bRet = false;

				hr = GetPIProxy()->IncrementPosition (NULL);
				if (FAILED(hr)) return false;
				DELETE_OBJ (pGF);
			}
			else
			{
				DEX_Error (RC_Operationen, EC_NOMEMORY);
				bRet = false;
			}
			DELETE_OBJ (pFl);
		}
			break;

		default:        // Objekt weder GeoPunkt, GeoKante noch GeoFlaeche
			_ASSERTE (false);
			DEX_Error (RC_ObjektSchneiden, EC_NOGEOOBJEKT);     // Fehlermeldung
			bRet = false;
	} // switch

	pIOG->Release();
	return bRet;

} // ObjektSchneiden


// --------------------------------------------------------------------------------------------
// letzte Fl�che aus _CL1 mit lONr-Fl�che schneiden
bool ObjektOpExtension::EinzObjDurchschnitt (long lONr)
{
	_ASSERTE (lONr != 0);
	_ASSERTE (lONr != -1);

	if (0 == lONr || -1 == lONr)	// Objektnummer fehlerhaft
		return false;

	GeoReinInterface();
	if (S_FALSE != FehlerhaftesObjekt (m_wGeoRein, lONr))
	{
	const int iBufferSize = 150;
	char pcBuffer[iBufferSize];
	ResString resText (ResID (IDS_GEOFEHL2, pRF), iBufferSize);
	ErrCode rcDummy;	// R�ckkehrcode von DEX_SetError()

		wsprintf (pcBuffer, resText.Addr(), lONr);
		DEX_SetError (rcDummy, 0, WC_MESSAGE_OPER, (void*)pcBuffer);
		return true;	// damit die Abarbeitung nach der Fehlermeldung nicht abgebrochen wird
	}

	return ObjektDurchschnitt (lONr);

} // EinzObjDurchschnitt


// --------------------------------------------------------------------------------------------
// lONr-GeoFlaeche mit letzter Fl�che aus _CL1 schneiden, Ablegen der Durchschnittsfl�che wieder
// in _CL1
bool ObjektOpExtension::ObjektDurchschnitt (long lONr)
{
	_ASSERTE (lONr != 0);
	_ASSERTE (lONr != -1);

IObjektGeometrie* pIOG = NULL;

	if (FAILED(CreateInterfaceOG (&pIOG, lONr)))
		return false;

// Parameter des lONr-Objektes
KoOrd* plXK; KoOrd* plYK;
short iKCnt;	// Gr��e des Konturfeldes
long* plK;		// Anzahl der St�tzpunkte in den Konturen

	pIOG->GetX ((void**)&plXK);
	pIOG->GetY ((void**)&plYK);
	pIOG->GetKCnt (&iKCnt);
	pIOG->GetLPCnt (&plK);

EFlaeche* pFl = EFlaecheErzeugen (iKCnt, plXK, plYK, plK);

	if (! pFl)
	{
		DEX_Error (RC_Operationen, EC_NOMEMORY);
		pIOG->Release();
		return false;
	}

// lONr-Fl�che mit Pseudo-Identifikator 0
GeoFlaeche* pGF = new GeoFlaeche (lONr, 0, *pFl);

	pIOG->Release();

	if (! pGF)
	{
		DEX_Error (RC_Operationen, EC_NOMEMORY);
		DELETE_OBJ (pFl);
		return false;
	}
	
	_lAnzNeuObj = _CL1.Count();	// Anzahl der Objekte in ClipListe _CL1
	if (0 == _lAnzNeuObj)		// noch kein Eintrag in _CL1, d.h. 1. Fl�che f�r Durchschnitt
	{
		// bei Durchschnittsbildung von mehr als 2 Ausgangsfl�chen wird zuerst der Durchschnitt
		// der ersten beiden Fl�chen gebildet, deren Ergebnisfl�che(n) dann "Ausgangsfl�che(n)"
		// f�r den Durchschnitt mit der 3. Fl�che ist(sind) usw.
		// da die Schnittergebnisse also Ausgangspunkt f�r die anschlie�ende
		// Durchschnittsbildung sind und in _CL1 abgelgt werden (es k�nnen bei einem Schnitt
		// mehr als eine Ergebnisfl�che entstehen) wird auch gleich die 1. Ausgangsfl�che ohne
		// eine Schnittoperation in _CL1 eintragen
		pGF->AddClipObjekt (_CL1);
		ObjNrSpeichern (lONr);
		DELETE_OBJ (pFl);
		DELETE_OBJ (pGF);
		return true;
	}

	else        // 2., 3. usw. Fl�che f�r Durchschnitt
	{
	bool bRet;			// return-Wert von Clipping()
	bool bAbbr;			// Operation wurde (durch Anwender) abgebrochen (true)
	CRing ri1 (_CL1);	// Navigator f�r ListContainer ClipListe _CL1

#if _TRiAS_VER < 0x0300
		if (FAILED(GetPIProxy()->SetObjNr(lONr)))
			return false;
#endif // _TRiAS_VER < 0x0300

		for (long i = _lAnzNeuObj; i > 0; i--)
		{
			// da jeder Eintrag aus _CL1 nach dessen Verarbeitung sofort gel�scht wird, ist der n�chste
			// immer der erste
			ri1.First();

			// Schnitt aller Eintr�ge aus _CL1 mit pGF ; es werden nur die "innerhalb" (2. Parameter
			// = LINN) liegenden Teilfl�chen wieder in _CL1 eingetragen; bei einem echten Schnitt
			// wird von Clipping() true zur�ckgegeben
			{	// Klammer ist erforderlich, da gelockte (im Zugriff befindliche)
				// Listenelemente nicht gel�scht werden k�nnen !!!!
			GeoObjektLock ml (ri1);
			GeoFlaeche* pGFml = (GeoFlaeche*)(GeoObjekt*) ml;
			Posit posLage;	// Lage der pGFml-Fl�che bez. der pGF-Fl�che

				if (! ml) continue;

				// Prozentanzeige nur beim letzten Schleifendurchlauf (i == 1) weiterz�hlen
				if (i > 1)
					bRet = pGFml->Clipping (pGF, OT_FLAECHE, LINN, _CL1, (int)_lAnzNeuObj,
											posLage, bAbbr, NULL);
				else
					bRet = pGFml->Clipping (pGF, OT_FLAECHE, LINN, _CL1, (int)_lAnzNeuObj,
											posLage, bAbbr, (BaseProgressStatus*)GetPIProxy());

				// Liegt die pGFml-Fl�che innerhalb der pGF-Fl�che, wird bei Clipping() "false"
				// zur�ckgegeben. Der Durchschnitt beider Fl�chen, die pGFml-Fl�che, ist
				// trotzdem in _CL1 abzulegen.
				if (! bRet &&
					(INNERH == posLage || INNERHB == posLage || KONTUR == posLage ||
					 GLEICH == posLage))
				{
					pGFml->AddClipObjekt (_CL1);

					bRet = true;
				}
				if (bAbbr) break;	// for-Schleife vorzeitig beenden (Abbruch durch Anwender)
				if (1 == i &&		// Weiterz�hlen nur beim letzten Schleifendurchlauf (i == 1)
					FAILED(GetPIProxy()->IncrementPosition(NULL)))
					return false;
			}
			ri1.Delete();	// den eben abgearbeiteten Eintrag l�schen
		}
		if (bRet)	// Durchschnittsoperation war erfolgreich
			ObjNrSpeichern (lONr);
		DELETE_OBJ (pFl);
		DELETE_OBJ (pGF);
		return (bRet && !bAbbr);
	} // else

} // ObjektDurchschnitt


// --------------------------------------------------------------------------------------------
// _pVFl-Fl�che mit der lONr-Fl�che im mengentheoretischen Sinn fl�chenm��ig vereinigen
bool ObjektOpExtension::EinzFlaeVereinigen (long lONr)
{
	_ASSERTE (lONr != 0);
	_ASSERTE (lONr != -1);

	if (0 == lONr || -1 == lONr)	// Objektnummer fehlerhaft
		return false;

	GeoReinInterface();
	if (S_FALSE != FehlerhaftesObjekt (m_wGeoRein, lONr))
	{
	const int iBufferSize = 150;
	char pcBuffer[iBufferSize];
	ResString resText (ResID (IDS_GEOFEHL2, pRF), iBufferSize);
	ErrCode rcDummy;	// R�ckkehrcode von DEX_SetError()

		wsprintf (pcBuffer, resText.Addr(), lONr);
		DEX_SetError (rcDummy, 0, WC_MESSAGE_OPER, (void*)pcBuffer);
		return true;	// damit die Abarbeitung nach der Fehlermeldung nicht abgebrochen wird
	}

	// Abfrage der Message-Warteschleife, ob Message zur Abarbeitung angemeldet ist, damit
	// Steuerung an TRiAS f�r erneuten Bildaufbau
	App::Exec (ExecWhileEvent);
	return FlaeVereinigen (lONr);

} // EinzFlaeVereinigen


// --------------------------------------------------------------------------------------------
// Vereinigen der _pVFl-Fl�che mit der lONr-Fl�che und Ablegen der vereinigten Fl�che in _pVFl
bool ObjektOpExtension::FlaeVereinigen (long lONr)
{
	_ASSERTE (lONr != 0);
	_ASSERTE (lONr != -1);

int iOT = DEX_GetObjectType (lONr);	// Typ des aktuellen Objektes
static int iOTyp;					// Typ des vorhergehenden Objektes

	if (iOT != OT_FLAECHE) return false;

	if (! _pVFl)		// 1. der zu vereinigenden Objekte
		iOTyp = iOT;
	else
	{
		if (iOTyp != iOT)	// beide Objekte m�ssen
			return false;   //  Fl�chen sein
	}

IObjektGeometrie* pIOG = NULL;

	if (FAILED(CreateInterfaceOG (&pIOG, lONr)))
		return false;

// Parameter des lONr-Objektes
long lSPAnz;
short iKAnz;
KoOrd* plXK; KoOrd* plYK;
long* plK;

	pIOG->GetCnt (&lSPAnz);
	pIOG->GetKCnt (&iKAnz);
	pIOG->GetX ((void**)&plXK);
	pIOG->GetY ((void**)&plYK);
	pIOG->GetLPCnt (&plK);

#if _TRiAS_VER < 0x0300
	if (FAILED(GetPIProxy()->SetObjNr(lONr)))
		return false;
#endif // _TRiAS_VER < 0x0300
		
EFlaeche* pFO = new EFlaeche (plXK, plYK, plK[0]);

	if (! pFO)
	{
		DEX_Error (RC_Operationen, EC_NOMEMORY);
		pIOG->Release();
		return false;
	}
	
long lOs = 0;	// Offset f�r Zerlegung von plXK bzw. plYK in die einzelnen Konturen
bool bAbbr;		// Operation wurde durch Anwender abgebrochen (true), sonst false

	// Anf�gen evtl. Innenkonturen
	for (int i = 1; i < iKAnz; i++)
	{
		lOs += plK[i-1];
		pFO->AddKante (plXK+lOs, plYK+lOs, plK[i], -1);
	}

	pIOG->Release();	// wegen plXK, plYK und plK in AddKante() nicht eher m�glich

	if (! _pVFl)       // 1. der zu vereinigenden Fl�chen
	{
		_pVFl = new EFlaeche (*pFO);
		if (! _pVFl) DEX_Error (RC_Operationen, EC_NOMEMORY);

		m_bUnion = false;	// noch keine Vereinigung durchgef�hrt (28.10.98)
	}
	else
	{
	EFlaeche* pVFl = NULL;	// Zwischenergebnis (Vereinigungsgl�che von _pVFl und pFO)

		pVFl = _pVFl->FlaechenVereinigung (pFO, bAbbr, (BaseProgressStatus*)GetPIProxy());
		DELETE_OBJ (_pVFl);

		m_bUnion = true;	// Vereinigung durchgef�hrt (zumindest wurde der Versuch gemacht)

		if (pVFl)
		{
			_pVFl = new EFlaeche (*pVFl);
			if (! _pVFl) DEX_Error (RC_Operationen, EC_NOMEMORY);
			DELETE_OBJ (pVFl);
		}

		if (FAILED(GetPIProxy()->IncrementPosition(NULL)))
		{
			DELETE_OBJ (pFO);
			return false;
		}
	}

	DELETE_OBJ (pFO);

	if (! _pVFl) return false;

	ObjNrSpeichern (lONr);  // Objektnummer abspeichern
	return true;

} // FlaeVereinigen


// --------------------------------------------------------------------------------------------
// Objektnummern aller selektierten (markierten) Objekte bereitstellen, um die Summe der
// St�tzpunktanzahl der Au�enkontur zu ermitteln; die St�tzpunktanzahl des 1. selektierten
// Objektes wird ausgelassen
long ObjektOpExtension::StuetzpunktAnzahl1 (void)
{
ENUMLONGKEY ELK;	// Enumeration aller selektierten (markierten) Objekte
long lSumme = -1;	// Summe der St�tzpunktanzahl der Au�enkonturen ("-1" f�r Auslassen des 1. Objektes)

	ELK.eKey = (DWORD) 0;
	ELK.eFcn = (ENUMLONGKEYPROC) StuetzpunktSumme1;
	ELK.ePtr = (void*) &lSumme;
	DEX_EnumSelectedObjects (ELK);
	return lSumme;

} // StuetzpunktAnzahl1


// --------------------------------------------------------------------------------------------
// Vereinigung der pEnumIn-Objekte, die Fl�chenobjekte sind;
// ppOrigEnumOut: Objektnummern der pEnumIn-Fl�chen, die zu einer Vereinigung beigetragen haben
// ppUniEnumOut:  Objektnummern der Ergebnisobjekte, d.h. der vereinigten Fl�chen
HRESULT ObjektOpExtension::AreasUniting (HPROJECT hPr, IEnumLONG* pEnumIn, string sOCName,
										   bool bCopyFeat, IEnumLONG** ppOrigEnumOut,
										   IEnumLONG** ppUniEnumOut, IProgressIndicator2* pPI)
{
	if (0 == pEnumIn || 0 == ppOrigEnumOut || 0 == ppUniEnumOut)
		return E_POINTER;	// ohne Daten und R�ckgabem�glichkeit hat's nicht viel Zweck

	*ppOrigEnumOut = NULL;	// f�r Fehlerfall
	*ppUniEnumOut = NULL;

	if (pEnumIn->Count() <= 1) 
		return S_OK;	// hier ist nichts zu vereinigen

	bCopyFeat ? (m_bCopyFeat = true) : (m_bCopyFeat = false);

	RETURN_FAILED_HRESULT (BeginAction (hPr, sOCName, (IProgressIndicator*)pPI));
	HRESULT hr = DoAction (hPr, pEnumIn);
    if (FAILED(hr) && E_ABORT != hr)
    {
        RETURN_FAILED_HRESULT (hr);
    }

// f�r Anzeige der verwendeten und der neu gebildeten Fl�chen in Recherchefenstern die
// entsprechenden Member aktualisieren
    if (SUCCEEDED(hr)) {
    long lONr = 0;

	    RETURN_FAILED_HRESULT (EndAction (hPr, ppOrigEnumOut, ppUniEnumOut));
	    _lAnzOrigObj = (*ppOrigEnumOut)->Count();

	    if (_lAnzOrigObj > 0)
	    {
		    DELETE_VEC (m_plOrigObjNr);
		    m_plOrigObjNr = new long [_lAnzOrigObj];
		    if (! m_plOrigObjNr)
		    {
			    DEX_Error (RC_Operationen, EC_NOMEMORY);
			    return E_OUTOFMEMORY;
		    }

		    m_lOrigInd = 0;
		    for ((*ppOrigEnumOut)->Reset(); S_OK == (*ppOrigEnumOut)->Next (1, &lONr, NULL); m_lOrigInd++)
			    m_plOrigObjNr[m_lOrigInd] = lONr;
	    }

	    _lAnzNeuObj = (*ppUniEnumOut)->Count();

	    if (_lAnzNeuObj > 0)
	    {
		    DELETE_VEC (m_plNeuObjNr);
		    m_plNeuObjNr = new long[_lAnzNeuObj];
		    if (! m_plNeuObjNr)
		    {
			    DEX_Error (RC_Operationen, EC_NOMEMORY);
			    return E_OUTOFMEMORY;
		    }

		    m_lNeuInd = 0;
		    for ((*ppUniEnumOut)->Reset(); S_OK == (*ppUniEnumOut)->Next (1, &lONr, NULL); m_lNeuInd++)
			    m_plNeuObjNr[m_lNeuInd] = lONr;
	    }
    }
	return hr;

} // AreasUniting


// --------------------------------------------------------------------------------------------
// Vereinigung der pEnumIn-Objekte, die Linienobjekte sind;
// dTol:          Toleranz f�r den noch akzeptablen Abstand (in Meter) zweier Linien
// bCopyFeat:     die Merkmale der Originalobjekte werden vererbt (true)
// bAsArea:       geschlossene Linienz�ge in Fl�chen umzuwandeln (true)
// ulIdent:       default-Identifikator, wenn durch den Anwender f�r die Ergebnisobjekte keine
//                Objektklasse ausgew�hlt wird
// ppOrigEnumOut: Objektnummern der pEnumIn-Linien, die zu einer Vereinigung beigetragen haben
// ppUniEnumOut:  Objektnummern der Ergebnisobjekte, d.h. der vereinigten Linien
HRESULT ObjektOpExtension::LinesUniting (HPROJECT hPr, IEnumLONG* pEnumIn, double dTol,
						bool bCopyFeat, bool bAsArea, ulong ulIdent, IEnumLONG** ppOrigEnumOut,
						IEnumLONG** ppUniEnumOut, IProgressIndicator2* pPI)
{
	if (0 == pEnumIn || 0 == ppOrigEnumOut || 0 == ppUniEnumOut)
		return E_POINTER;	// ohne Daten und R�ckgabem�glichkeit hat's nicht viel Zweck

	*ppOrigEnumOut = NULL;	// f�r Fehlerfall
	*ppUniEnumOut = NULL;

	if (pEnumIn->Count() <= 1) return S_OK;	// hier ist nichts zu vereinigen

HRESULT hrRet = S_OK;

	try
	{
	WProgressIndicator2 wPI (pPI);

		if (! wPI.IsValid())
		{
			wPI = WProgressIndicator2(CLSID_ProgressIndicator);	// throws_com_error

		HWND hWnd = NULL;

			THROW_FAILED_HRESULT (wPI->InitNew ((INT_PTR)MWind()->Handle(), 0L,
												(LONG *)&hWnd));
		}

	// ProgressIndicator pPI in Struktur varPI speichern
	VARIANT varPI;
	
		VariantInit (&varPI);
		V_VT (&varPI) = VT_UNKNOWN;
		V_UNKNOWN (&varPI) = wPI;

	// Objektnummern der Originalobjekte, die zu einer Vereinigung beigetragen haben
	VARIANT varUsed;

		VariantInit (&varUsed);

	// Objektnummern der Ergebnisobjekte, d.h. der vereinigten Linien
	WEnumObjectsByNumber wOutput;

#if _TRiAS_VER < 0x0300

	WExtLinienVerfolgung LinVer (CLSID_ExtLinienVerfolgung);	// CLSID aus imaschen.h
	
		hrRet = LinVer->LinesUnion (
					WEnumObjectsByNumber(pEnumIn),	// zu vereinigende Objekte
					dTol,			// Toleranz (in Meter)
					bCopyFeat,		// die Merkmale werden vererbt
					bAsArea,		// vereinigte Linien in Fl�chen umwandeln (true)
					varPI,			// ProgressIndicator
					&varUsed,		// Objektnummern der zur Vereinigung beigetragenen Linien
					wOutput.ppi());	// vereinigte Linien
#else

	WExtLinienVerfolgungEx LinVer (CLSID_ExtLinienVerfolgung);	// CLSID aus imaschen.h
	
		hrRet = LinVer->LinesUnion (
					reinterpret_cast<INT_PTR>(hPr),
					WEnumObjectsByNumber(pEnumIn),		// zu vereinigende Objekte
					dTol,			// Toleranz (in Meter)
					bCopyFeat,		// die Merkmale werden vererbt
					bAsArea,		// vereinigte Linien in Fl�chen umwandeln (true)
					varPI,			// ProgressIndicator
					&varUsed,		// Objektnummern der zur Vereinigung beigetragenen Linien
					wOutput.ppi());	// vereinigte Linien
#endif // _TRiAS_VER < 0x0300

		if (FAILED(hrRet) && E_ABORT != hrRet)	// kein Abbruch durch den Anwender
			_com_issue_error (hrRet);

		if (ERROR_WRITE_PROTECT == hrRet)		// schreibgesch�tzte Zieldatenquelle
			return hrRet;

		if (E_ABORT != hrRet)
		{
		HRESULT hr2 = VariantChangeType (&varUsed, &varUsed, 0, VT_UNKNOWN);

			if ((S_OK == hr2) && (NULL != varUsed.punkVal))	
			{
			WEnumLONG wUsed (varUsed.punkVal);

				*ppOrigEnumOut = wUsed.detach();
			}

			if (FAILED (hr2)) _com_issue_error (hr2);
		}

	WEnumLONG wOut (wOutput);	// mit implizitem QueryInterface

		*ppUniEnumOut = wOut.detach();

		// den vereinigten Linien den default-Identifikator ulIdent zuweisen
		SetDefaultIdent (*ppUniEnumOut, ulIdent, (ulong&)_lAnzNeuObj);
		ObjectsForRechWindows (*ppOrigEnumOut, *ppUniEnumOut);
	}

	catch (_com_error& e)
	{
		// Anbindung an Erweiterung "maschbld.ext" ist nicht gelungen
		if (HRESULT_FROM_WIN32(ERROR_DLL_NOT_FOUND) == _COM_ERROR(e))
		{
		ResString resTitel (ResID (IDS_LONGCLASSNAME, pRF), 50);
		ResString resText (ResID (IDS_NOMASCHBLD, pRF), 250);

			MessageBox (__hWndM, resText.Addr(), resTitel.Addr(), MB_ICONEXCLAMATION | MB_OK);
		}

		return _COM_ERROR (e);
	}

	return hrRet;

} // LinesUniting


// --------------------------------------------------------------------------------------------
// Toleranz (in Meter) ermitteln, bei der 2 Linienobjekte vereinigt werden sollen;
// default: 0; andere Werte werden aus dem DB-Header ausgelesen
double ObjektOpExtension::Fangbereich (void)
{
double dTol = 0.;	// default-Wert

// Schl�ssel "Fangbereich" in den projektbezogenen Eintr�gen des DB-Headers gibt an, welcher
// Abstand (in Meter) bei der Linienvereinigung als vernachl�ssigbar gilt
ResString Schluessel (ResID (IDS_TOLERANZ, pRF), 30);	
HeaderEntryX HE (Schluessel);
char pcInPuffer[20] = { "\0" };		// Wert des Schl�ssels "Fangbereich"

	if (HE.Status() != HE_INVALID)	// Schl�ssel "Fangbereich" existiert im DB-Header
	{
		strcpy (pcInPuffer, HE.EntryText());
		dTol = atof (pcInPuffer);
	}

	return dTol;

} // Fangbereich 


// --------------------------------------------------------------------------------------------
// Exklusiv-Oder zwischen lONr-Fl�che und _lONrAO-Fl�che
bool ObjektOpExtension::EinzObjExklOder (long lONr)
{
	_ASSERTE (lONr != 0);
	_ASSERTE (lONr != -1);

CEierUhr Wait (MVWind());

	if (0 == lONr || -1 == lONr)	// Objektnummer fehlerhaft
		return false;

	if (_lONrAO == lONr)	// kein Exklusiv-Oder mit sich selbst
		return true;

	GeoReinInterface();
	if (S_FALSE != FehlerhaftesObjekt (m_wGeoRein, lONr))
	{
	const int iBufferSize = 150;
	char pcBuffer[iBufferSize];
	ResString resText (ResID (IDS_GEOFEHL2, pRF), iBufferSize);
	ErrCode rcDummy;	// R�ckkehrcode von DEX_SetError()

		wsprintf (pcBuffer, resText.Addr(), lONr);
		DEX_SetError (rcDummy, 0, WC_MESSAGE_OPER, (void*)pcBuffer);
		return true;	// damit die Abarbeitung nach der Fehlermeldung nicht abgebrochen wird
	}

	return ObjektExklOder (lONr);

} // EinzObjExklOder


// --------------------------------------------------------------------------------------------
// Exklusiv-Oder zwischen der lONr-Fl�che und der aktivierten (blinkenden) _lONrAO-Fl�che;
// die au�erhalb der aktivierten Fl�che liegen Teile der lONr-Fl�che geh�ren schon zum
// endg�ltigen Ergebnis und werden in _CL1 abgelegt; die au�erhalb der lONr-Fl�che liegen Teile
// der aktivierten Fl�che werden (wenn vorhanden) noch mit der n�chsten lONr-Fl�che geschnitten
// und deshalb im Zwischenspeicher _CL2 abgelegt
bool ObjektOpExtension::ObjektExklOder (long lONr)
{
	_ASSERTE (lONr != 0);
	_ASSERTE (lONr != -1);

IObjektGeometrie* pIOG = NULL;

	if (FAILED(CreateInterfaceOG (&pIOG, lONr)))
		return false;

// Parameter des lONr-Objektes
ulong ulIdent;
KoOrd* plXK; KoOrd* plYK;
short iKCnt;
long* plK;

	pIOG->GetIdent (&ulIdent);
	pIOG->GetX ((void**)&plXK);
	pIOG->GetY ((void**)&plYK);
	pIOG->GetKCnt (&iKCnt);
	pIOG->GetLPCnt (&plK);

EFlaeche* pSFl = EFlaecheErzeugen (iKCnt, plXK, plYK, plK); // selektierte (markierte) Fl�che
GeoFlaeche* pAFl = new GeoFlaeche (lONr, ulIdent, *pSFl);	// selektierte (markierte) Fl�che

	DELETE_OBJ (pSFl);
	pIOG->Release();

	if (! pAFl)
	{
		DEX_Error (RC_Operationen, EC_NOMEMORY);
		return false;
	}

#if _TRiAS_VER < 0x0300
	if (FAILED(GetPIProxy()->SetObjNr(lONr)))
	{
		DELETE_OBJ (pAFl);
		return false;
	}
#endif // _TRiAS_VER < 0x0300
	
// Teile der selektierten (markierten) Fl�che, die au�erhalb der aktivierten (blinkenden) liegen
Posit posLage;	// f�r Routine Clipping()
bool bAbbr;		// Schnittoperation wurde (durch Anwender) abgebrochen (true), sonst false
bool bRet = pAFl->Clipping (_pBO, OT_FLAECHE, LAUSS, _CL1, 0, posLage, bAbbr,
							(BaseProgressStatus*)GetPIProxy());

	if (bRet)	// Exklusiv-Oder war erfolgreich
		ObjNrSpeichern (lONr);	// Objektnummer der aktivierten (blinkenden) Fl�che wird (wenn
								//  �berhaupt) erst in Routine ExklusivOder() abgespeichert
	if (bAbbr ||
		FAILED(GetPIProxy()->IncrementPosition(NULL)))
	{
		DELETE_OBJ (pAFl);
		return false;
	}

// Teile der (evtl. schon verkleinerten) aktivierten (blinkenden) Fl�che, die au�erhalb der
// selektierten (markierten) pAFl-Fl�che liegen
long lAnzCL2 = _CL2.Count();	// Anzahl der Objekte in ClipListe _CL2
CRing ri2 (_CL2);  				// Navigator f�r ListContainer ClipListe _CL2

	for (long i = lAnzCL2; i > 0; i--)
	{
		// da jeder Eintrag aus _CL2 nach dessen Verarbeitung sofort gel�scht wird, ist der
		// n�chste immer der erste
		ri2.First();

		// Schnitt aller Eintr�ge aus _CL2 mit pAFl ; es werden nur die "au�erhalb"
		// (2. Parameter = LAUSS) liegenden Teilfl�chen wieder in _CL2 eingetragen; bei einem
		// echten Schnitt wird von Clipping() true zur�ckgegeben
		{	// Klammer ist erforderlich, da gelockte (im Zugriff befindliche) Listenelemente
			// nicht gel�scht werden k�nnen !!!!
		Posit posLage;	// Lage der ml-Fl�che bez. der pAFl-Fl�che
		GeoObjektLock ml (ri2);
		GeoFlaeche* pGF = (GeoFlaeche*)(GeoObjekt*) ml;

			if (! ml) continue;
			if (i > 1)	// Prozentanzeige nur beim letzten Schleifendurchlauf (i == 1) weiterz�hlen
				bRet = pGF->Clipping (pAFl, OT_FLAECHE, LAUSS, _CL2, 0, posLage, bAbbr, NULL);
			else
				bRet = pGF->Clipping (pAFl, OT_FLAECHE, LAUSS, _CL2, 0, posLage, bAbbr,
										(BaseProgressStatus*)GetPIProxy());

			if (bAbbr) break;	// for-Schleife vorzeitig beenden (Abbruch durch Anwender)
			if (1 == i &&		// Weiterz�hlen nur beim letzten Schleifendurchlauf (i == 1)
				FAILED(GetPIProxy()->IncrementPosition(NULL)))
				return false;
		}
		ri2.Delete();	// den eben abgearbeiteten Eintrag l�schen
	}

	DELETE_OBJ (pAFl);
	return (! bAbbr);

} // ObjektExklOder


// --------------------------------------------------------------------------------------------
// Exklusiv-Oder zwischen der aktivierten (blinkenden) _lONrAO-Fl�che und EINER weiteren
// selektierten (markierten) Fl�che
bool ObjektOpExtension::ExklusivOder (HPROJECT hPr, bool bCopyFeat, bool bOrigZeigen,
								bool bNeuZeigen, IEnumLONG** ppEnumUsed, IEnumLONG** ppEnumNew)
{
	m_OpMode = SUBTRAKTION;
	_bOrigZeigen = bOrigZeigen;		// } nur wegen dem Aufruf von ExklusivOder()
	_bNeuZeigen = bNeuZeigen;		// } in SetsOperatDlg.cpp erforderlich
	bCopyFeat ? (m_bCopyFeat = true) : (m_bCopyFeat = false);

	// Objektnummer des aktivierten (blinkenden) Objektes ermitteln
	_lONrAO = DEX_GetActiveObject (m_hWnd);

	if (!AktiviertesObjekt())	// aktiviertes Objekt bestimmen
		return false;

// Objektnummern aller selektierten (markierten) Objekte bereitstellen
ENUMLONGKEY ELK;	// Enumeration aller selektierten Objekte

	ELK.eKey = (DWORD) 0;
	ELK.eFcn = (ENUMLONGKEYPROC) AcceptanceTestExclOr;
	if (!DEX_EnumSelectedObjects (ELK))
		return false;

	// Feld f�r Objektnummern der selektierten (markierten) Originalfl�chen (einschlie�lich der
	// aktivierten) dynamisch anlegen
	FeldAktObjNr (m_plOrigObjNr, m_lOrigInd, _lAnzOrigObj, true);

	// aktivierte Fl�che in Zwischenspeicher _CL2
	GeoFlaeche (_lONrAO, _ulIdent, *(EFlaeche*)_pBO).AddClipObjekt (_CL2);
	
// Fenster f�r prozentuale Anzeige und Abbruch; lStartW ist Startwert f�r prozentuale Anzeige;
// von _lAnzOrigObj wird 1 subtrahiert, da in _lAnzOrigObj auch die aktivierte (blinkende)
// Fl�che mitgez�hlt wurde
long lStartW = (_lAnzOrigObj-1)*_lSPA + StuetzpunktAnzahl2();

	try
	{
	WProgressIndicator2 PI (CLSID_ProgressIndicator);	// throws_com_error

		THROW_FAILED_HRESULT (InitProgressIndicator (PI, ResID (IDS_EXKLUSIVODER_CAPTION, pRF),
													   ResID(IDS_STATUS_STAND, pRF), lStartW));
		THROW_FAILED_HRESULT (RegisterPI (PI));
	}
	catch (_com_error&)
	{
		return false;
	}

	// Objektnummern aller selektierten (markierten) Fl�chen bereitstellen
	ELK.eFcn = (ENUMLONGKEYPROC) ExklOder;
	ELK.ePtr = (BaseProgressStatus*)GetPIProxy();	// durchgereichte Daten

bool bOK = DEX_EnumSelectedObjects (ELK);

	// wenn aus der aktivierten (blinkenden) Fl�che mindestens eine Ergebnisfl�che gebildet
	// wurde, dann auch die Nummer der aktivierten Fl�che abspeichern
	if (_CL1.Count() > 0 || _CL2.Count() > 0)
		ObjNrSpeichern (_lONrAO);
		
	if (FAILED(UnRegisterPI())) return false;

bool bRet = ObjekteAnTRiAS (hPr, bOK);

	try
	{
		if (*ppEnumUsed)
		{
		}

		if (ppEnumNew && _lAnzNeuObj > 0)
		{
		WEnumLONG wOutput (CLSID_EnumObjectsByNumber);

			for (long l = 0; l < _lAnzNeuObj; l++)
				((IEnum<LONG>*)(IEnumLONG*)wOutput)->AddItem (m_plNeuObjNr[l]);

			*ppEnumNew = wOutput.detach();
		}
	}
	catch (_com_error&)
	{
		return false;
	}

	return bRet;

} // ExklusivOder


// --------------------------------------------------------------------------------------------
// Objektnummern aller selektierten (markierten) Objekte bereitstellen, um die Summe der
// St�tzpunktanzahl der Au�enkontur zu ermitteln; die St�tzpunktanzahl des aktivierten
// (blinkenden) Objektes wird ausgelassen
long ObjektOpExtension::StuetzpunktAnzahl2 (void)
{
ENUMLONGKEY ELK;	// Enumeration aller selektierten (markierten) Objekte
long lSumme = 0;	// Summe der St�tzpunktanzahl der Au�enkonturen

	ELK.eKey = (DWORD) 0;
	ELK.eFcn = (ENUMLONGKEYPROC) StuetzpunktSumme2;
	ELK.ePtr = (void*) &lSumme;
	DEX_EnumSelectedObjects (ELK);
	return lSumme;
} // StuetzpunktAnzahl2


// --------------------------------------------------------------------------------------------
// St�tzpunktanzahl der Au�enkontur des lONr-Objektes zur�ckgeben;
// im Fehlerfall wird 0 zur�ckgegeben
long ObjektOpExtension::StuetzpunkteAussen (long lONr)
{
	_ASSERTE (lONr != 0);
	_ASSERTE (lONr != -1);

long lSPAnz = 0;

	if (OT_FLAECHE != DEX_GetObjectType (lONr))	// nur Fl�chen ber�cksichtigen
		return lSPAnz;

IObjektGeometrie* pIOG = NULL;

	if (FAILED(CreateInterfaceOG (&pIOG, lONr)))
		return lSPAnz;

long* plK;

	pIOG->GetLPCnt (&plK);

	_ASSERTE (plK != NULL);

	lSPAnz = plK[0];
	pIOG->Release();
	return lSPAnz;

} // StuetzpunkteAussen


// --------------------------------------------------------------------------------------------
// Auswertung der PropertyPage "Optionen"
void ObjektOpExtension::OptionsAnalyse (DWORD dwOptions)
{
	// Originalobjekte, die zu den neuen Objekten beigetragen haben, l�schen
	if (dwOptions & DELET)
		ObjekteLoeschen (m_plOrigObjNr, m_lOrigInd);

	// Ursprungsobjekte evtl. markieren
	else if (dwOptions & MARK)
		MarkObject();

	// Flags f�r Anzeige der neu erzeugten bzw. Orignalobjekte setzen
	(dwOptions & SHNEW) ? (_bNeuZeigen = true) : (_bNeuZeigen = false);
	(dwOptions & SHORIG) ? (_bOrigZeigen = true) : (_bOrigZeigen = false);

} // OptionsAnalyse


// --------------------------------------------------------------------------------------------
// Objekte markieren, die f�r die Objektoperation verwendet wurden
void ObjektOpExtension::MarkObject (void)
{
string sMark = ResString (ResID (IDS_MARK_OBJECT, pRF), 5);

#if _TRiAS_VER < 0x0300
ulong ulMCode = GetHeaderMCode (true, IDS_MARKOBJECT, IDS_MARKOBJECTKT, IDS_MARKOBJECTLT);

	_ASSERTE (0 != ulMCode);
	_ASSERTE ((ulong)-1 != ulMCode);

	if (0 != ulMCode && (ulong)-1 != ulMCode)
		for (long l = 0; l < m_lOrigInd; l++)
			WriteFeatureText (m_plOrigObjNr[l], ulMCode, TT_Objekt, sMark);
#else
	for (long l = 0; l < m_lOrigInd; l++)
	{
	long lONr = m_plOrigObjNr[l];
	ulong ulMCode = GetHeaderMCode (true, IDS_MARKOBJECT, IDS_MARKOBJECTKT, IDS_MARKOBJECTLT,
									DEX_GetObjIdent(lONr));
		_ASSERTE (0 != ulMCode);
		_ASSERTE ((ulong)-1 != ulMCode);

		if (0 != ulMCode && (ulong)-1 != ulMCode)
			WriteFeatureText (lONr, ulMCode, TT_Objekt, sMark);
	}
#endif // _TRiAS_VER < 0x0300
} // MarkObject



///////////////////////////////////////////////////////////////////////////////////////////////
// IPropertyAction methods
STDMETHODIMP ObjektOpExtension::BeginAction (HPROJECT hPr, string sOCName,
											   IProgressIndicator* pIProgInd)
{
	_ASSERTE (m_BScript.IsValid());

BOOL lReturn = FALSE;		// R�ckgabewert initialisieren

	COM_TRY
	{
	// Variablen initialisieren
		m_OutObjs.clear();					// Liste der vereinigten Fl�chen sicher leeren
		m_OutObjsIter = m_OutObjs.begin();	// und Iterator auf Anfang stellen
		m_OrigObjs.clear();					// Fl�chen, die zur Vereinigung beigetragen haben
		m_OrigObjsIter = m_OrigObjs.begin();

	// BasicOperationen
	ebPARAM Pars[2];
	LPVOID cbParam[2];
	BSPARAM bs = { Pars, cbParam };

	// Parameter initialisieren f�r
	// Function BeginAction2 (NewObjClass As String) As Boolean
		Pars[0].wType = TYP_BOOLEAN;	// R�ckgabewert
		Pars[0].szExtType[0] = '\0';
		cbParam[0] = &lReturn;

		Pars[1].wType = TYP_STRING;
		Pars[1].szExtType[0] = '\0';
		cbParam[1] = (char*)sOCName.c_str();

	// Script starten
#if _TRiAS_VER < 0x0300
		THROW_FAILED_HRESULT (m_BScript->RunCodeEx (_Module.GetResourceInstance(),
				IDR_SCRIPT_UNIONOBJECTS, "_Fl�chenVereinigung", "BeginAction2", 1, &bs, FALSE));

#else
		THROW_FAILED_HRESULT (m_BScript->RunCodeEx (_Module.GetResourceInstance(),
							  IDR_SCRIPT_UNIONOBJECTS, "_Fl�chenVereinigung", "BeginAction2", 1,
							  &bs, FALSE, reinterpret_cast<INT_PTR>(hPr)));
#endif // _TRiAS_VER < 0x0300
	}
	COM_CATCH_OP(CleanUpScript());

	if (!lReturn)
		CleanUpScript();
	return lReturn ? S_OK : E_ABORT;	// evtl. abgebrochen

} // BeginAction


// --------------------------------------------------------------------------------------------
STDMETHODIMP ObjektOpExtension::DoAction (HPROJECT hPr, IEnumLONG* pEnumIn)
{
	_ASSERTE (m_BScript.IsValid());

	COM_TRY {
	// EingabeObjektmenge holen
	WQueryGeoObjects QueryObjs (pEnumIn);
	WDGeoObjects GeoObjs;

		THROW_FAILED_HRESULT(QueryObjs->GetGeoObjects (GeoObjs.ppi()));

	ebPARAM Pars[3];
	LPVOID cbParam[3];
	BSPARAM bs = { Pars, cbParam };

	// Parameter initialisieren f�r
	// Function DoAction2 (objsInAreas As GeoObjects, objsOrig As GeoObjects) As GeoObjects
	DGeoObjects* pOutObjs = NULL;					// R�ckgabewert (die vereinigten
													// Fl�chenobjekte)
		Pars[0].wType = TYP_APPOBJECT;
		strcpy (Pars[0].szExtType, "GeoObjects");
		cbParam[0] = &pOutObjs;

	DGeoObjects* pInObjs = (DGeoObjects*)GeoObjs;	// 1. Parameter (die zu vereinigenden
													// Fl�chenobjekte)
		Pars[1].wType = TYP_APPOBJECT;
		strcpy (Pars[1].szExtType, "GeoObjects");
		cbParam[1] = &pInObjs;

	WDGeoObjects wOrigObjs;							// 2. Parameter (die Fl�chenobjekte, die
													// zur Vereinigung beigetragen haben)
		Pars[2].wType = TYP_APPOBJECT|TYP_MODSPARM;	// TYP_MODSPARM bedeutet, da� der
		strcpy (Pars[2].szExtType, "GeoObjects");	//  2. Parameter ein Out-Parameter ist
		cbParam[2] = wOrigObjs.ppi();

	// Script starten
		pInObjs->AddRef();		// BScript ruft Release()

#if _TRiAS_VER < 0x0300
		THROW_FAILED_HRESULT(m_BScript->ExecuteMethod ("_Fl�chenVereinigung", "DoAction2", 2,
													   &bs, FALSE));
#else
		THROW_FAILED_HRESULT(m_BScript->ExecuteMethod ("_Fl�chenVereinigung", "DoAction2", 2,
												  &bs, FALSE, reinterpret_cast<INT_PTR>(hPr)));
#endif // _TRiAS_VER < 0x0300

		if (! pOutObjs)
			_com_issue_error (E_ABORT);		// Abbruch der Operation durch den Anwender

		_ASSERTE (wOrigObjs.IsValid());

	// Resultate wieder in EnumObjectsByNumber umwandeln; zuerst f�r die vereinigten Fl�chen
	WQueryEnumLONG QEnumOut (pOutObjs);
	WEnumLONG EnumOut;

		pOutObjs->Release();
		THROW_FAILED_HRESULT(QEnumOut->QueryEnumLONG ((IEnumLONG**)EnumOut.ppi()));

		m_OutObjs.push_back (EnumOut);			// Enumerator am Ende der Liste anf�gen
		if (1 == m_OutObjs.size())
			m_OutObjsIter = m_OutObjs.begin();	// Iterator zeigt auf das 1. Element der Liste

	// das gleiche auch f�r die Fl�chen, die zur Vereinigung beigetragen haben
	WQueryEnumLONG QOrigEnum (wOrigObjs);

		THROW_FAILED_HRESULT(QOrigEnum->QueryEnumLONG ((IEnumLONG**)EnumOut.ppi()));
		m_OrigObjs.push_back (EnumOut);
		if (1 == m_OrigObjs.size())
			m_OrigObjsIter = m_OrigObjs.begin();

	}
	COM_CATCH_OP_NOASSERT_ON(CleanUpScript(), E_ABORT);

	return S_OK;

} // DoAction


// --------------------------------------------------------------------------------------------
STDMETHODIMP ObjektOpExtension::EndAction (HPROJECT hPr, IEnumLONG** ppOrigEnum, IEnumLONG** ppEnumOut)
{
	*ppEnumOut = 0;

	_ASSERTE (m_BScript.IsValid());
	_ASSERTE (m_OutObjsIter != m_OutObjs.end());
	_ASSERTE (m_OrigObjsIter != m_OrigObjs.end());

	COM_TRY
	{
	WEnumLONG wEnumOut (*m_OutObjsIter);
	WEnumLONG wOrigEnum (*m_OrigObjsIter);

		*ppEnumOut = wEnumOut.detach();
		m_OutObjsIter++;
		*ppOrigEnum = wOrigEnum.detach();
		m_OrigObjsIter++;

		_ASSERTE ((m_OutObjsIter == m_OutObjs.end() && m_OrigObjsIter == m_OrigObjs.end()) ||
				   (m_OutObjsIter != m_OutObjs.end() && m_OrigObjsIter != m_OrigObjs.end()));

		if (m_OutObjsIter == m_OutObjs.end())
		{
		// BasicOperationen
		ebPARAM Pars[1];
		LPVOID cbParam[1];
		BSPARAM bs = { Pars, cbParam };

		// Sub EndAction()
			Pars[0].wType = 0;	// kein R�ckgabewert
			Pars[0].szExtType[0] = '\0';
			cbParam[0] = NULL;

		// Script starten: EndAction
#if _TRiAS_VER < 0x0300
			THROW_FAILED_HRESULT (m_BScript->ExecuteMethod ("_Fl�chenVereinigung",
															"EndAction", 0, &bs, FALSE));
#else
			THROW_FAILED_HRESULT (m_BScript->ExecuteMethod ("_Fl�chenVereinigung",
								  "EndAction", 0, &bs, FALSE, reinterpret_cast<INT_PTR>(hPr)));
#endif // _TRiAS_VER < 0x0300
			CleanUpScript();
			return S_OK;	// das war der letzte Aufruf
		}
	}
	COM_CATCH_OP(CleanUpScript());

	return S_FALSE;

} // EndAction


// --------------------------------------------------------------------------------------------
STDMETHODIMP ObjektOpExtension::SetDeleteFlag (HPROJECT hPr, BOOL bDelete)
{
	_ASSERTE (m_BScript.IsValid());

	COM_TRY
	{
	ebPARAM Pars[2];
	LPVOID cbParam[2];
	BSPARAM bs = { Pars, cbParam };

	// Parameter setzen f�r die Basic-Routine   Sub SetDeleteFlag (bDelete As Boolean)
		Pars[0].wType = 0;							// kein R�ckgabewert
		Pars[0].szExtType[0] = '\0';
		cbParam[0] = NULL;

		ebBOOL ebb = bDelete ? ebTRUE : ebFALSE;	// den einzigen Parameter initialiseren
		Pars[1].wType = TYP_BOOLEAN;
		Pars[1].szExtType[0] = '\0';
		cbParam[1] = &ebb;

	// Script starten
#if _TRiAS_VER < 0x0300
		THROW_FAILED_HRESULT (m_BScript->ExecuteMethod ("_Fl�chenVereinigung",
														"SetDeleteFlag", 1, &bs, FALSE));
#else
		THROW_FAILED_HRESULT (m_BScript->ExecuteMethod ("_Fl�chenVereinigung",
							  "SetDeleteFlag", 1, &bs, FALSE, reinterpret_cast<INT_PTR>(hPr)));
#endif // _TRiAS_VER < 0x0300
	}
	COM_CATCH_OP(CleanUpScript());

	return S_OK;
}


// --------------------------------------------------------------------------------------------
// Script sauber beenden
HRESULT ObjektOpExtension::CleanUpScript (void)
{
// separater try/catch, da diese Funktion als ExceptionHandler gerufen wird
	COM_TRY
	{	// Script anhalten und rauswerfen
		return m_BScript->StopScript ("_Fl�chenVereinigung");
	}
	COM_CATCH_ALL;
	return S_OK;
}
