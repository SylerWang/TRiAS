// Bereinigung von Geometriefehlern
// File: ErrorCorrection.cxx
// W. M�rtl


#include "GeometrP.hxx"

#include "registry.hxx"		// CCurrentUser; den lokalen Header (NICHT den globalen) ziehen !!!

#include "ErrorCorrection.hxx"



#ifdef _DEBUG
#undef THIS_FILE
static char BASED_CODE THIS_FILE[] = __FILE__;
#endif



///////////////////////////////////////////////////////////////////////////////////////////////
// Bereinigung des DoppelPunkt-Fehlers durch L�schen des Punktes
void _GEOMETR_EXPORT DblPointCorrection (EObjekt* pEO, int iKInd, long lPInd, double dSpEps)
{
	_ASSERTE (pEO != 0);

	if (OT_KANTE == pEO->isA())
	{
	// Wenn bei einer geschlossenen Kante zu einem der beiden "Schlo�punkte" die
	// DoppelPunkt-Situation besteht, darf nicht der "Schlo�punkt" sondern der "andere"
	// eps-gleiche Punkt gel�scht werden, weil es sonst passieren kann, da� die Kante nicht
	// mehr geschlossen ist. (23.03.99)
	EKante* pKt = (EKante*)pEO;
	long lLen = pKt->ASP();		// L�nge der Kante

		if (lLen >= 4 &&
			pKt->SP(0) == pKt->SP(lLen-1))	// geschlossene Kante
		{
			if (0 == lPInd)
				pKt->SubPunkt (1, 1);
			else if (lLen-1 == lPInd)
				pKt->SubPunkt (1, lLen-2);
			else							// geschlossene Kante aber kein
				pKt->SubPunkt (1, lPInd);	// "Schlo�punkt"
		}
		else
			pKt->SubPunkt (1, lPInd);		// offene Kante

		SpecialAngleRemove (pKt, lPInd, dSpEps);
	}

	else		// Fl�che
	{
		_ASSERTE (pEO->isA() == OT_FLAECHE);

	// Wenn bei einer Fl�chenkontur zu einem der beiden "Schlo�punkte" die
	// DoppelPunkt-Situation besteht, darf nicht der "Schlo�punkt" sondern der "andere"
	// eps-gleiche Punkt gel�scht werden, weil es sonst passieren kann, da� die Kontur nicht
	// mehr geschlossen ist. (23.03.99)
	EFlaeche* pFl = (EFlaeche*)pEO;
	long lLen = pFl->KA(iKInd).ASP();			// L�nge der Kontur

		if (0 == lPInd)
			pFl->KA(iKInd).SubPunkt (1, 1);
		else if (lLen-1 == lPInd)
			pFl->KA(iKInd).SubPunkt (1, lLen-2);
		else
			pFl->KA(iKInd).SubPunkt (1, lPInd);	// nicht der "Schlo�punkt"

		SpecialAngleRemove (&pFl->KA(iKInd), lPInd, dSpEps);
	}
} // DblPointCorrection


// --------------------------------------------------------------------------------------------
// Bereinigung der Kollinearit�t durch L�schen der redundanten Punkte
void _GEOMETR_EXPORT CollinearCorrection (EObjekt* pEO, int iKInd, long lPInd)
{
	_ASSERTE (pEO != 0);

	if (OT_KANTE == pEO->isA())
	{
	EKante* pKt = (EKante*)pEO;

		pKt->SubPunkt (1, lPInd);

	long lLen = pKt->ASP();		// L�nge der Kante

		if (lLen > 1 && pKt->SP(0) == pKt->SP(lLen-1))	// geschlossene Kante
		{
			if (0 == lPInd)
				pKt->SubPunkt (1, lLen-1);
			else if (lLen-1 == lPInd)
				pKt->SubPunkt (1, 0);
		}
	} 

	else		// Fl�che
	{
		_ASSERTE (pEO->isA() == OT_FLAECHE);

	EFlaeche* pFl = (EFlaeche*)pEO;
	long lLen = pFl->KA(iKInd).ASP();

		pFl->KA(iKInd).SubPunkt (1, lPInd);

		if (lLen > 2)
		{
			if (0 == lPInd)
				pFl->KA(iKInd).SubPunkt (1, lLen-2);	// eigentlich "lLen-1", aber durch SubPunkt()
														// wurde lLen schon um 1 verkleinert
			else if (lLen > 3 &&	// damit nicht aus einer Linie unn�tig ein Punkt wird
					 lLen - 1 == lPInd)
				pFl->KA(iKInd).SubPunkt (1, 0);
		}
	}

} // CollinearCorrection


// --------------------------------------------------------------------------------------------
// die Bereinigung einer Spitze erfolgt i. d. R. NICHT mehr durch L�schen, sondern durch
// Modifizieren des entsprechenden St�tzpunktes; dazu wird von dem vorherigen bzw. nachfolgenden
// St�tzpunkt das Lot auf die l�ngere der beiden Strecken, die die Spitze bilden, gef�llt; der
// Lotpunkt wird dann der modifizierte St�tzpunkt an der Spitze;
// Sonderfall: die Spitze hat 0� (bNull == true), dann wird wie bisher schlicht und einfach
// gel�scht
bool _GEOMETR_EXPORT AcuteAngleCorrection (EObjekt* pEO, int iKInd, long lPInd, bool bNull,
										   double dDPEps, DoublePair dpUF, bool bMetric)
{
	_ASSERTE (pEO != 0);

long lVorInd, lNachInd;		// der Vorl�ufer bzw. Nachfolger von lPInd
EPunkt LPkt;				// Lotpunkt f�r Routine LotPunkt()

	if (OT_KANTE == pEO->isA())
	{
	EKante* pKt = (EKante*)pEO;
	long lLen = pKt->ASP();		// L�nge der Kante
	bool bClosed;				// Kante geschlossen (true)

		(pKt->SP(0) != pKt->SP(lLen-1)) ? (bClosed = false) : (bClosed = true);

		if (bNull)
		{
			pKt->SubPunkt (1, lPInd);

			if (lLen > 2 && bClosed)	// geschlossene Kante
			{
				if (0 == lPInd)
					// nachfolgend eigentlich "lLen-1", aber durch SubPunkt() wurde lLen schon
					// um 1 verkleinert
					pKt->SubPunkt (1, lLen-2);

				else if (lLen-1 == lPInd)
					pKt->SubPunkt (1, 0);
			}
		}

		else
		{
			if (! bClosed)	// offene Kante
			{
				lVorInd = lPInd - 1;
				lNachInd = lPInd + 1;
			}
			else
			{
				(lPInd > 0) ? (lVorInd = lPInd - 1) : (lVorInd = lLen - 2);
				(lPInd < lLen - 1) ? (lNachInd = lPInd + 1) : (lNachInd = 0);
			}

			_ASSERTE (lVorInd >= 0);			// bei einer offenen Kante kann am 1. bzw.
			_ASSERTE (lNachInd <= lLen-1);		// letzten Punkt keine Spitze sein

		EPunkt SPkt = pKt->SP(lPInd);			// St�tzpunkt bei der Spitze
		EPunkt VPkt = pKt->SP(lVorInd);			// St�tzpunkt vor bzw.
		EPunkt NPkt = pKt->SP(lNachInd);		// nach der Spitze

			if (LotPunkt (NPkt, VPkt, SPkt, LPkt))
				pKt->SP(lPInd) = LPkt;
			else if (LotPunkt (VPkt, NPkt, SPkt, LPkt))
				pKt->SP(lPInd) = LPkt;
			else
			{
				_ASSERTE (false);	// ich hoffe, da� der Fall niemals nicht eintritt
				return false;
			}

			if (bClosed)	// geschlossene Kante
			{
				if (0 == lPInd)
					pKt->SP(lLen-1) = LPkt;
				else if (lLen-1 == lPInd)
					pKt->SP(0) = LPkt;
			}

			SpecialDblRemove (pKt, lLen, bClosed, lVorInd, lPInd, dDPEps, dpUF, bMetric);
		}
	}

	else
	{
		_ASSERTE (pEO->isA() == OT_FLAECHE);

	EFlaeche* pFl = (EFlaeche*)pEO;
	long lLen = pFl->KA(iKInd).ASP();	// L�nge der aktuellen Kontur

		if (bNull)
		{
			pFl->KA(iKInd).SubPunkt (1, lPInd);

			if (lLen > 2)
			{
				if (0 == lPInd)
					// nachfolgend eigentlich "lLen-1", aber durch SubPunkt() wurde lLen schon
					// um 1 verkleinert
					pFl->KA(iKInd).SubPunkt (1, lLen-2);

				else if (lLen-1 == lPInd)
					pFl->KA(iKInd).SubPunkt (1, 0);
			}
		}

		else
		{
			lVorInd = (lPInd > 0) ? lPInd - 1 : lLen - 2;
			lNachInd = (lPInd < lLen - 1) ? lPInd + 1 : 0;

		EPunkt SPkt = pFl->KA(iKInd).SP(lPInd);			// St�tzpunkt bei der Spitze
		EPunkt VPkt = pFl->KA(iKInd).SP(lVorInd);		// St�tzpunkt vor bzw.
		EPunkt NPkt = pFl->KA(iKInd).SP(lNachInd);		// nach der Spitze

		// #HK000608: Spitzen in Fl�chen mit 4 St�tzpunkten sollten nicht durch Wegschneiden
		// der Spitze selbst, sondern durch Entfernen entweder des Vor- oder des Nachpunktes
		// bereinigt werden. Dabei entsteht zwar eine entartete Fl�che, aber die wird sp�ter 
		// zur Linie gemacht.
			if (lLen > 4) {
				if (LotPunkt (NPkt, VPkt, SPkt, LPkt))
					pFl->KA(iKInd).SP(lPInd) = LPkt;
				else if (LotPunkt (VPkt, NPkt, SPkt, LPkt))
					pFl->KA(iKInd).SP(lPInd) = LPkt;
				else
				{
					_ASSERTE (false);	// ich hoffe, da� der Fall niemals nicht eintritt
					return false;
				}

				if (0 == lPInd)
					pFl->KA(iKInd).SP(lLen-1) = LPkt;
				else if (lLen-1 == lPInd)
					pFl->KA(iKInd).SP(0) = LPkt;

				SpecialDblRemove (&pFl->KA(iKInd), lLen, true, lVorInd, lPInd, dDPEps, dpUF, bMetric);

			} else {
				if (LotPunkt (NPkt, VPkt, SPkt, LPkt))
					pFl->KA(iKInd).SubPunkt (1, lVorInd);
				else if (LotPunkt (VPkt, NPkt, SPkt, LPkt))
					pFl->KA(iKInd).SubPunkt (1, lNachInd);
				else
				{
					_ASSERTE (false);	// ich hoffe, da� der Fall niemals nicht eintritt
					return false;
				}
			}
		}
	}

	return true;

} // AcuteAngleCorrection


// --------------------------------------------------------------------------------------------
// durch die Korrektur von Spitzen k�nnen DoppelPunkte entstehen, die es vorher nicht gab;
// da in der Routine GeoAnalyse() die St�tzpunkte mit FALLENDEM Index abgearbeitet werden,
// w�rde so ein nachtr�glich entstandener DoppelPunkt, der aus dem lPInd- und dem
// lVorInd-St�tzpunkt besteht, nicht mehr erkannt (und damit auch nicht mehr bereinigt) werden
void SpecialDblRemove (EKante* pLine, long lLen, bool bClosed, long lVorInd, long lPInd,
					   double dDPEps, DoublePair dpUF, bool bMetric)
{
	_ASSERTE (pLine != NULL);

bool bNull;		// Parameter von isDoppel(); wird hier nicht ausgewertet

	if (pLine->isDoppel (bNull, dDPEps, dpUF, bMetric, lPInd, lVorInd))
	{
		pLine->SubPunkt (1, lPInd);

		if (lLen > 2 && bClosed)
		{
			if (0 == lPInd)
				pLine->SubPunkt (1, lLen-2);	// eigentlich "lLen-1", aber durch SubPunkt()
												// wurde lLen schon um 1 verkleinert
			else if (lLen > 3 &&	// damit nicht aus einer Linie unn�tig ein Punkt wird
					 lLen - 1 == lPInd)
				pLine->SubPunkt (1, 0);
		}
	}

} // SpecialDblRemove


// --------------------------------------------------------------------------------------------
// durch die Korrektur von DoppelPunkten k�nnen Spitzen entstehen, die es vorher nicht gab;
// da in der Routine GeoAnalyse() die St�tzpunkte mit FALLENDEM Index abgearbeitet werden,
// w�rde so eine nachtr�glich entstandene Spitze am lPInd-St�tzpunkt nicht mehr erkannt (und
// damit auch nicht mehr bereinigt) werden (26.04.99)
void SpecialAngleRemove (EKante* pLine, long lPInd, double dSpEps)
{
	_ASSERTE (0 != pLine);

bool bNull;	// Parameter von isSpitz()

	if (pLine->isSpitz (bNull, dSpEps, lPInd))
	{
	long lCnt = pLine->ASP();	// L�nge von pLine neu bestimmen, da sie reduziert worden ist
	bool bClosed;				// Kante geschlossen (true)

		(pLine->SP(0) != pLine->SP(lCnt-1)) ? (bClosed = false) : (bClosed = true);

		// es wird hier nicht wie in AcuteAngleCorrection() nach bNull gefragt (da sonst eine
		// Endlosschleife zwischen bisher noch nicht dagewesenen DoppelPunkten und Spitzen
		// entstehen k�nnte), sondern die neu entstandene Spitze wie bei bNull == true IMMER
		// gel�scht
		pLine->SubPunkt (1, lPInd-1);

		if (lCnt > 2 && bClosed)	// geschlossene Kante
		{
			if (1 == lPInd)				// 0 == lPInd-1
				// nachfolgend eigentlich "lCnt-1", aber durch SubPunkt() wurde lCnt schon
				// um 1 verkleinert
				pLine->SubPunkt (1, lCnt-2);

			else if (lCnt == lPInd)		// lCnt-1 == lPInd-1
				pLine->SubPunkt (1, 0);
		}
	}

} // SpecialAngleRemove


// --------------------------------------------------------------------------------------------
// Bereinigung von doppelten Punkten der pKt-Kante;
// wird u.a. bei der Bildung von PufferElementen ben�tigt, wenn z.B. die anschlie�ende Strecke
// "fast" kollinear zur aktuell bearbeiteten Strecke ist
// return-Wert:
//	true:		Bereinigung vorgenommen
//	false:		keine Bereinigung erfolgt
bool _GEOMETR_EXPORT DoublePointCleaning (EKante* pKt)
{
	_ASSERTE (pKt != 0);

	if (NULL == pKt) return false;

CoordTransX* pCT = new CoordTransX();	// KoordinatenTransformation

    if (! pCT)
    {
    	DEX_Error (RC_ErrorCorrection, EC_NOMEMORY);
    	return false;
    }

bool bMetric = pCT->isMetric();	// metrische (true) oder geod�tische Datenbank
ObjRechteck OC = pKt->GetCont();
DoublePair dpUF = UmrechnungsFaktor (OC.XMin(), OC.YMax(), OC.XMax(), OC.YMin(), pCT);

bool bRet = false;		// return-Wert: es wurde keine Bereinigung vorgenommen
long lCnt = pKt->ASP();	// St�tzpunktanzahl der Kante
int iKaNr = -1;			// "Konturindex" bei Kante
bool bNull;				// Parameter von isDoppel()

// Abfrage in der RegDB, mit welcher Genauigkeit auf "doppelte Punkte" getestet werden soll
// (die Genauigkeit f�r "Spitzen" (dSpEps) wird weiter unten auch ben�tigt)
CCurrentUser cuExtConfig (KEY_READ, RegistryExtPathRein);
DWORD dwWert1, dwWert2;
double dDPEps, dSpEps;

	if (cuExtConfig.GetDWORD (RegDoppelPunkt, dwWert1))
		dDPEps = dwWert1 / 10.;
	else
		dDPEps = dDopEps;

	if (cuExtConfig.GetDWORD (RegSpitzenWinkel, dwWert2))
		dSpEps = dwWert2 / 10.;
	else
		dSpEps = dSpiEps;

	for (long j = lCnt-1; j > 0; j--)
		if (pKt->isDoppel (bNull, dDPEps, dpUF, bMetric, j))
		{
			DblPointCorrection (pKt, iKaNr, j, dSpEps);
			bRet = true;
		}

	DELETE_OBJ (pCT);

	return bRet;

} // DoublePointCleaning


// --------------------------------------------------------------------------------------------
// Bereinigung von Spitzen, Kollinearit�ten, doppelten Punkten und ggf. des Umlaufsinns der
// pKt-Kante;
// wird u.a. bei ObjektOperationen ben�tigt; w�rde die GeometrieBereinigung erst beim
// Einspeichern in die TRiAS-Datenbank erfolgen, entstehen manchmal neue Fehler (z.B.
// Konturinzidenzen, wenn in der Au�enkontur, die "ganz nahe" an einer Innenkontur vorbei geht,
// Spitzen, Kollinearit�ten oder doppelte Punkte gel�scht werden);
// return-Wert:
//	true:		Bereinigung vorgenommen
//	false:		keine Bereinigung erfolgt
bool _GEOMETR_EXPORT PartialCleaningForLines (EKante* pKt, short i)
{
	_ASSERTE (pKt != 0);

	if (NULL == pKt) return false;

CoordTransX* pCT = new CoordTransX();	// KoordinatenTransformation

    if (! pCT)
    {
    	DEX_Error (RC_ErrorCorrection, EC_NOMEMORY);
    	return false;
    }

bool bMetric = pCT->isMetric();	// metrische (true) oder geod�tische Datenbank
ObjRechteck OC = pKt->GetCont();
DoublePair dpUF = UmrechnungsFaktor (OC.XMin(), OC.YMax(), OC.XMax(), OC.YMin(), pCT);

bool bRet = false;		// return-Wert: es wurde keine Bereinigung vorgenommen
long lCnt = pKt->ASP();	// St�tzpunktanzahl der Kante
int iKaNr = -1;			// "Konturindex" bei Kante
bool bNull;				// Parameter von isSpitz() bzw. isDoppel()

bool bClosed;			// urspr�ngliche Kante geschlossen (true)

	(pKt->SP(0) == pKt->SP(lCnt-1)) ? (bClosed = true) : (bClosed = false);


// Abfrage in der RegDB, mit welcher Genauigkeit auf "doppelte Punkte" (dDPEps) und "Spitzen"
// (dSpEps) getestet werden soll
CCurrentUser cuExtConfig (KEY_READ, RegistryExtPathRein);
DWORD dwWert1, dwWert2;
double dDPEps, dSpEps;

	if (cuExtConfig.GetDWORD (RegDoppelPunkt, dwWert1))
		dDPEps = dwWert1 / 10.;
	else
		dDPEps = dDopEps;

	if (cuExtConfig.GetDWORD (RegSpitzenWinkel, dwWert2))
		dSpEps = dwWert2 / 10.;
	else
		dSpEps = dSpiEps;


	for (long j = lCnt-1; j >= 0; j--)
	{
		if (pKt->isSpitz (bNull, dSpEps, j))					// Spitze
		{
			AcuteAngleCorrection (pKt, iKaNr, j-1, bNull, dDPEps, dpUF, bMetric);
			bRet = true;
		}

		if (pKt->isKoll (j))									// Kollinearit�t
		{
			CollinearCorrection (pKt, iKaNr, j-1);
			bRet = true;
		}

		if (pKt->isDoppel (bNull, dDPEps, dpUF, bMetric, j))	// doppelter Punkt
		{
			DblPointCorrection (pKt, iKaNr, j, dSpEps);
			bRet = true;
		}
	}

	if (bClosed)	// zus�tzlich bei urspr�nglich geschlossener Kante
		ExtraTestClosedLine (pKt, iKaNr, pCT, bMetric, dDPEps, dSpEps, dpUF);

	DELETE_OBJ (pCT);

	// Kante, die eigentlich eine Fl�chenkontur ist
	if (i >= 0)
	{
		_ASSERTE (true == bClosed);

	bool bTurn = pKt->GetTurning();	// Umlaufsinn

		if ((bTurn && i > 0) || (!bTurn && 0 == i))
		{
			pKt->OrientDreh();
			bRet = true;
		}

	}

	return bRet;

} // PartialCleaningForLines


// --------------------------------------------------------------------------------------------
// zus�tzlicher Test am Anfangs-/Endpunkt bei urspr�nglich geschlossenen Kanten
bool ExtraTestClosedLine (EKante* pKt, int iKaNr, CoordTransX* pCT, bool bMetric,
						  double dDPEps, double dSpEps, DoublePair dpUF)
{
	_ASSERTE (pKt != 0);
	_ASSERTE (pCT != 0);

bool bNull;				// Parameter von isSpitz() bzw. isDoppel()
long lLastInd;			// letzter "nutzbarer" Index
long lCnt = pKt->ASP();	// L�nge der Kante pKt neu bestimmen, da sie evtl. reduziert worden ist

	if (lCnt < 2) return true;

	(pKt->SP(0) == pKt->SP(lCnt-1)) ? (lLastInd = lCnt - 2) : (lLastInd = lCnt - 1);

 	if (pKt->isSpitz (bNull, dSpEps, 1, 0, lLastInd))			// Spitze
	{
		AcuteAngleCorrection (pKt, iKaNr, 0, bNull, dDPEps, dpUF, bMetric);

		// bei der Korrektur einer Spitze werden MANCHMAL St�tzpunkte gel�scht; deshalb einige
		// Parameter neu bestimmen
		lCnt = pKt->ASP();

		_ASSERTE (lCnt >= 2);

		(pKt->SP(0) == pKt->SP(lCnt-1)) ? (lLastInd = lCnt - 2) : (lLastInd = lCnt - 1);
	}

	if (pKt->isKoll (1, 0, lLastInd))								// Kollinearit�t
		CollinearCorrection (pKt, iKaNr, 0);	// Anfangs- UND Endpunkt l�schen

	if (pKt->isDoppel (bNull, dDPEps, dpUF, bMetric, 1, 0))	// doppelter Punkt
		DblPointCorrection (pKt, iKaNr, 1, dSpEps);

// ist eine aus 3 St�tzpunkten bestehende Kante geschlossen, dann ist der Endpunkt als
// doppelter Punkt anzusehen und entsprechend zu behandeln (08.07.98)
bool bKtZu;		// Kante bzw. Fl�chenkontur immer noch geschlossen (true)

	lCnt = pKt->ASP();

	_ASSERTE (lCnt >= 1);

	(pKt->SP(0) == pKt->SP(lCnt-1)) ? (bKtZu = true) : (bKtZu = false);

	if (3 == lCnt && bKtZu)
		DblPointCorrection (pKt, iKaNr, lCnt-1, dSpEps);

// evtl. erneutes Schlie�en einer durch Fehlerbereinigung jetzt offenen, aber urspr�nglich
// geschlossenen Kante
	lCnt = pKt->ASP();

	_ASSERTE (lCnt >= 1);

	(pKt->SP(0) == pKt->SP(lCnt-1)) ? (bKtZu = true) : (bKtZu = false);

	if (! bKtZu &&			// Kante jetzt offen,
		pKt->ASP() >= 3)	// aber mindestens aus 3 St�tzpunkten
		pKt->AddPunkt (&pKt->SP(0).X(), &pKt->SP(0).Y(), 1, -1);

	return true;

} // ExtraTestClosedLine


// --------------------------------------------------------------------------------------------
// Abtrennen einer Schleifen am Anfang bzw. Ende der Kanten *pKt am Punkt (lTX,lTY) mit Index lPInd;
// besitzt die Kante am Anfang UND am Ende eine Schleife, wird mit Aufruf dieser Routine nur
// die Schleife am Anfang abgetrennt;
bool SeparateEndLoop (EKante* pKt, KoOrd lTX, KoOrd lTY, long lPInd, EKante* pLoopKt)
{
	_ASSERTE (0 != pKt);
	_ASSERTE (0 != pLoopKt);

long lCnt = pKt->ASP();	// Parameter der Originalkante
KoOrd* plXK = new KoOrd[lCnt];
KoOrd* plYK = new KoOrd[lCnt];

    if (!plXK || !plYK)
    {
    	DEX_Error (RC_ErrorCorrection, EC_NOMEMORY);
    	return false;
    }

	pKt->GetKante (plXK, plYK, lCnt);

	// Schleife ist am Anfang der Kante
	if (lTX == plXK[0] && lTY == plYK[0])
	{
		// Aufbau der neuen geschlossenen Kante
		if (FAILED(pLoopKt->AddPunkt (plXK, plYK, lCnt, 0, lPInd, -1)))
		{
			DELETE_OBJ(plXK);
			DELETE_OBJ(plYK);
			return false;
		}

		pKt->SubPunkt (lPInd, 0);	// Originalkante um die Schleife verk�rzen
	}

	// Schleife ist am Ende der Kante
	else if (lTX == plXK[lCnt-1] && lTY == plYK[lCnt-1])
	{
		if (FAILED(pLoopKt->AddPunkt (plXK, plYK, lCnt, lPInd, lCnt-1, -1)))
		{
			DELETE_OBJ(plXK);
			DELETE_OBJ(plYK);
			return false;
		}

		pKt->SubPunkt (lCnt - 1 - lPInd, lPInd);	// Originalkante um die Schleife verk�rzen
	}

	DELETE_OBJ(plXK);
	DELETE_OBJ(plYK);
	return true;

} // SeparateEndLoop
