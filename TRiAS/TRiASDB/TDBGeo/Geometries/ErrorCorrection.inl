// $Header: $
// Copyright� 1999-2002 GEOPunkt GmbH, NL Potsdam, All rights reserved
// Created: 03.02.2002 21:27:30 
//
// @doc
// @module ErrorCorrection.inl | Declaration of the <c CErrorCorrection> class

#if !defined(_ERRORCORRECTION_INL__0F0EEC28_51EF_4D0B_A877_885B055DB71B__INCLUDED_)
#define _ERRORCORRECTION_INL__0F0EEC28_51EF_4D0B_A877_885B055DB71B__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

// Header include diagnostics
#if defined(_TRIAS_DBG_HEADER_DIAGNOSTICS)
#pragma message(__TIME__": include " __FILE__ )
#endif

namespace trias_wmgeometry  {

///////////////////////////////////////////////////////////////////////////////
// Routinen zur automatischen Geometrie-Fehler-Korrektur

// Bereinigung des DoppelPunkt-Fehlers durch L�schen des Punktes
template <typename KoOrdT>
inline void 
DblPointCorrection (WMObjekt<KoOrdT> *pEO, int iKInd, long lPInd, 
	double dSpEps)
{
	_ASSERTE(pEO != 0);

	if (OT_KANTE == pEO->isA())	{
	// Wenn bei einer geschlossenen Kante zu einem der beiden "Schlo�punkte" die
	// DoppelPunkt-Situation besteht, darf nicht der "Schlo�punkt" sondern der 
	// "andere" eps-gleiche Punkt gel�scht werden, weil es sonst passieren kann, 
	// da� die Kante nicht mehr geschlossen ist. (23.03.99)
	WMKante<KoOrdT> *pKt = (WMKante<KoOrdT> *)pEO;
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
		} else
			pKt->SubPunkt (1, lPInd);		// offene Kante

		SpecialAngleRemove (pKt, lPInd, dSpEps);
	}
	else {
	// Fl�che
		_ASSERTE(pEO->isA() == OT_FLAECHE);

	// Wenn bei einer Fl�chenkontur zu einem der beiden "Schlo�punkte" die
	// DoppelPunkt-Situation besteht, darf nicht der "Schlo�punkt" sondern der 
	// "andere" eps-gleiche Punkt gel�scht werden, weil es sonst passieren kann, 
	// da� die Kontur nicht mehr geschlossen ist. (23.03.99)
	WMFlaeche<KoOrdT> *pFl = (WMFlaeche<KoOrdT> *)pEO;
	long lLen = pFl->KA(iKInd).ASP();			// L�nge der Kontur

		if (0 == lPInd)
			pFl->KA(iKInd).SubPunkt (1, 1);
		else if (lLen-1 == lPInd)
			pFl->KA(iKInd).SubPunkt (1, lLen-2);
		else
			pFl->KA(iKInd).SubPunkt (1, lPInd);	// nicht der "Schlo�punkt"

		SpecialAngleRemove (&pFl->KA(iKInd), lPInd, dSpEps);
	}
}

// Bereinigung der Kollinearit�t durch L�schen der redundanten Punkte
template <typename KoOrdT>
inline void 
CollinearCorrection (WMObjekt<KoOrdT> *pEO, int iKInd, long lPInd)
{
	_ASSERTE(pEO != 0);

	if (OT_KANTE == pEO->isA()) {
	WMKante<KoOrdT> *pKt = (WMKante<KoOrdT> *)pEO;

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
	else {
	// Fl�che
		_ASSERTE(pEO->isA() == OT_FLAECHE);

	WMFlaeche<KoOrdT> *pFl = (WMFlaeche<KoOrdT> *)pEO;
	long lLen = pFl->KA(iKInd).ASP();

		pFl->KA(iKInd).SubPunkt (1, lPInd);
		if (lLen > 2) {
			if (0 == lPInd)
				pFl->KA(iKInd).SubPunkt (1, lLen-2);	// eigentlich "lLen-1", aber durch SubPunkt()
														// wurde lLen schon um 1 verkleinert
			else if (lLen > 3 &&	// damit nicht aus einer Linie unn�tig ein Punkt wird
					 lLen - 1 == lPInd)
				pFl->KA(iKInd).SubPunkt (1, 0);
		}
	}
}

// 02.10.98
// die Bereinigung einer Spitze erfolgt i. d. R. NICHT mehr durch L�schen, 
// sondern durch Modifizieren des entsprechenden St�tzpunktes; dazu wird von 
// dem vorherigen bzw. nachfolgenden St�tzpunkt das Lot auf die l�ngere der 
// beiden Strecken, die die Spitze bilden, gef�llt; der Lotpunkt wird dann der 
// modifizierte St�tzpunkt an der Spitze; Sonderfall: die Spitze hat 0� 
// (bNull == true), dann wird wie bisher schlicht und einfach gel�scht
template <typename KoOrdT>
inline bool 
AcuteAngleCorrection (WMObjekt<KoOrdT> *pEO, int iKInd, long lPInd, 
	bool bNull, double dDPEps, DoublePair const &dpUF, bool bMetric)
{
	_ASSERTE(pEO != 0);

long lVorInd, lNachInd;		// der Vorl�ufer bzw. Nachfolger von lPInd
WMPunkt<KoOrdT> LPkt;				// Lotpunkt f�r Routine LotPunkt()

	if (OT_KANTE == pEO->isA()) {
	WMKante<KoOrdT> *pKt = (WMKante<KoOrdT> *)pEO;
	long lLen = pKt->ASP();		// L�nge der Kante
	bool bClosed;				// Kante geschlossen (true)

		bClosed = (pKt->SP(0) != pKt->SP(lLen-1)) ? false : true;
		if (bNull) {
			pKt->SubPunkt (1, lPInd);
			if (lLen > 2 && bClosed) {	// geschlossene Kante
				if (0 == lPInd) {
				// nachfolgend eigentlich "lLen-1", aber durch SubPunkt() wurde lLen schon
				// um 1 verkleinert
					pKt->SubPunkt (1, lLen-2);
				}
				else if (lLen-1 == lPInd)
					pKt->SubPunkt (1, 0);
			}
		}
		else {
			if (!bClosed) {	
			// offene Kante
				lVorInd = lPInd - 1;
				lNachInd = lPInd + 1;
			}
			else {
				lVorInd = (lPInd > 0) ? lPInd - 1 : lLen - 2;
				lNachInd = (lPInd < lLen - 1) ? lPInd + 1 : 0;
			}

			_ASSERTE(lVorInd >= 0);			// bei einer offenen Kante kann am 1. bzw.
			_ASSERTE(lNachInd <= lLen-1);		// letzten Punkt keine Spitze sein

		WMPunkt<KoOrdT> SPkt (pKt->SP(lPInd));			// St�tzpunkt bei der Spitze
		WMPunkt<KoOrdT> VPkt (pKt->SP(lVorInd));		// St�tzpunkt vor bzw.
		WMPunkt<KoOrdT> NPkt (pKt->SP(lNachInd));		// nach der Spitze

			if (LotPunkt (NPkt, VPkt, SPkt, LPkt))
				pKt->SPV(lPInd) = LPkt;
			else if (LotPunkt (VPkt, NPkt, SPkt, LPkt))
				pKt->SPV(lPInd) = LPkt;
			else {
				_ASSERTE(false);	// ich hoffe, da� der Fall niemals nicht eintritt
				return false;
			}

			if (bClosed) {
			// geschlossene Kante
				if (0 == lPInd)
					pKt->SPV(lLen-1) = LPkt;
				else if (lLen-1 == lPInd)
					pKt->SPV(0) = LPkt;
			}

			SpecialDblRemove (pKt, lLen, bClosed, lVorInd, lPInd, dDPEps, dpUF, bMetric);
		}
	}
	else {
		_ASSERTE(pEO->isA() == OT_FLAECHE);

	WMFlaeche<KoOrdT> *pFl = (WMFlaeche<KoOrdT> *)pEO;
	long lLen = pFl->KA(iKInd).ASP();	// L�nge der aktuellen Kontur

		if (bNull) {
			pFl->KA(iKInd).SubPunkt (1, lPInd);

			if (lLen > 2) {
				if (0 == lPInd) {
				// nachfolgend eigentlich "lLen-1", aber durch SubPunkt() wurde lLen schon
				// um 1 verkleinert
					pFl->KA(iKInd).SubPunkt (1, lLen-2);
				}
				else if (lLen-1 == lPInd)
					pFl->KA(iKInd).SubPunkt (1, 0);
			}
		}
		else {
			lVorInd = (lPInd > 0) ? lPInd - 1 : lLen - 2;
			lNachInd = (lPInd < lLen - 1) ? lPInd + 1 : 0;

		WMPunkt<KoOrdT> SPkt = pFl->KA(iKInd).SP(lPInd);		// St�tzpunkt bei der Spitze
		WMPunkt<KoOrdT> VPkt = pFl->KA(iKInd).SP(lVorInd);		// St�tzpunkt vor bzw.
		WMPunkt<KoOrdT> NPkt = pFl->KA(iKInd).SP(lNachInd);		// nach der Spitze

		// #HK000608: Spitzen in Fl�chen mit 4 St�tzpunkten sollten nicht durch 
		// Wegschneiden der Spitze selbst, sondern durch Entfernen entweder des 
		// Vor- oder des Nachpunktes bereinigt werden. Dabei entsteht zwar eine 
		// entartete Fl�che, aber die wird sp�ter zur Linie gemacht.
			if (lLen > 4) {
				if (LotPunkt (NPkt, VPkt, SPkt, LPkt))
					pFl->KA(iKInd).SPV(lPInd) = LPkt;
				else if (LotPunkt (VPkt, NPkt, SPkt, LPkt))
					pFl->KA(iKInd).SPV(lPInd) = LPkt;
				else {
					_ASSERTE(false);	// ich hoffe, da� der Fall niemals nicht eintritt
					return false;
				}

				if (0 == lPInd)
					pFl->KA(iKInd).SPV(lLen-1) = LPkt;
				else if (lLen-1 == lPInd)
					pFl->KA(iKInd).SPV(0) = LPkt;

				SpecialDblRemove (&pFl->KA(iKInd), lLen, true, lVorInd, lPInd, dDPEps, dpUF, bMetric);
			} 
			else {
				if (LotPunkt (NPkt, VPkt, SPkt, LPkt))
					pFl->KA(iKInd).SubPunkt (1, lVorInd);
				else if (LotPunkt (VPkt, NPkt, SPkt, LPkt))
					pFl->KA(iKInd).SubPunkt (1, lNachInd);
				else {
					_ASSERTE(false);	// ich hoffe, da� der Fall niemals nicht eintritt
					return false;
				}
			}
		}
	}
	return true;
}

// durch die Korrektur von Spitzen k�nnen DoppelPunkte entstehen, die es vorher 
// nicht gab; da in der Routine GeoAnalyse() die St�tzpunkte mit FALLENDEM 
// Index abgearbeitet werden, w�rde so ein nachtr�glich entstandener DoppelPunkt, 
// der aus dem lPInd- und dem lVorInd-St�tzpunkt besteht, nicht mehr erkannt 
// (und damit auch nicht mehr bereinigt) werden
template <typename KoOrdT>
inline void 
SpecialDblRemove (WMKante<KoOrdT> *pLine, long lLen, bool bClosed, 
	long lVorInd, long lPInd, double dDPEps, DoublePair const &dpUF, 
	bool bMetric)
{
	_ASSERTE(pLine != NULL);

bool bNull;		// Parameter von isDoppel(); wird hier nicht ausgewertet

	if (pLine->isDoppel (bNull, dDPEps, dpUF, bMetric, lPInd, lVorInd))	{
		pLine->SubPunkt (1, lPInd);
		if (lLen > 2 && bClosed) {
			if (0 == lPInd)
				pLine->SubPunkt (1, lLen-2);	// eigentlich "lLen-1", aber durch SubPunkt()
												// wurde lLen schon um 1 verkleinert
			else if (lLen > 3 &&	// damit nicht aus einer Linie unn�tig ein Punkt wird
					 lLen - 1 == lPInd)
				pLine->SubPunkt (1, 0);
		}
	}
}

// durch die Korrektur von DoppelPunkten k�nnen Spitzen entstehen, die es vorher 
// nicht gab; da in der Routine GeoAnalyse() die St�tzpunkte mit FALLENDEM 
// Index abgearbeitet werden, w�rde so eine nachtr�glich entstandene Spitze am 
// lPInd-St�tzpunkt nicht mehr erkannt (und damit auch nicht mehr bereinigt) 
// werden (26.04.99)
template <typename KoOrdT>
inline void 
SpecialAngleRemove (WMKante<KoOrdT> *pLine, long lPInd, double dSpEps)
{
	_ASSERTE(0 != pLine);

bool bNull;	// Parameter von isSpitz()

	if (pLine->isSpitz (bNull, dSpEps, lPInd)) {
	long lCnt = pLine->ASP();	// L�nge von pLine neu bestimmen, da sie reduziert worden ist
	bool bClosed;				// Kante geschlossen (true)

		bClosed = (pLine->SP(0) != pLine->SP(lCnt-1)) ? false : true;

	// es wird hier nicht wie in AcuteAngleCorrection() nach bNull gefragt (da 
	// sonst eine Endlosschleife zwischen bisher noch nicht dagewesenen 
	// DoppelPunkten und Spitzen entstehen k�nnte), sondern die neu entstandene 
	// Spitze wie bei bNull == true IMMER gel�scht
		pLine->SubPunkt (1, lPInd-1);
		if (lCnt > 2 && bClosed) {
		// geschlossene Kante
			if (1 == lPInd)				// 0 == lPInd-1
				// nachfolgend eigentlich "lCnt-1", aber durch SubPunkt() wurde lCnt schon
				// um 1 verkleinert
				pLine->SubPunkt (1, lCnt-2);

			else if (lCnt == lPInd)		// lCnt-1 == lPInd-1
				pLine->SubPunkt (1, 0);
		}
	}
}

// Bereinigung von doppelten Punkten der pKt-Kante;
// wird u.a. bei der Bildung von PufferElementen ben�tigt, wenn z.B. die 
// anschlie�ende Strecke "fast" kollinear zur aktuell bearbeiteten Strecke ist
// return-Wert:
//	true:		Bereinigung vorgenommen
//	false:		keine Bereinigung erfolgt
template <typename KoOrdT>
inline bool 
DoublePointCleaning (WMKante<KoOrdT> *pKt)
{
	_ASSERTE(pKt != 0);
	if (NULL == pKt) 
		return false;

DoublePair dpUF (1.0, 1.0);
bool bRet = false;		// return-Wert: es wurde keine Bereinigung vorgenommen
long lCnt = pKt->ASP();	// St�tzpunktanzahl der Kante
int iKaNr = -1;			// "Konturindex" bei Kante
bool bNull;				// Parameter von isDoppel()

// Abfrage in der RegDB, mit welcher Genauigkeit auf "doppelte Punkte" getestet 
// werden soll (die Genauigkeit f�r "Spitzen" (dSpEps) wird weiter unten auch 
// ben�tigt)
//CCurrentUser cuExtConfig (KEY_READ, RegistryExtPathRein);
//DWORD dwWert1, dwWert2;
double dDPEps, dSpEps;
//
//	if (cuExtConfig.GetDWORD (RegDoppelPunkt, dwWert1))
//		dDPEps = dwWert1 / 10.;
//	else
		dDPEps = dDopEps;

//	if (cuExtConfig.GetDWORD (RegSpitzenWinkel, dwWert2))
//		dSpEps = dwWert2 / 10.;
//	else
		dSpEps = dSpiEps;

	for (long j = lCnt-1; j > 0; j--) {
		if (pKt->isDoppel (bNull, dDPEps, dpUF, true, j))
		{
			DblPointCorrection (pKt, iKaNr, j, dSpEps);
			bRet = true;
		}
	}
	return bRet;
}

// Bereinigung von Spitzen, Kollinearit�ten, doppelten Punkten und ggf. des 
// Umlaufsinns der pKt-Kante;
// wird u.a. bei ObjektOperationen ben�tigt; w�rde die GeometrieBereinigung 
// erst beim Einspeichern in die TRiAS-Datenbank erfolgen, entstehen manchmal 
// neue Fehler (z.B. Konturinzidenzen, wenn in der Au�enkontur, die "ganz nahe" 
// an einer Innenkontur vorbei geht, Spitzen, Kollinearit�ten oder doppelte 
// Punkte gel�scht werden);
// return-Wert:
//	true:		Bereinigung vorgenommen
//	false:		keine Bereinigung erfolgt
template <typename KoOrdT>
inline bool 
PartialCleaningForLines (WMKante<KoOrdT> *pKt, int i)
{
	_ASSERTE(pKt != 0);
	if (NULL == pKt) 
		return false;

DoublePair dpUF (1.0, 1.0);

bool bRet = false;		// return-Wert: es wurde keine Bereinigung vorgenommen
long lCnt = pKt->ASP();	// St�tzpunktanzahl der Kante
int iKaNr = -1;			// "Konturindex" bei Kante
bool bNull;				// Parameter von isSpitz() bzw. isDoppel()

// urspr�ngliche Kante geschlossen (true)
bool bClosed = (pKt->SP(0) == pKt->SP(lCnt-1)) ? true : false;

// Abfrage in der RegDB, mit welcher Genauigkeit auf "doppelte Punkte" (dDPEps) 
// und "Spitzen" (dSpEps) getestet werden soll
//CCurrentUser cuExtConfig (KEY_READ, RegistryExtPathRein);
//DWORD dwWert1, dwWert2;
double dDPEps, dSpEps;

//	if (cuExtConfig.GetDWORD (RegDoppelPunkt, dwWert1))
//		dDPEps = dwWert1 / 10.;
//	else
		dDPEps = dDopEps;

//	if (cuExtConfig.GetDWORD (RegSpitzenWinkel, dwWert2))
//		dSpEps = dwWert2 / 10.;
//	else
		dSpEps = dSpiEps;

	for (long j = lCnt-1; j >= 0; j--) {
		if (pKt->isSpitz (bNull, dSpEps, j)) {
		// Spitze
			AcuteAngleCorrection (pKt, iKaNr, j-1, bNull, dDPEps, dpUF, true);
			bRet = true;
		}

		if (pKt->isKoll (j)) {
		// Kollinearit�t
			CollinearCorrection (pKt, iKaNr, j-1);
			bRet = true;
		}

		if (pKt->isDoppel (bNull, dDPEps, dpUF, true, j)) {	
		// doppelter Punkt
			DblPointCorrection (pKt, iKaNr, j, dSpEps);
			bRet = true;
		}
	}

	if (bClosed)	// zus�tzlich bei urspr�nglich geschlossener Kante
		ExtraTestClosedLine (pKt, iKaNr, true, dDPEps, dSpEps, dpUF);

// Kante, die eigentlich eine Fl�chenkontur ist
	if (i >= 0) {
		_ASSERTE(bClosed);

	bool bTurn = pKt->GetTurning();		// Umlaufsinn

		if ((bTurn && i > 0) || (!bTurn && 0 == i)) {
			pKt->OrientDreh();
			bRet = true;
		}
	}
	return bRet;
}

// zus�tzlicher Test am Anfangs-/Endpunkt bei urspr�nglich geschlossenen Kanten
template <typename KoOrdT>
inline bool 
ExtraTestClosedLine (WMKante<KoOrdT> *pKt, int iKaNr, bool bMetric,
	double dDPEps, double dSpEps, DoublePair const &dpUF)
{
	_ASSERTE(pKt != 0);

bool bNull;				// Parameter von isSpitz() bzw. isDoppel()
long lLastInd;			// letzter "nutzbarer" Index
long lCnt = pKt->ASP();	// L�nge der Kante pKt neu bestimmen, da sie evtl. reduziert worden ist

	if (lCnt < 2) 
		return true;

	lLastInd = (pKt->SP(0) == pKt->SP(lCnt-1)) ? lCnt - 2 : lCnt - 1;

 	if (pKt->isSpitz (bNull, dSpEps, 1, 0, lLastInd)) {
	// Spitze
		AcuteAngleCorrection (pKt, iKaNr, 0, bNull, dDPEps, dpUF, bMetric);

	// bei der Korrektur einer Spitze werden MANCHMAL St�tzpunkte gel�scht; deshalb einige
	// Parameter neu bestimmen
		lCnt = pKt->ASP();

		_ASSERTE(lCnt >= 2);
		lLastInd = (pKt->SP(0) == pKt->SP(lCnt-1)) ? lCnt - 2 : lCnt - 1;
	}

	if (pKt->isKoll (1, 0, lLastInd))			// Kollinearit�t
		CollinearCorrection (pKt, iKaNr, 0);	// Anfangs- UND Endpunkt l�schen

	if (pKt->isDoppel (bNull, dDPEps, dpUF, bMetric, 1, 0))	// doppelter Punkt
		DblPointCorrection (pKt, iKaNr, 1, dSpEps);

// ist eine aus 3 St�tzpunkten bestehende Kante geschlossen, dann ist der 
// Endpunkt als doppelter Punkt anzusehen und entsprechend zu behandeln 
// (08.07.98)
bool bKtZu;		// Kante bzw. Fl�chenkontur immer noch geschlossen (true)

	lCnt = pKt->ASP();

	_ASSERTE(lCnt >= 1);

	bKtZu = (pKt->SP(0) == pKt->SP(lCnt-1)) ? true : false;
	if (3 == lCnt && bKtZu)
		DblPointCorrection (pKt, iKaNr, lCnt-1, dSpEps);

// evtl. erneutes Schlie�en einer durch Fehlerbereinigung jetzt offenen, aber 
// urspr�nglich geschlossenen Kante
	lCnt = pKt->ASP();

	_ASSERTE(lCnt >= 1);

	bKtZu = (pKt->SP(0) == pKt->SP(lCnt-1)) ? true : false;
	if (!bKtZu &&			// Kante jetzt offen,
		pKt->ASP() >= 3)	// aber mindestens aus 3 St�tzpunkten
	{
	KoOrdT x = pKt->SP(0).X();
	KoOrdT y = pKt->SP(0).Y();

		pKt->AddPunkt (&x, &y, 1, -1);
	}
	return true;
}

} // namespace trias_wmgeometry  

#endif // !defined(_ERRORCORRECTION_INL__0F0EEC28_51EF_4D0B_A877_885B055DB71B__INCLUDED_)
