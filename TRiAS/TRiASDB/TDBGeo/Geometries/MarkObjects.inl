// $Header: $
// Copyright� 1999-2002 GEOPunkt GmbH, NL Potsdam, All rights reserved
// Created: 25.01.2002 21:41:16 
//
// @doc
// @module MarkObjects.inl | Declaration of the <c CMarkObjects> class

#if !defined(_MARKOBJECTS_INL__650FBE6A_7F64_4467_8035_2C074C250DFB__INCLUDED_)
#define _MARKOBJECTS_INL__650FBE6A_7F64_4467_8035_2C074C250DFB__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

// Header include diagnostics
#if defined(_TRIAS_DBG_HEADER_DIAGNOSTICS)
#pragma message(__TIME__": include " __FILE__ )
#endif

namespace trias_wmgeometry {

///////////////////////////////////////////////////////////////////////////////
// markierter St�tzpunkt MARKVERTEX
inline 
WMMarkVertex::WMMarkVertex() :
	m_Mark1 (NORMAL), m_Mark2 (UNVERBR), m_lRInd(-1)
{
}

template <typename KoOrdT>
inline 
WMMarkVertex::WMMarkVertex (WMPunkt<KoOrdT> const &Pkt) :
	m_dpVtx(Pkt.X(), Pkt.Y()), m_Mark1(NORMAL), m_Mark2(UNVERBR), m_lRInd(-1)
{
}

inline 
WMMarkVertex::WMMarkVertex (DoublePair const &DP, WMMar1 Mk1, WMMar2 Mk2, long lRInd) :
	m_dpVtx (DP), m_Mark1 (Mk1), m_Mark2 (Mk2), m_lRInd (lRInd) 
{
}

inline 
WMMarkVertex::WMMarkVertex (WMMarkVertex const &MV) :
	m_dpVtx (MV.X(), MV.Y()), m_Mark1 (MV.m_Mark1),
	m_Mark2 (MV.m_Mark2), m_lRInd (MV.m_lRInd) 
{
}

inline 
WMMarkVertex::~WMMarkVertex()
{
	m_lRInd = -2;
}

// Elementfunktion
inline void 
WMMarkVertex::SetX (double x) 
{ 
	m_dpVtx.X() = x; 
}

inline void 
WMMarkVertex::SetY (double y) 
{ 
	m_dpVtx.Y() = y; 
}

// 1. Markierung modifizieren
inline void 
WMMarkVertex::ModMk1 (WMMar1 Mk1) 
{
	m_Mark1 = Mk1; 
}

// 2. Markierung modifizieren
inline void 
WMMarkVertex::ModMk2 (WMMar2 Mk2) 
{ 
	m_Mark2 = Mk2; 
}

// Referenzindex setzen
inline void 
WMMarkVertex::SetRInd (long lRInd) 
{ 
	m_lRInd = lRInd; 
}	

// Referenzindex inkrementieren
inline void 
WMMarkVertex::IncRInd() 
{ 
	m_lRInd++; 
}				

inline DoublePair 
WMMarkVertex::Vtx() const 
{ 
	return m_dpVtx; 
}

inline double 
WMMarkVertex::X() const 
{ 
	return m_dpVtx.X(); 
}

inline double 
WMMarkVertex::Y() const
{ 
	return m_dpVtx.Y(); 
}

inline WMMar1 
WMMarkVertex::Mark1() const 
{ 
	return m_Mark1; 
}

inline WMMar2 
WMMarkVertex::Mark2() const 
{ 
	return m_Mark2; 
}

inline long 
WMMarkVertex::GetRInd() const 
{ 
	return m_lRInd; 
}

// Zuweisung �berladen
inline WMMarkVertex &
WMMarkVertex::operator= (WMMarkVertex const &rhs)	
{
	if (this != &rhs) {
		m_dpVtx.X() = rhs.X();
		m_dpVtx.Y() = rhs.Y();
		m_Mark1 = rhs.m_Mark1;
		m_Mark2 = rhs.m_Mark2;
		m_lRInd = rhs.m_lRInd;
	}
	return *this;
}

///////////////////////////////////////////////////////////////////////////////
// ehem. friend Funktionen von WMMarkVertex

// Ermittlung des Index lEInd des MarkLine-Vektors pML, VOR dem ein zus�tzlicher 
// Punkt ZP (der durch Schnitt, �berlappung bzw. Ber�hrung zweier Kanten 
// entstanden ist) einzuf�gen ist. APkt ist dabei der l-te, EPkt der (l+1)-te 
// St�tzpunkt der Kante, aus der pML gebildet wurde.
template <typename KoOrdT>
inline bool 
EinfIndex (WMPunkt<KoOrdT> const &APkt, WMPunkt<KoOrdT> const &EPkt, long l, 
	WMMarkLine* pML, DoublePair const &ZP, long& lEInd)
{
	_ASSERTE(pML != 0);
	_ASSERTE(l >= 0);
	if (!pML || l < 0)
		return false;
		
long lVekL = pML->ADP();

// Die Ermittlung des gesuchten Index erfolgt i.a. in 2 Stufen, da zwischen 2 
// St�tzpunkten der Originalkante bei Schnitt, �berlappung bzw. Ber�hrung mit 
// einer weiteren Kante mehrere zus�tzliche Punkte liegen k�nnen. Deshalb zuerst 
// Index ka mit pML->SP(ka) == APkt und Index ke mit pML->SP(ke) == EPkt suchen.
long ka = l - 1;
double xa = APkt.X();
double ya = APkt.Y();

	do {
		ka++;          
	} while ((pML->x(ka) != xa || pML->y(ka) != ya) && ka < lVekL);

long ke = ka;
double xe = EPkt.X();
double ye = EPkt.Y();

	do {
		ke++;          
	} while ((pML->x(ke) != xe || pML->y(ke) != ye) && ke < lVekL);

	if (ke == ka + 1) {
		lEInd = ke;
		return true;
	}

// Danach wird getestet, in welchem Teilabschnitt pML->Vt(k'), pML->Vt(k'+1) der
// Original-Strecke SP(l),SP(l+1) == APkt,EPkt die Einf�gung erfolgen mu�, d.h. 
// auf welcher Teilstrecke pML->Vt(k'),pML->Vt(k'+1) der Punkt ZP liegt 
// (mit ka <= k' und k' <= ke)
double dMinAbst = std::numeric_limits<double>::max();
long k = ka;
long ks = k + 1;	// k'

// Die nachfolgende Berechnung mit AbstandPktStrecke() erscheint unn�tig, da 
// doch ZP schon AUF der Strecke liegen m��te. Naheliegender erscheint der Test, 
// INNERHALB welcher Strecke liegt ZP. Dem steht die Epsilon-Gleichheit entgegen.
	do {
	double dAbst = std::numeric_limits<double>::max();

		if (AbstandPktStrecke (ZP, pML->DP(k), pML->DP(k+1), dAbst) &&
			dAbst >= 0. && dAbst < dMinAbst)
		{
			dMinAbst = dAbst;
			ks = k + 1;
		}
		k++;
	} while ((pML->x(k) != xa || pML->y(k) != ya) && dMinAbst > 0. && k < ke);

	lEInd = ks;

	_ASSERTE(ks <= ke);
	return true;
} 

// Punkt DP wird in einen MarkLine-Vektor pML VOR Vektorindex 
// -1 <= lIndex <= Vektorl�nge mit der Markierung Mark1 eingef�gt; 
// wenn lIndex == -1 bzw. Vektorl�nge, dann wird Punkt am Ende angehangen
inline bool 
AddMarkPunkt (WMMarkLine *pML, long lIndex, DoublePair const &DP, WMMar1 Mark)
{
	_ASSERTE(pML != 0);
	_ASSERTE(lIndex >= -1);

	if (!pML) 
		return false;

long lVekL = pML->ADP();

	_ASSERTE(lIndex <= lVekL);
	
int iKInd = pML->GetKInd();
bool bClosed = pML->IsClosed();

// neues MarkLine-Objekt anlegen
WMMarkLine *pNewML = new WMMarkLine(lVekL+1, iKInd, bClosed);
long l;

	if (lIndex == -1)        // ans Ende anh�ngen
		lIndex = lVekL;

	for (l = 0; l < lIndex; l++)				// Beginn kopieren
		pNewML->Vt(l) = pML->Vt(l);

	pNewML->Vt(l) = WMMarkVertex (DP, Mark);	// Einf�gen
	for (l = lIndex+1; l < lVekL+1; l++)		// Rest kopieren
		pNewML->Vt(l) = pML->Vt(l-1);

	DELETE_OBJ(pML);
	pML = pNewML;

	return true;
} 

// Punkt DP soll in MarkLine-Vektor pML VOR Index -1 <= lIndex <= Vektorl�nge 
// mit der Markierung Mark eingef�gt werden; existiert schon ein 
// koordinatengleicher Punkt, wird jedoch (evtl.) nur die Markierung des schon 
// vorhandenen Punktes modifiziert mit folgender fallender Priorit�t: 
//		�berlappungspunkt (INNERHALB) > 
//		Ber�hrungspunkt ohne Seitenwechsel (BERUEHR) >
//		Schnittpunkt (SCHNITT) > normaler Punkt (NORMAL).
// Wenn lIndex == -1 bzw. lVekL, dann wird Punkt am Ende angehangen.
// Wurde der Punkt echt eingef�gt, wird bAdd = true zur�ckgegeben; wurde nur 
// die Markierung modifiziert, wird bAdd = false zur�ckgegeben.
// Da die Modifizierung der Markierung entweder am lIndex-Punkt bzw. am 
// (lIndex-1)-Punkt erfolgt, wird der wirkliche Index in lIndex zur�ckgegeben.
inline bool 
EinfMarkPunkt (WMMarkLine *pML, long &lIndex, DoublePair const &DP, 
	WMMar1 Mark, bool &bAdd)
{
	bAdd = false;

	_ASSERTE(pML != 0);
	if (!pML)
		return false;
	
long lVekL = pML->ADP();

	_ASSERTE(lIndex >= -1);
	_ASSERTE(lIndex <= lVekL);
	if (lIndex < -1 || lIndex > lVekL) { // unerlaubter Index
//		DEX_Error (RC_EpsEinfMarkPunkt, EC_ILLPARS);
//		MessageBox (__hWndM, "Fehlerhafter Parameter in Routine EinfMarkPunkt", "Achtung:", MB_ICONEXCLAMATION | MB_OK);
		return false;
	}
	if (-1 == lIndex)        // ans Ende anh�ngen
		lIndex = lVekL;

// DP wird nur eingef�gt, wenn kein koordinatengleicher Punkt existiert, 
// anderenfalls wird evtl. nur die Markierung modifiziert; Koordinatengleichheit 
// kann sowohl mit dem lIndex-ten als auch mit dem (lIndex-1)-ten pML-Punkt bestehen
bool b0 = (DP.X() != pML->x(lIndex) || DP.Y() != pML->y(lIndex));
bool b1 = (lIndex < lVekL && b0 &&
		   lIndex > 0 && (DP.X() != pML->x(lIndex-1) || DP.Y() != pML->y(lIndex-1)));
bool b2 = (lIndex == 0 && (DP.X() != pML->x(0) || DP.Y() != pML->y(0)));
bool b3 = (lIndex == lVekL && (DP.X() != pML->x(lVekL-1) || DP.Y() != pML->y(lVekL-1)));

	if (b1 || b2 || b3) {
	bool bRet = AddMarkPunkt (pML, lIndex, DP, Mark);

		if (bRet) 
			bAdd = true;
		return bRet;
	}
	
// DP nicht einf�gen (Koordinatengleichheit)
	if (b0)	{
		if (lIndex > 0) 
			lIndex--;
		else {
		// lIndex == 0
			_ASSERTE(pML->IsClosed());	// es gibt keinen vorhergehenden Index
			if (pML->IsClosed()) 
				lIndex = lVekL - 2;
		}
	}

WMMar1 ma = pML->GetMk1 (lIndex);

// Markierung modifizieren
	if (ma == NORMAL || Mark == INNERHALB || (ma == SCHNITT && Mark == BERUEHR))
	{
		pML->ModMark1 (lIndex, Mark);

	// bei geschlossener Kante die Markierungen von Anfangs- und Endpunkt ggf. 
	// in �bereinstimmung bringen
		if (pML->IsClosed()) {
			if (0 == lIndex) {		
			// Markierung des Anfangspunktes wurde modifiziert
				pML->ModMark1 (lVekL-1, pML->GetMk1 (0));
				return true;
			}
			if (lIndex == lVekL-1)	
			// Markierung des Endpunktes wurde modifiziert
				pML->ModMark1 (0, pML->GetMk1 (lVekL-1));
		}
	}
	return true;
} 

// Bei den Punkten des Vektors pML, die am Rand eines �berlappungsbereiches 
// liegen, wird die Markierung INNERHALB evtl. in RANDP ge�ndert (seit 21.05.99)
inline void 
MarkierungModify0 (WMMarkLine *pML)
{
	_ASSERTE(pML != 0);
	if (!pML) return;

long lVekL = pML->ADP();
long l = 0;		// Laufindex des pML-Vektors

	if (!pML->IsClosed()) {
	// offene Kante
		if (INNERHALB == pML->GetMk1(0))	// der 1. Punkt hat keinen Vorg�nger
			pML->ModMark1 (0, RANDP);

		for (l = 1; l < lVekL-1; l++) {
		WMMar1 mv = pML->GetMk1(l-1);
		WMMar1 mn = pML->GetMk1(l+1);

			if (INNERHALB == pML->GetMk1(l) &&
				((INNERHALB != mv && RANDP != mv) || INNERHALB != mn))
				pML->ModMark1 (l, RANDP);
		}

		if (INNERHALB == pML->GetMk1(lVekL-1))	// der letzte Punkt hat keinen Nachfolger
			pML->ModMark1 (lVekL-1, RANDP);
		return;
	}


// bei geschlossenen Kanten kann ein �berlappungsbereich �ber den gemeinsamen
// Anfangs/Endpunkt der Kante hinausgehen, deshalb den Anfangspunkt des
// �berlappungsbereiches suchen
	if (INNERHALB == pML->GetMk1(0)) {
		l = lVekL - 2;
		while (INNERHALB == pML->GetMk1(l) && l > 0)
			l--;

		if (0 == l)
			return;		// es gibt nur INNERHALB-Punkte, d.h.2 identische geschlossene Kanten

		if (l < lVekL-2) 
			l++;
		else
			l = 0;
		pML->ModMark1 (l, RANDP);
	}

long lv, ln;		// der bez. l vorhergehende bzw. nachfolgende Index
long lAnfInd = l;	// Index, bei dem der Test auf INNERHALB wirklich beginnt

	for (;;) {
		lv = l;
		if (l < lVekL-2) 
			l++;
		else
			l = 0;
		if (l == lAnfInd) 
			break;
		ln = (l < lVekL-2) ? l+1 : 0;

	WMMar1 mv = pML->GetMk1(lv);
	WMMar1 mn = pML->GetMk1(ln);

		if (INNERHALB == pML->GetMk1(l) &&
			((INNERHALB != mv && RANDP != mv) || INNERHALB != mn))
			pML->ModMark1 (l, RANDP);
	}

// den Anfangs/Endpunkt der Kante noch gleichschalten
	if (RANDP == pML->GetMk1(0))
		pML->ModMark1 (lVekL-1, RANDP);
	else if (RANDP == pML->GetMk1(lVekL-1))
		pML->ModMark1 (0, RANDP);
} 

// Bei den Punkten der Vektoren pML1 (aus einer Fl�chenkontur gebildet) bzw. 
// pML2 (aus einer Kante gebildet), die am Rand eines �berlappungsbereiches 
// liegen, wird die allgemeine Markierung INNERHALB evtl. in RAND_INN 
// ("Zuf�hrung" kommt aus dem Inneren der Fl�chenkontur pML2) ge�ndert. F�r 
// Punkte mit einer Randpunkt- bzw. Innenber�hrung ohne Seitenwechsel wir die 
// allgemeine Markierung BERUEHR evtl. in BERUE_INN ge�ndert. Die Modifizierung 
// wird nicht vorgenommen, wenn die entsprechenden Punkte Anfangs- bzw. Endpunkt 
// der schneidenden pML2-Kante sind.
inline void 
MarkierungModify1 (WMMarkLine *pML1, WMMarkLine *pML2)
{
	_ASSERTE(pML1 != 0);
	_ASSERTE(pML2 != 0);
	if (!pML1 || !pML2) return;

long i = 0;			// Laufindex des Vektors pML1
WMMar1 Mark, newM;	// Markierungen
long lVekL1 = pML1->ADP();
long lVekL2 = pML2->ADP();
	
bool bKont = false;	// Mittelpunkt der bez. ii vorhergehenden Strecke (pML2[ii], pML2[ii-1])
					//  liegt/nicht (true/false) auf pML1

	for (long ii = 0; ii < lVekL2-1; ii++) {
	bool bMody = false;	// in pML2 wurde Markierung nicht/modifiziert (false/true)

		Mark = pML2->GetMk1 (ii);
		if (Mark == INNERHALB) {
		// Test, ob der Mittelpunkt der bez. ii nachfolgenden Strecke (pML2[ii], pML2[ii+1])
		// innerhalb von oder auf pML1 liegt
		WMPosit posLage = pML1->Position (pML2, ii);

			switch (posLage) {
			case INNERH:
				// den Fall, da� der Anfangspunkt einer Kante mit RAND_INN markiert werden
				// m��te, kann es nicht geben
				_ASSERTE(ii > 0);
				if (ii == 0) 
					break;

			// wenn der Mittelpunkt der Strecke (pML2[ii], pML2[ii+1]) innerhalb 
			// von pML1 liegt, dann mu� die Strecke (pML2[ii-1], pML2[ii]) AUF 
			// pML1 liegen (bKont == true), da pML2[ii] mit INNERHALB markiert 
			// ist
				_ASSERTE(bKont);	// 21.07.98;   siehe MarkierungModify2()

				newM = RAND_INN;	// "Zuf�hrung" aus dem Inneren von pML1
				pML2->ModMark1 (ii, newM);
				bMody = true;
				bKont = false;
				break;

			case AUSSERH:
			// wenn der Mittelpunkt der Strecke (pML2[ii], pML2[ii+1]) au�erhalb 
			// von pML1 liegt, dann mu� die Strecke (pML2[ii-1], pML2[ii]) AUF 
			// pML1 liegen (bKont == true), da pML2[ii] mit INNERHALB markiert 
			// ist
				_ASSERTE(bKont);	// 21.07.98;   siehe MarkierungModify2()
				bKont = false;
				break;

			case KONTUR:
				if (!bKont && ii > 0) // hiermit wird ausgeschlossen, da� bei 
				// der Kante pML2 die Strecke vor dem Anfangspunkt untersucht wird
				{
				// Test, ob der Mittelpunkt der bez. ii vorhergehenden Strecke
				// (pML2[ii], pML2[ii-1]) innerhalb von pML1 liegt
					if (INNERH == pML1->Position (pML2, ii, true, MOVEDIR_DOWN))	// 03.03.99
					{
						newM = RAND_INN;
						pML2->ModMark1 (ii, newM);
						bMody = true;
					}
				}
				bKont = true;
				break;

			case OFFEN:
				_ASSERTE(posLage != OFFEN);
				return;
			}
		}

		if (Mark == BERUEHR) {
		// Test, ob der Mittelpunkt der bez. ii nachfolgenden Strecke
		// (pML2[ii], pML2[ii+1]) innerhalb von, au�erhalb von oder auf pML1 
		// liegt
			if (INNERH == pML1->Position (pML2, ii)) {
				newM = BERUE_INN;	// "Zuf�hrung" aus Inneren von pML1
				pML2->ModMark1 (ii, newM);
				bMody = true;
			}
		}

	// die gleiche Modifizierung der Markierungen in pML1
  		if (bMody) {
			i = pML2->GetRefInd(ii);
			_ASSERTE(i >= 0);
			pML1->ModMark1 (i, newM);
		}
	} // for


// Behandlung des letzten St�tzpunktes
	Mark = pML2->GetMk1 (lVekL2-1);
	if (Mark == BERUEHR) {
	// Test, ob der Mittelpunkt der letzten Strecke (pML2[lVekL2-2], pML2[lVekL2-1])
	// innerhalb von pML1 liegt
		if (INNERH == pML1->Position (pML2, lVekL2-2)) {
			pML2->ModMark1 (lVekL2-1, BERUE_INN);

		// Modifizierung der Markierungen auch in pML1
			i = pML2->GetRefInd(lVekL2-1);
			_ASSERTE(i >= 0);
			pML1->ModMark1 (i, BERUE_INN);
		}
	}

// "Schlo�" der Fl�chenkontur pML1 modifizieren
	Mark = pML1->GetMk1 (0);
	if (Mark == RAND_INN || Mark == RAND_UMG || Mark == BERUE_INN)
		pML1->ModMark1 (lVekL1-1, Mark);
	else {
		Mark = pML1->GetMk1 (lVekL1-1);
		if (Mark == RAND_INN || Mark == RAND_UMG || Mark == BERUE_INN)
			pML1->ModMark1 (0, Mark);
	}
}

// Bei den Punkten der Vektoren pML1 bzw. pML2, die am Rand eines �berlappungs-
// bereiches liegen, wird die allgemeine Markierung INNERHALB in RAND_INN 
// ("Zuf�hrung" kommt aus dem Inneren der Fl�chenkontur pML2) bzw. RAND_UMG 
// ("Zuf�hrung" kommt aus der Umgebung von pML2) ge�ndert.
// F�r Punkte mit einer Randpunkt- bzw. Innenber�hrung ohne Seitenwechsel wird 
// die allgemeine Markierung BERUEHR in BERUE_INN bzw. BERUE_UMG ge�ndert.
// OT == OT_FLAECHE bzw. OT_KANTE, wenn pML1 aus einer Fl�chenkontur bzw. einer 
// echten Kante gebildet wurde; pML2 mu� immer aus einer Fl�chenkontur gebildet 
// worden sein
inline void 
MarkierungModify2 (WMMarkLine *pML1, WMMarkLine *pML2)
{
	_ASSERTE(pML1 != 0);
	_ASSERTE(pML2 != 0);
	if (!pML1 || !pML2) return;

long ii = 0;		// Laufindex des Vektors pML2[]
WMMar1 Mark, newM;	// Markierungen
long lVekL1 = pML1->ADP();
bool bKont = false;	// Mittelpunkt der bez. i vorhergehenden Strecke (pML1[i], pML1[i-1])
					// liegt auf pML2 (true)
long lVekL2;
int iKInd1 = pML1->GetKInd();	// Konturindex von pML1 (wurde pML1 aus einer echten Kante
								//  gebildet, gilt iKInd1 == -1)

	if (iKInd1 >= 0) {	
	// pML1 ist aus einer Fl�chenkontur gebildet worden
		lVekL2 = pML2->ADP();

	// f�r den Fall, da� �berlappungsbereich von hinten bis an das "KonturSchlo�" 
	// heran bzw. �ber dieses hinaus reicht
		if (INNERHALB == pML1->GetMk1 (0) &&
			KONTUR == pML2->Position (pML1, 0, true, MOVEDIR_DOWN))		// 03.03.99
		{
			bKont = true;
		}
	}

	for (long i = 0; i < lVekL1-1; i++) {
	bool bMody = false;	// in pML1 wurde Markierung modifiziert (true)

		Mark = pML1->GetMk1 (i);
		if (INNERHALB == Mark)
			MarkINNERHALB (pML1, pML2, iKInd1, lVekL1, i, bKont, Mark, newM, bMody);

		if (BERUEHR == Mark)
			MarkBERUEHR (pML1, pML2, lVekL1, i, newM, bMody);

	// wenn pML1 eine Fl�che ist, dann die gleiche Modifizierung der Markierungen in pML2
		if (bMody && iKInd1 >= 0) {
			ii = pML1->GetRefInd (i);
			_ASSERTE(ii >= 0);
			pML2->ModMark1 (ii, newM);
		}
	} // for

// Behandlung des letzten St�tzpunktes
	if (iKInd1 >= 0) {
	// pML1 ist aus einer Fl�chenkontur gebildet worden

	// "Schl�sser" der beiden Vektoren modifizieren
		Mark = pML1->GetMk1 (0);
		if (Mark == RAND_INN || Mark == RAND_UMG || Mark == BERUE_INN || Mark == BERUE_UMG)
			pML1->ModMark1 (lVekL1-1, Mark);
		else {
			Mark = pML1->GetMk1 (lVekL1-1);
			if (Mark == RAND_INN || Mark == RAND_UMG || Mark == BERUE_INN || Mark == BERUE_UMG)
				pML1->ModMark1 (0, Mark);
		}

		Mark = pML2->GetMk1 (0);
		if (Mark == RAND_INN || Mark == RAND_UMG || Mark == BERUE_INN || Mark == BERUE_UMG)
			pML2->ModMark1 (lVekL2-1, Mark);
		else {
			Mark = pML2->GetMk1 (lVekL2-1);
			if (Mark == RAND_INN || Mark == RAND_UMG || Mark == BERUE_INN || Mark == BERUE_UMG)
				pML2->ModMark1 (0, Mark);
		}
	}
	else {
	// pML1 ist aus einer echten Kante gebildet worden
		Mark = pML1->GetMk1 (lVekL1-1);
		if (Mark == BERUEHR) {
		// Test, ob der Mittelpunkt der letzten Strecke (pML1[lVekL1-2], pML1[lVekL1-1])
		// innerhalb oder au�erhalb von pML2 liegt
		WMPosit posLage = pML2->Position (pML1, lVekL1-2);

			if (INNERH == posLage) 
				newM = BERUE_INN;		// "Zuf�hrung" aus Inneren
			else 
				newM = BERUE_UMG;		//  bzw. aus Umgebung von pML2
			pML1->ModMark1 (i, newM);
		}
	}
} 

// Hilfsroutine f�r MarkierungModify2() f�r Mark == INNERHALB
// pML2 wird in dieser Routine NICHT modifiziert, h�chstens pML1
inline bool 
MarkINNERHALB (WMMarkLine *pML1, WMMarkLine *pML2, int iKInd1, long lVekL1,
	long i, bool& bKont, WMMar1 &Mark, WMMar1 &newM, bool& bMody)
{
// Test, ob der Mittelpunkt der bez. i nachfolgenden Strecke (pML1[i], pML1[i+1]) 
// innerhalb von, au�erhalb von oder auf pML2 liegt; dabei darf bei 
// pML1->GetMk1 (i+1) != INNERHALB weder posLage == INNERH noch 
// posLage == AUSSERH eintreten
bool bCont = (INNERHALB == pML1->GetMk1 (i+1));		// es gilt i < lVekL1 - 1
WMPosit posLage = pML2->Position (pML1, i, bCont);

	switch (posLage) {
	case INNERH:
	case AUSSERH:
	// den Fall, da� der Anfangspunkt einer offenen Kante mit RAND_INN bzw. 
	// RAND_UMG markiert werden m��te, kann es nicht geben
		if (0 == i && !pML1->IsClosed())	// 15.04.99
		{
			_ASSERTE(i > 0 || pML1->IsClosed());
			return false;
		}

	// wenn der Mittelpunkt der Strecke (pML1[i], pML1[i+1]) innerhalb oder 
	// au�erhalb von pML2 liegt, dann mu� die Strecke (pML1[i-1], pML1[i]) AUF 
	// pML2 liegen (bKont == true), da pML1[i] mit INNERHALB markiert ist
		if (bKont) {
			if (INNERH == posLage) 
				newM = RAND_INN;	// "Zuf�hrung" aus dem Inneren bzw.
			else 
				newM = RAND_UMG;	//  der Umgebung von pML2
			pML1->ModMark1 (i, newM);
			bKont = false;
		}
		else {
		// (posLage == INNERH oder posLage == AUSSERH) und bKont == false 
		// widerspricht sich mit Mark == INNERHALB, kann aber entstanden sein, 
		// wenn in einen �berlappungsbereich, dessen Randpunkte schon mit 
		// INNERHALB markiert worden waren, nachtr�glich noch ein Punkt 
		// eingef�gt wurde; in diesem Fall ist newM = SCHNITT oder 
		// Mark = BERUEHR zu setzen (29.07.98)

		// Mittelpunkte der bez. i vor- bzw. nachfolgenden Strecke liegen beide
		// entweder au�erhalb oder beide innerhalb von pML2
			if (posLage == pML2->Position (pML1, i, true, MOVEDIR_DOWN))	// 03.03.99
				Mark = BERUEHR;
			else {
			// beide Mittelpunkte liegen auf verschiedenen "Seiten" von pML2
				newM = SCHNITT;
				pML1->ModMark1 (i, newM);
			}
		}
		bMody = true;
		break;

	case KONTUR:
		if (! bKont &&
			// mit nachfolgender Bedingung wird ausgeschlossen, da� bei einer 
			// echten Kante die Strecke VOR dem Anfangspunkt untersucht wird
			(i > 0 || iKInd1 >= 0))
		{
		// Test, ob der Mittelpunkt der bez. i vorhergehenden Strecke
			posLage = pML2->Position (pML1, i, false, MOVEDIR_DOWN);	// 03.03.99
			if (INNERH == posLage) 
				newM = RAND_INN;
			else 
				newM = RAND_UMG;
			pML1->ModMark1 (i, newM);
			bMody = true;
		}
		bKont = true;
		break;

	case OFFEN:
		_ASSERTE(posLage != OFFEN);
		return false;
	} // switch
	return true;
} 

// Hilfsroutine f�r MarkierungModify2() f�r Mark == BERUEHR
// pML2 wird in dieser Routine NICHT modifiziert, h�chstens pML1
inline bool 
MarkBERUEHR (WMMarkLine *pML1, WMMarkLine *pML2, long lVekL1, long i, 
	WMMar1& newM, bool& bMody)
{
// Test, ob der Mittelpunkt der bez. i nachfolgenden Strecke (pML1[i], pML1[i+1]) 
// innerhalb oder au�erhalb von pML2 liegt
WMPosit posLage = pML2->Position (pML1, i, false);

	if (INNERH == posLage) 
		newM = BERUE_INN;	// "Zuf�hrung" aus Inneren
	else 
		newM = BERUE_UMG;	//  bzw. aus Umgebung von pML2
	pML1->ModMark1 (i, newM);
	bMody = true;
	return true;
} 

// Wenn der Anfangs- bzw. Endpunkt der pML2-Kante innerhalb der Fl�chenkontur 
// pKont liegt, dann hat der erste bzw. letzte Schnittpunkt (oder Endpunkt eines 
// �berlappungsbereiches oder Ber�hrungspunkt) f�r die Zerlegung von pML1-Fl�che 
// keine Bedeutung. Deren Markierung wird wie folgt modifiziert:
// - bei Schnittpunkt: zur�cksetzen auf NORMAL
// - bei Endpunkt eines �berlappungsbereiches: zur�cksetzen auf INNERHALB
// - bei Ber�hrungspunkt: Markierung auf BERUE_ER bzw. BERUE_LE setzen
template <typename KoOrdT>
inline void 
SpezMarkierungModify (WMKante<KoOrdT> const *pKont, WMMarkLine *pML1, 
	WMMarkLine* pML2)
{
	_ASSERTE(pKont != 0);
	_ASSERTE(pML1 != 0);
	_ASSERTE(pML2 != 0);
	if (!pKont || !pML1 || !pML2) return;

long lVekL1 = pML1->ADP();
long lVekL2 = pML2->ADP();
bool bErstIn = false;	// erster pML2-Punkt liegt innerhalb von pKont
bool bLetzIn = false;	// letzter pML2-Punkt liegt innerhalb von pKont

	if (INNERH == pKont->Position_real (pML2->x(0), pML2->y(0)))
		bErstIn = true;
	if (INNERH == pKont->Position_real (pML2->x(lVekL2-1), pML2->y(lVekL2-1)))
		bLetzIn = true;
	if (!bErstIn && !bLetzIn)
		return;		// weder erster noch letzter pML2-Punkt innerhalb von pKont

long i = 0;		// Laufindex des Vektors pML1
long ii;		// Laufindex des Vektors pML2
WMMar1 ma, newM;	// Markierungen

	if (bErstIn) {
		for (ii = 0; ii < lVekL2; ii++)
		{
			ma = pML2->GetMk1 (ii);
			if (ma == SCHNITT || ma == RAND_INN || ma == BERUE_INN) 
				break;
		}
		if (ii < lVekL2) {
		// einen der genannten Punkte gefunden
			if (ma == SCHNITT)
				newM = NORMAL;
			else if (ma == RAND_INN)
				newM = INNERHALB;
			else	// ma == BERUE_INN
				newM = BERUE_ER;
			pML2->ModMark1 (ii, newM);

		// die gleiche Modifizierung der Markierungen in pML1
			i = pML2->GetRefInd(ii);
			_ASSERTE(i >= 0);
			pML1->ModMark1 (i, newM);
			if (0 == i)		// evtl. Schlo� modifizieren
				pML1->ModMark1 (lVekL1-1, newM);
		}
	}
	
	if (bLetzIn) {
		for (ii = lVekL2-1; ii >= 0; ii--)
		{
			ma = pML2->GetMk1 (ii);
			if (ma == SCHNITT || ma == RAND_INN || ma == BERUE_INN) 
				break;
		}

		if (ii >= 0) {
		// einen der genannten Punkte gefunden
			if (ma == SCHNITT)
				newM = NORMAL;
			else if (ma == RAND_INN)
				newM = INNERHALB;
			else	// ma == BERUE_INN
				newM = BERUE_LE;
			pML2->ModMark1 (ii, newM);

		// die gleiche Modifizierung der Markierungen in pML1
			i = pML2->GetRefInd(ii);
			_ASSERTE(i >= 0);
			pML1->ModMark1 (i, newM);
			if (0 == i)		// evtl. Schlo� modifizieren
				pML1->ModMark1 (lVekL1-1, newM);
		}
	}
} 

// Position eines Vektors pML aus markierten St�tzpunkten bez. einer Fl�chenkontur pKont;
// pML-Vektor liegt mit folgenden return-Wert
//   INNERH   vollst�ndig innerhalb von pKont
//   INNERHB  innerhalb von pKont mit Ber�hrung von pKont
//   AUSSERH  vollst�ndig au�erhalb von pKont
//   AUSSERHB au�erhalb von pKont mit Ber�hrung von pKont
//   INNAUSS  teilweise innerhalb, teilweise au�erhalb von pKont
//   KONTUR   vollst�ndig auf pKont
//   UMSCHL   vollst�ndig au�erhalb von pKont, wobei pKont v�llig umschlossen wird
//            (nur f�r geschlossenen pML-Vektor m�glich)
//   UMSCHLB  au�erhalb von pKont mit Ber�hrung von pKont, wobei pKont v�llig umschlossen wird
//            (nur f�r geschlossenen pML-Vektor m�glich)
//   UNKLAR   falscher Parameter
// In bOverlap wird angezeigt, ob ein �berlappungsbereich vorliegt (true) oder nicht (false),
// in iTouchOut wird noch die Anzahl der Ber�hrungspunkte mit "Zuf�hrung" aus der Umgebung von
// pKont zur�ckgegeben.
template <typename KoOrdT>
inline WMPosit 
KantenPosit (WMKante <KoOrdT> *pKont, WMMarkLine *pML, bool& bOverlap, 
	int& iTouchOut)
{
	_ASSERTE(pKont != 0);
	_ASSERTE(pML != 0);
	if (!pKont || !pML) 
		return UNKLAR;
	
long lVekL = pML->ADP();
bool bSchnittPt = false;// (noch) keine Schnittpunkte gefunden
bool bRichtInn = false;	// (noch) keine Endpunkte von �berlappungsbereichen mit
						// Richtungsmarkierung RAND_INN gefunden
bool bRichtUmg = false;	// (noch) keine Endpunkte von �berlappungsbereichen mit
						// Richtungsmarkierung RAND_UMG gefunden
bool bRand = false;		// (noch) keine Punkte aus dem Inneren eines �berlappungsbereiches
						// gefunden
int iBerInn = 0;		// Anzahl der Ber�hrungspunkte mit Richtungsmarkierung BERUE_INN
bool bGeschl = pML->IsClosed();	// Kante geschlossen (true) oder offen (false)
WMMar1 Mar;				// Markierung des akt. Punktes
long lLastIndex = lVekL;	// letzter Index f�r nachfolgende for-Schleife

	if (bGeschl) lLastIndex = lVekL - 1;	// bei geschlossener Kontur ist der letzte
											//  St�tzpunkt nicht mehr zu pr�fen

	iTouchOut = 0;	// Anzahl der Ber�hrungspunkte mit Richtungsmarkierung BERUE_UMG
	for (long i = 0; i < lLastIndex; i++) {
		Mar = pML->GetMk1 (i);	// Markierung des akt. Punktes

		if (Mar == INNERHALB) {
		// innerer Punkt einer �berlappung
			bRand = true; 
			continue;
		}
		if (Mar == RAND_INN) {
		// Endpunkt einer �berlappung mit "Zuf�hrung" aus dem Inneren von pKont
			bRichtInn = true; 
			continue;
		}
		if (Mar == RAND_UMG) {
		// Endpunkt einer �berlappung mit "Zuf�hrung" aus der Umgebung von pKont
			bRichtUmg = true; 
			continue;
		}
		if (Mar == BERUE_INN) {
		// Ber�hrungspunkt mit "Zuf�hrung" aus dem Inneren von pKont
			iBerInn++; 
			continue;
		}
		if (Mar == BERUE_UMG) {		
		// Ber�hrungspunkt mit "Zuf�hrung" aus der Umgebung von pKont
			iTouchOut++; 
			continue;
		}
		if (Mar == SCHNITT)			// Schnittpunkt
			bSchnittPt = true;
	}
	                        
// Auswertung der Markierungssituation
// pML-Vektor und pKon haben einen/keinen gemeinsamen Bereich (bOverlap == true/false)
	bOverlap = (bRand || bRichtInn || bRichtUmg) ? true : false;

	if ((bRichtInn && bRichtUmg) || bSchnittPt)	// teilweise innerhalb, teilweise au�erhalb von
		return INNAUSS;							// pKont

	if (!bRichtInn && !bRichtUmg && bRand)	// pML-Objekt liegt vollst�ndig auf pKont
		return KONTUR;

	if (bRichtInn || iBerInn > 0)	// pML-Objekt innerhalb von pKont mit Randber�hrung
		return INNERHB;

	if (bRichtUmg || iTouchOut > 0)	{
	// pML-Objekt au�erhalb von pKont mit Randber�hrung
		if (! bGeschl)				// pML-Objekt offen
			return AUSSERHB;

	// pML-Objekt geschlossen
	// Es ist zu kl�ren, ob das pML-Objekt pKont umschlie�t oder "daneben" liegt. 
	// Dazu wird ein Punkt (lInX, lInY) gesucht, der garantiert innerhalb von 
	// pKont liegt. Liegt (lInX, lInY) dann auch innerhalb des geschlossenen 
	// pML-Objektes, so bedeutet dies, da� pKont vollst�ndig vom pML-Objekt 
	// umschlossen wird. Anderenfalls liegt pKont "neben" dem pML-Objekt.
	double dInX, dInY;
	
		pKont->InneliegenderPunkt (dInX, dInY);

	WMPosit posLage = pML->Position_real (dInX, dInY);

		if (INNERH == posLage)
			return UMSCHLB;

		_ASSERTE(posLage != KONTUR);
		_ASSERTE(posLage != OFFEN);
		_ASSERTE(posLage != UNKLAR);

		return AUSSERHB;	// pKont au�erhalb des pML-Objektes mit Ber�hrung des pML-Randes
	}

// Es bleibt noch der Fall (!bRichtInn && !bRichtUmg && !bRand && iBerInn == 0 &&
// iTouchOut == 0) �brig, d.h. pML vollst�ndig innerhalb bzw. au�erhalb von pKont 
// ohne Ber�hrung
	if (INNERH == pKont->Position_real (pML->x(0), pML->y(0)))	// Anfangspunkt und damit
		return INNERH;						//  gesamtes pML-Objekt vollst�ndig innerhalb pKont
		
// pML-Objekt vollst�ndig au�erhalb von pKont
	if (! bGeschl)        // pML-Objekt offen
		return AUSSERH;
		
// pML-Objekt geschlossen und vollst�ndig au�erhalb pKont
double dInX, dInY;

	pKont->InneliegenderPunkt (dInX, dInY);

WMPosit posLage = pML->Position_real (dInX, dInY);

	if (INNERH == posLage)	// (dInX, dInY) und damit alle pKont-Punkte
		return UMSCHL;		//  liegen innerhalb des pML-Objektes

	_ASSERTE(posLage != KONTUR);
	_ASSERTE(posLage != OFFEN);
	_ASSERTE(posLage != UNKLAR);

	return AUSSERH;		// pKont au�erhalb des pML-Objektes
} 

// Test, ob pML-Kante durch pSKt-EKante zerlegt wird (true), sonst false;
// Eine Zerlegung erfolgt dann, wenn mindestens 1 echter Schnittpunkt oder 2 
// �berlappungspunkte vorliegen, aber nicht alles �berlappungspunkte sind
inline bool 
KanteZerlegt (WMMarkLine* pML)
{
	_ASSERTE(pML != 0);
	if (!pML) return false;
	
long lVekL = pML->ADP();
int iAnz = 0;				// Anzahl der �berlappungspunkte
WMMar1 Mar;					// Markierung des akt. Punktes
bool bNoOverlap = false;	// mindestens 1 Punkt, der kein �berlappungspunkt ist (true)

	for (long i = 0; i < lVekL; i++) {
		Mar = pML->GetMk1 (i);		// Markierung des akt. Punktes

		if (SCHNITT == Mar)			// echter Schnittpunkt
			return true;
		if (BERUEHR == Mar &&		// Rand- oder Innenber�hrung
			(i > 0 && i < lVekL-1))	//  jedoch nicht am Anfang/Ende der Kante
			return true;

		if (INNERHALB == Mar) {
		// �berlappungspunkt
			iAnz++;
			if (iAnz >= 2 && bNoOverlap)
				return true;
		} else 
			bNoOverlap = true;
	}
	return false;
} 

// Test, ob pML-Fl�che durch pSKt-EKante zerlegt wird (true), sonst false;
// Eine Zerlegung erfolgt dann, wenn die Anzahl aus
// - echten Schnittpunkten,
// - Punkten, bei den die pSKt-EKante die pML-Fl�che innen ber�hrt, und
// - Endpunkten von �berlappungsbereichen, bei denen die Zuf�hrung aus dem Inneren der
//   pML-Fl�che kommt,
// mindestens 2 betr�gt.
template <typename KoOrdT>
inline bool 
FlaecheZerlegt (WMKante<KoOrdT> *pSKt, WMMarkLine* pML)
{
	_ASSERTE(pSKt != 0);
	_ASSERTE(pML != 0);

	if (!pSKt || !pML) return false;
	
long lVekL = pML->ADP();
int iAnz = 0;	// Anzahl der Schnitt-, Ber�hrungs- bzw. Endpunkte
WMMar1 Mar;		// Markierung des akt. Punktes

	for (long i = 0; i < lVekL; i++) {
		Mar = pML->GetMk1 (i);	// Markierung des akt. Punktes

		if (Mar == SCHNITT ||	// echter Schnittpunkt
			Mar == BERUE_INN ||	// Punkt, bei den die pSKt-EKante die pML-Fl�che innen ber�hrt
			Mar == BERUE_ER ||	// erster Punkt, bei den die pSKt-EKante die pML-Fl�che innen
								// ber�hrt und pSKt-Anfangspunkt liegt innerhalb der pML-Fl�che
			Mar == BERUE_LE ||	// letzter Punkt, bei den die pSKt-EKante die pML-Fl�che innen
								// ber�hrt und pSKt-Endpunkt liegt innerhalb der pML-Fl�che
			Mar == RAND_INN)	// Endpunkt von �berlappungsbereich, bei dem die Zuf�hrung
								// aus dem Inneren der pML-Fl�che kommt
			iAnz++;
			if (iAnz >= 2)
				return true;
	}
	return false;
} 

///////////////////////////////////////////////////////////////////////////////
// MarkLinie
inline 
WMMarkLine::WMMarkLine (long lLen, int iKInd, bool bClosed) :
	m_lSize(0), m_pML(NULL)
{
	_ASSERTE(lLen > 0);

	m_pML = new WMMarkVertex [lLen];
	m_lSize = lLen;
	m_iKInd = iKInd;
	m_bClosed = bClosed;
} 

inline 
WMMarkLine::~WMMarkLine()
{
	DELETE_OBJ(m_pML);
	m_lSize = 0;
}

// MemberFunktionen
inline WMMarkVertex *
WMMarkLine::Vektor() 
{ 
	return m_pML; 
}

// Anzahl der DoublePair-Punkte
inline long 
WMMarkLine::ADP() const 
{ 
	return m_lSize; 
}	

inline int 
WMMarkLine::GetKInd() const 
{ 
	return m_iKInd; 
}

inline bool 
WMMarkLine::IsClosed() const 
{ 
	return m_bClosed; 
}

inline void 
WMMarkLine::SetX (long lInd, double x) 
{ 
	m_pML[lInd].SetX (x); 
}

inline void 
WMMarkLine::SetY (long lInd, double y) 
{ 
	m_pML[lInd].SetY (y); 
}

inline void 
WMMarkLine::ModMark1 (long lInd, WMMar1 Mark1) 
{ 
	m_pML[lInd].ModMk1 (Mark1); 
}

inline void 
WMMarkLine::ModMark2 (long lInd, WMMar2 Mark2) 
{ 
	m_pML[lInd].ModMk2 (Mark2); 
}

inline WMMarkVertex & 
WMMarkLine::Vt (long lInd) const 
{ 
	return m_pML[lInd]; 
}

inline DoublePair 
WMMarkLine::DP (long lInd) const 
{ 
	return m_pML[lInd].Vtx(); 
}

template <typename KoOrdT>
inline WMPunkt<KoOrdT>
WMMarkLine::SP (long lInd) const
{ 
	return WMPunkt<KoOrdT>(DtoL(m_pML[lInd].X()), DtoL(m_pML[lInd].Y())); 
}

inline double 
WMMarkLine::x (long lInd) const 
{ 
	return m_pML[lInd].X(); 
}

inline double 
WMMarkLine::y (long lInd) const 
{ 
	return m_pML[lInd].Y(); 
}

inline WMMar1 
WMMarkLine::GetMk1 (long lInd) const 
{ 
	return m_pML[lInd].Mark1(); 
}

inline WMMar2 
WMMarkLine::GetMk2 (long lInd) const 
{ 
	return m_pML[lInd].Mark2(); 
}

inline long 
WMMarkLine::GetRefInd (long lInd) const 
{ 
	return m_pML[lInd].GetRInd(); 
}

// Referenzindex des lInd-ten this-Punktes auf lRInd setzen
inline void 
WMMarkLine::RefIndexSetzen (long lInd, long lRInd)
{
	_ASSERTE(lInd >= 0);
	_ASSERTE(lInd < m_lSize);
	_ASSERTE(lRInd >= 0);

	if ((0 == lInd || lInd == m_lSize-1) &&	// Referenzindex am Anfangs/Endpunkt
		m_bClosed)							//  einer geschlossenen Kontur
	{										//  in �bereinstimmung bringen
		m_pML[0].SetRInd (lRInd);			// ein Befehl ist umsonst, aber so spare
		m_pML[m_lSize-1].SetRInd (lRInd);	//  ich mir eine Abfrage
	}
	else
		m_pML[lInd].SetRInd (lRInd);
}

// die Referenzindizes aller this-Punkte, die gr��er/gleich lInd sind, 
// inkrementieren
inline void 
WMMarkLine::RefIndexInkrementieren (long lInd)
{
	for (long i = 0; i < m_lSize; i++)
		if (m_pML[i].GetRInd() >= lInd)
			m_pML[i].IncRInd();
}

// Referenzindizes im this- und pML2-MarkLine modifizieren;
// bAdd1 und lRInd1 geh�ren zu this-MarkLine, bAdd2 und lRInd2 zu pML2-MarkLine
// (lRInd1 und lRInd2 werden referenziert, da sie ver�ndert werden k�nnen)
inline void 
WMMarkLine::RefIndexModifizieren (WMMarkLine* pML2, bool bAdd1, bool bAdd2, 
	long& lRInd1, long& lRInd2)
{
	_ASSERTE(pML2 != 0);

	if (bAdd2)
		RefIndexInkrementieren (lRInd2);	// mu� vor RefIndexSetzen() kommen

	if (lRInd2 == pML2->ADP()-1 &&	// lRInd2 ist der letzte pML2-Index
		pML2->IsClosed())			//  einer geschlossenen Kante
		lRInd2 = 0;
	RefIndexSetzen (lRInd1, lRInd2);

	if (bAdd1)
		pML2->RefIndexInkrementieren (lRInd1);

	if (lRInd1 == m_lSize-1 &&		// lRInd1 ist der letzte pML1-Index
		IsClosed())					//  einer geschlossenen Kante
		lRInd1 = 0;
	pML2->RefIndexSetzen (lRInd2, lRInd1);
}

// Enthaltensein eines real-Punktes (x,y) in der Fl�che, die durch einen 
// geschlossenen MarkLine-Vektor gebildet wird; bez. der Lage AUF dem this-
// Vektor wird mit einer dEps-Genauigkeit gearbeitet; return-Wert ist
//   INNERH   Punkt liegt innerhalb der Fl�che
//   KONTUR   Punkt liegt mit dEps-Genauigkeit AUF Fl�chenrand
//   AUSSERH  Punkt liegt au�erhalb der Fl�che
//   OFFEN    Fl�chenrand nicht geschlossen
//   UNKLAR   irgend etwas stimmt hier nicht
// Der real-Punkt (x,y) ist der Anfangspunkt einer waagrechten Testlinie, deren 
// Endpunkt "unendlich" weit rechts liegt.
inline WMPosit 
WMMarkLine::Position_real (double x, double y, double dEps)
{
	_ASSERTE(m_lSize >= 2);

	if (!m_bClosed)		// this-Vektor nicht geschlossen
		return OFFEN;

long AnzSchn = 0;	// Z�hler f�r echte Schnitte der Testlinie mit this-Vektor
long j = m_lSize-2;	// Index des letzten Konturpunktes, von dem bekannt ist, da� er nicht auf
					// der Testlinie liegt

	while (0 == TurnDirection (x, y, std::numeric_limits<double>::max(),
		y, m_pML[j].X(), m_pML[j].Y()))
	{
		j--;
		if (j < 0)
			return OFFEN;	// entartete Fl�che, d.h. alle Punkte liegen auf einer Geraden,
							// die mit der Tr�gergeraden der TLinie identsch ist
	}

int r1, r2, r3, r4;	// Hilfswerte f�r Bewegungsrichtung
double dAbst;		// absoluter Abstand von Punkt Pkt zur Strecke Str

	for (long i = 0; i < m_lSize-1; i++) {
	// Test, ob Punkt (x,y) mit dEps-Genauigkeit AUF this-Vektor liegt
		AbstandPktStrecke (DoublePair(x,y), m_pML[i].Vtx(), m_pML[i+1].Vtx(), dAbst);
		if (dAbst < 0)
			return UNKLAR;

		if (dAbst <= dEps)	// beim Runden double -> KoOrd auftreten (20.10.98)
			return KONTUR;	// Punkt (x,y) liegt mit dEps-Genauigkeit AUF this-Vektor

	// Im if-Zweig der nachfolgenden Anweisung wird der Fall behandelt, da� der St�tzpunkt
	// m_pML[i] nicht auf der waagrechten Testlinie liegt.
	// Liegt m_pML[i] auf der Testlinie (else-Zweig), wird m_pML[i] i.a. ignoriert.
	// Liegt jedoch der zu testende Punkt (x,y) im Dreieck m_pML[i-1],m_pML[i],m_pML[i+1],
	// ergibt sich durch das Weglassen von m_pML[i] eine Fehlinterpretation. Deshalb ist
	// dieser Fall gesondert abzutesten.
		if (TurnDirection (x, y, LONG_MAX, y, m_pML[i].X(), m_pML[i].Y()) != 0)
		{
			r1 = TurnDirection (m_pML[i].X(), m_pML[i].Y(), m_pML[j].X(), 
				m_pML[j].Y(), x, y);
			r2 = TurnDirection (m_pML[i].X(), m_pML[i].Y(), m_pML[j].X(), 
				m_pML[j].Y(), LONG_MAX, y);
			r3 = TurnDirection (x, y, LONG_MAX, y, m_pML[i].X(), m_pML[i].Y());
			r4 = TurnDirection (x, y, LONG_MAX, y, m_pML[j].X(), m_pML[j].Y());
			j = i;

		// Z�hler inkrementieren, wenn echter Schnitt zwischen Strecke
		// (m_pML[i], m_pML[j]) und Teststrecke vorliegt
			if ((r1 * r2 <= 0) && (r3 * r4 <= 0))
				AnzSchn++;
		}
		else {	
		// m_pML[i] liegt auf der Teststrecke
		long iv = i - 1;

			if (0 == i) 
				iv = m_lSize-2;
			
		// liegt (x,y) mit einer dEps-Genauigkeit AUF der Strecke m_pML[i-1],m_pML[i], ist
		// alles klar
			AbstandPktStrecke (DoublePair(x,y), m_pML[iv].Vtx(), m_pML[i].Vtx(), dAbst);
			if (dAbst <= dEps)	// beim Runden double -> KoOrd auftreten (20.10.98)
				return KONTUR;

		// ansonsten wird getestet, ob (x,y) IM Dreieck m_pML[i-1], m_pML[i], m_pML[i+1]
		// liegt; wenn ja, wird �berpr�ft, ob die Ecke bei m_pML[i] konvex oder konkav ist
			r1 = TurnDirection (m_pML[iv].X(), m_pML[iv].Y(), m_pML[i].X(), 
				m_pML[i].Y(), x, y);
			r2 = TurnDirection (m_pML[i].X(), m_pML[i].Y(), m_pML[i+1].X(), 
				m_pML[i+1].Y(), x, y);
			r3 = TurnDirection (m_pML[i+1].X(), m_pML[i+1].Y(), m_pML[iv].X(), 
				m_pML[iv].Y(), x, y);
			if (r1 >= 0 && r2 >= 0 && r3 >= 0)	// konvexe Ecke der this-Fl�che:
				return INNERH;					//  Punkt liegt innerhalb
			if (r1 <= 0 && r2 <= 0 && r3 <= 0)	// konkave Ecke der this-Fl�che:
				return AUSSERH;					//  Punkt liegt au�erhalb
		// (x,y) liegt nicht im Dreieck m_pML[i-1], m_pML[i], m_pML[i+1]
		}
	}
	if (AnzSchn & 1)	// ungerader Z�hler bedeutet Enthaltensein
		return INNERH;
	return AUSSERH;
} 

// Pr�fen, wo der Mittelpunkt der von lInd nachfolgenden (MD == MOVEDIR_UP) bzw. 
// vorhergehenden (MD == MOVEDIR_DOWN) Strecke (pML[lInd], pML[lInd1]) bez. des 
// this-MarkLine liegt;
// HINWEIS: in GemeinsamePunkte() wird mit den urspr�nglichen St�tzpunkten 
//			gearbeitet, hier u. U. auch mit den eingef�gten Punkten, wodurch 
//			(wegen der Rundung double -> KoOrd) nicht die gleichen Bedingungen 
//			bestehen (deswegen Einf�hrung des Parameters bCont)
// in bCont wird angegeben, ob als return-Wert KONTUR kommen d�rfte (true) oder 
// nicht (false)
inline WMPosit 
WMMarkLine::Position (WMMarkLine* pML, long lInd, bool bCont, WMMoveDir MD)
{
	_ASSERTE(pML != 0);
	if (!pML) return UNKLAR;

long lLaeng = pML->ADP();

	_ASSERTE(lInd >= 0);
	_ASSERTE(lInd < lLaeng);

long lInd1 = lInd;	// Index des von pML->DP(lInd) benachbarten Punktes
long lCount = 0;	// Z�hler f�r Durchl�ufe der do-while-Schleife

	do {	
	// do-while-Schleife wegen evtl. durch Rundung entstandener DoppelPunkte
		if (pML->GetKInd() < 0)	{
		// Kante
			if (MOVEDIR_UP == MD) {
			// Arbeit mit dem auf lInd folgenden Index
				if (lInd < lLaeng-1) 
					lInd1++;		// = lInd + 1;
				else 
					return UNKLAR;	// lInd ist schon der lezte Index der pML-Kante
			}
			else {
			// Arbeit mit dem zu lInd vorangehenden Index
				if (lInd > 0) 
					lInd1--;		// = lInd - 1;
				else 
					return UNKLAR;	// lInd ist schon der erste Index der pML-Kante
			}
		}
		else {
		// OT == OT_FLAECHE
			if (MOVEDIR_UP == MD)
				(lInd < lLaeng-2) ? (lInd1++) : (lInd1 = 0);	// = lInd + 1;	(03.11.98)
			else
				(lInd > 0) ? (lInd1--) : (lInd1 = lLaeng-2);	// = lInd - 1;
		}
		lCount++;
	} while ((pML->x(lInd) == pML->x(lInd1) &&	// Ausschlu� von DoppelPunkten, die durch Rundung
			pML->y(lInd) == pML->y(lInd1)) &&	// von double -> KoOrd entstehen k�nnen
			lCount < lLaeng);

	if (lCount == lLaeng) {
		_ASSERTE(lCount < lLaeng);
		return UNKLAR;		// nur DoppelPunkte !?
	}

// 06.10.98
// Abwehrstrategie gegen Dreckeffekte, die durch Rundung von double -> KoOrd entstehen k�nnen
long lRI0 = pML->GetRefInd (lInd);
long lRI1 = pML->GetRefInd (lInd1);

	// lRI0 bzw. lRI1 k�nnen negativ (-1) sein, wenn es zum dem pML-Punkt keinen entsprechenden
	// this-Punkt gibt
	if (lRI0 >= 0 && lRI1 >= 0)	{
		_ASSERTE(lRI0 != lRI1);

	long lMinInd, lMaxInd;	// der kleinere bzw. gr��ere der beiden Indizes	lRI0 bzw. lRI1

		if (lRI0 < lRI1) {
			lMinInd = lRI0;
			lMaxInd = lRI1;
		}
		else {
			lMinInd = lRI1;
			lMaxInd = lRI0;
		}

		if (lMinInd == lMaxInd - 1 ||
			(m_bClosed && 0 == lMinInd && lMaxInd == m_lSize-2))
			return KONTUR;

	double dAbst;			// aktueller Abstand
	double dMaxAbst = -1.;	// gr��ter Abstand der this-Punkte zwischen lMinInd 
							// und lMaxInd von der Strecke pML->SP(lInd), 
							// pML->SP(lInd1)

		for (long j = lMinInd + 1; j < lMaxInd; j++)
		{
			LotStrecke (DP(j), pML->DP(lInd), pML->DP(lInd1), dAbst);
			if (dAbst > dMaxAbst) 
				dMaxAbst = dAbst;
		}

		if (dMaxAbst < dGlEps)	// hier NOCH nicht die Halbierung des eps-Parameters (03.03.99)
			return KONTUR;
	}

DoublePair DPT;

	DPT.X() = (pML->x(lInd) + pML->x(lInd1)) / 2.;
	DPT.Y() = (pML->y(lInd) + pML->y(lInd1)) / 2.;
	if (bCont)
		return Position_real (DPT.X(), DPT.Y(), dGlEps/2.);

// 03.03.99
// Als return-Wert MU� bei bCont == false INNERH oder AUSSERH ermittelt werden. 
// Tritt dies wegen der bekannten Dreckeffekte nicht ein, wird das benutzte 
// Epsilon ggf. so lange halbiert, bis eine Kl�rung bez. INNERH/AUSSERH f�llt.
double dEps = dGlEps;

	for (;;) {
	WMPosit posLage = Position_real (DPT.X(), DPT.Y(), dEps/2.);

		if (INNERH == posLage || AUSSERH == posLage)
			return posLage;

		if (KONTUR == posLage)
			dEps /= 2.;
		else {
			_ASSERTE(INNERH != posLage);
			_ASSERTE(AUSSERH != posLage);
			_ASSERTE(KONTUR != posLage);
			return posLage;
		}

		if (dEps < 1E-10) {
			_ASSERTE(dEps >= 1E-10);
			return UNKLAR;
		}
	}

	_ASSERTE(false);	// hierhin d�rfte keiner mehr kommen
	return UNKLAR;
} 

// Test, wie an dem BERUEH-Punkt (this-Vektor hat hier den Index lInd) weiter-
// zugehen ist; f�r MD/MD2 == MOVEDIR_UP ist die Punktefolge von this/pML mit 
// aufsteigendem Index, f�r MD/MD2 == MOVEDIR_DOWN mit absteigendem Index zu 
// durchlaufen; dabei ist der gr��te/kleinste (bMax = true/false) Winkel bez. 
// der Bezugsstrecke entscheidend; wenn vom this-Vektor zum pML-Vektor zu 
// wechseln ist, dann bWechsel = true, sonst false
inline bool 
WMMarkLine::EckeMitBeruehrung (WMMarkLine* pML, long lInd, WMMoveDir MD, 
	WMMoveDir MD2, bool bMax, bool& bWechsel)
{
	_ASSERTE(pML != 0);

	if (!pML) return false;

long lVL = pML->ADP();	// L�nge des pML-Vektors

	_ASSERTE(lInd >= 0);
	_ASSERTE(lInd < m_lSize);

	if (m_lSize < 3 || lVL < 3) {
		_ASSERTE(m_lSize >= 3 && lVL >= 3);
		return false;	// nicht gen�gend Punkte
	}

bool bGeschl1 = m_bClosed;

	if (!bGeschl1) {
		_ASSERTE(bGeschl1);
		return false;	// this-Vektor offen
	}

bool bGeschl2 = pML->IsClosed();

	if (!bGeschl2) {
		_ASSERTE(bGeschl2);
		return false;	// pML-Vektor offen
	}

long lIndv = lInd - 1;	// der bez. lInd vorhergehende bzw.
long lIndn = lInd + 1;	//  nachfolgende Index des this-Vektors

	if (lInd == 0) 
		lIndv = m_lSize - 2;
	if (lInd == m_lSize-1) 
		lIndn = 1;

// Index des pML-Punktes, der mit Punkt pML[lInd] �bereinstimmt
long lInd2 = GetRefInd(lInd);

	_ASSERTE(lInd2 >= 0);

long lInd2v = lInd2 - 1;	// der bez. lInd2 vorhergehende bzw.
long lInd2n = lInd2 + 1;	//  nachfolgende Index des pML-Vektors

	if (lInd2 == 0) 
		lInd2v = lVL - 2;
	if (lInd2 == lVL-1) 
		lInd2n = 1;

// von den 2 Strecken mit Winkel w1 bzw. w2 ist diejenige zu suchen, die den 
// gr��ten (bMax == true) bzw. kleinsten Winkel (bMax == false) mit der 
// Bezugsstrecke (mit Winkel w0) bildet; auf dieser ist nach dem BERUE-Punkt 
// weiter zu gehen
double w0, w1, w2;	// Quasiwinkel (w0: Winkel der Bezugsstrecke)

	if (MOVEDIR_UP == MD) {
		w0 = QuasiWinkel (m_pML[lInd].X(), m_pML[lInd].Y(), m_pML[lIndv].X(), m_pML[lIndv].Y());
		w1 = QuasiWinkel (m_pML[lInd].X(), m_pML[lInd].Y(), m_pML[lIndn].X(), m_pML[lIndn].Y());	
	}
	else {
		w0 = QuasiWinkel (m_pML[lInd].X(), m_pML[lInd].Y(), m_pML[lIndn].X(), m_pML[lIndn].Y());
		w1 = QuasiWinkel (m_pML[lInd].X(), m_pML[lInd].Y(), m_pML[lIndv].X(), m_pML[lIndv].Y());
	}

	if (MOVEDIR_UP == MD2)
		w2 = QuasiWinkel (pML->x(lInd2), pML->y(lInd2), pML->x(lInd2n), pML->y(lInd2n));
	else
		w2 = QuasiWinkel (pML->x(lInd2), pML->y(lInd2), pML->x(lInd2v), pML->y(lInd2v));

	if (w0 == w1) {
		_ASSERTE(w0 != w1);
		return false;	// kein Ber�hrungspunkt
	}
	if (w0 == w2) {
		_ASSERTE(w0 != w2);
		return false;	// kein Ber�hrungspunkt
	}
	if (w1 == w2) {
		_ASSERTE(w1 != w2);
		return false;	// kein Ber�hrungspunkt
	}

	if ((w0 < w1 && w0 < w2) ||	// w0 ist der kleinste Winkel
		(w0 > w1 && w0 > w2))	// w0 ist der gr��te Winkel, dann
	{
		if (bMax) {
			if (w1 < w2) 
				bWechsel = true;
			else 
				bWechsel = false;
		}
		else {
			if (w1 < w2) 
				bWechsel = false;	// w0 und w1 geh�ren zum gleichen Objekt
			else 
				bWechsel = true;	// w0 und w2 geh�ren zu dem jeweils anderen Objekt
		}
		return true;
	}

// w0 ist der mittlere der 3 Winkel, dann
	if (bMax) {
		if (w1 < w2) 
			bWechsel = false;
		else 
			bWechsel = true;
	}
	else {
		if (w1 < w2) 
			bWechsel = true;
		else 
			bWechsel = false;
	}
	return true;
} 

// Zerlegen von pML durch eine Kante in Teilkanten, die in CL eingetragen werden;
// return-Wert ist "true", wenn Teilkanten in CL eingetragen werden, sonst "false"
template <typename KoOrdT>
inline bool 
TeilKanten1 (WMMarkLine* pML, WMClipListe<KoOrdT> &CL)
{
	_ASSERTE(pML != 0);
	if (!pML) return false;

long lVekL = pML->ADP();
long l = 0;			// Index f�r pML-Punkte
long lAInd = l;		// Anfangsindex f�r den Teil der Kante, der aus pML �bernommen wird
WMMar1 mark1 = pML->GetMk1(l);
bool bClosed = pML->IsClosed();

// bei geschlossenen Kanten kann der Beginn einer Teilkante (SCHNITT-, BERUEHR- 
// oder RANDP-Punkt) vor dem Anfangs/Endpunkt der Kante liegen, deshalb so 
// einen Beginn suchen
	if (bClosed && SCHNITT != mark1 && RANDP != mark1) {
		l = lVekL - 1;
		do {
			l--;
			mark1 = pML->GetMk1(l);
		} while (SCHNITT != mark1 && RANDP != mark1 && l > 0);
		lAInd = l;
	}

long lAnfInd1 = lAInd;		// der Anfangspunkt der 1. Teilkante

// Aufbau der Teilkanten
	for (;;) {
		if (bClosed) {
			if (l < lVekL-2) 
				l++;
			else
				l = 0;
			if (l == lAnfInd1) 
				return true;
		}
		else {
			if (l == lVekL-1) 
				break;
			l++;
		}
		mark1 = pML->GetMk1(l);
	
	// wenn aktueller Punkt pML[l] Schnitt-, Ber�hrungs- oder Randpunkt eines
	// �berlappungsbereiches ist, dann aktuelle Teilkante schlie�en und neue 
	// Teilkante mit dem aktuellen pML[l] beginnen
		if ((SCHNITT == mark1 || RAND == mark1) &&
			lAInd != l)	// es wird mindestens noch ein zweiter Punkt angehangen			
		{
			if (labs(l - lAInd) == lVekL - 1)
				return true;	// die ungeteilte Kante nicht noch einmal erzeugen

		KoOrdT x = DtoL(pML->x(lAInd));		// Anfang einer Teilkante
		KoOrdT y = DtoL(pML->y(lAInd));
		WMKante<KoOrdT> GK(&x, &y, 1);

			GK.AddKonturTeil (pML, lAInd+1, l, -1);	// Teil der pML-Kante an pGK anh�ngen
			GK.AddClipObjekt (CL);
			lAInd = l;
		}
	}

// bei offenen Kanten kann es noch einen Rest geben
	_ASSERTE(!bClosed);

	if (lAInd != l) {
	KoOrdT x = DtoL(pML->x(lAInd));
	KoOrdT y = DtoL(pML->y(lAInd));
	WMKante<KoOrdT> GK(&x, &y, 1);

		GK.AddKonturTeil (pML, lAInd+1, l, -1);
		GK.AddClipObjekt (CL);
	}
	return true;
}

// Zerlegen von pML1-Kante durch pML2-Fl�chenkontur in Teilkanten, die in CL eingetragen
// werden; dabei wird der in ulLageAusw vorgegebene Lagewunsch mit ber�cksichtigt;
// return-Wert ist "true", wenn Teilkanten in CL eingetragen werden, sonst "false"
template <typename KoOrdT>
inline bool 
TeilKanten2 (WMMarkLine* pML1, WMMarkLine* pML2, unsigned long ulLageAusw, 
	WMClipListe<KoOrdT> &CL)
{
	_ASSERTE(pML1 != 0);
	_ASSERTE(pML2 != 0);

	if (!pML1 || !pML2) 
		return false;

bool bRet = false;	// return-Wert
long lVekL = pML1->ADP();
long i = 0;			// Index f�r pML1-Punkte
long lAInd = i;		// Anfangsindex f�r den Teil der Kante, der aus pML1 �bernommen wird
WMPosit posLage;		// Lage eines pML1-Punktes bez. der pML2-Fl�che

// Lage des 1. Teils der Kante bez. pML2 bestimmen
	if (pML1->GetMk1(0) != INNERHALB) {	// Anfangspunkt einer Kante kann nicht die Markierung
	                                    //  RAND_INN bzw. RAND_UMG haben
		posLage = pML2->Position (pML1, 0);
		if (posLage == OFFEN) // Au�enkontur der schneidenden Fl�che pML2 ist nicht geschlossen
		{
//			DEX_Error (RC_TeilKanten2, WC_FLAECHEOFFEN);
			_ASSERTE(posLage != OFFEN);
			return false;
		}
	}
	else
		posLage = KONTUR;

	// Aufbau der Teilkanten
	do {
		i++;

	// wenn aktueller Punkt pML1[i] Schnittpunkt oder Endpunkt eines 
	// �berlappungsbereiches ist, dann akt. Teilkante schlie�en und neue 
	// Teilkante mit dem akt. pML1[i] beginnen
	WMMar1 mark11 = pML1->GetMk1(i);
	
		if (mark11 == RAND_INN || mark11 == RAND_UMG || mark11 == SCHNITT) {
		// die aktuell zu bildende Teilkante entspricht mit ihrer posLage dem 
		// vorgegebenen Lagewunsch
			if ((posLage == INNERH && (ulLageAusw & LINN)) ||	// innerhalb
	    		(posLage == KONTUR && (ulLageAusw & LKONT)) ||	// auf der Kontur
	    		(posLage == AUSSERH && (ulLageAusw & LAUSS)))	// au�erhalb
			{
			// Anfang einer Teilkante
			KoOrdT x = DtoL(pML1->x(lAInd));
			KoOrdT y = DtoL(pML1->y(lAInd));
			WMKante<KoOrdT> GK (&x, &y, 1);

				if (lAInd+1 <= i) {	// es wird mindestens noch ein zweiter Punkt angehangen
					GK.AddKonturTeil (pML1, lAInd+1, i, -1);	// Teil der pML1-Kante an pGK anh�ngen
					GK.AddClipObjekt (CL);
				}
				bRet = true;
			}

		// Lage der n�chsten Teilkante bestimmen
			if (mark11 == SCHNITT) {		// Schnittpunkt
				if (posLage == INNERH)
					posLage = AUSSERH;
				else if (posLage == AUSSERH) 
					posLage = INNERH;
			}
			else if (posLage != KONTUR) 
				posLage = KONTUR;   // Randpunkt erreicht
			else if (mark11 == RAND_INN) 
				posLage = INNERH;
			else 
				posLage = AUSSERH;

			lAInd = i;	// Anfangsindex f�r den n�chsten Teil der Kante, der 
						// aus pML1 �bernommen wird
		}
	} while (i < lVekL-1);

	if ((posLage == INNERH && (ulLageAusw & LINN)) ||	// innerhalb
	    (posLage == KONTUR && (ulLageAusw & LKONT)) ||	// auf der Kontur
	    (posLage == AUSSERH && (ulLageAusw & LAUSS)))	// au�erhalb
	{
	// akt. Punkt ist Anfangspunkt einer neuen Teilkante mit neuem "posLage"
	KoOrdT x = DtoL (pML1->x(lAInd));
	KoOrdT y = DtoL (pML1->y(lAInd));
	WMKante<KoOrdT> GK (&x, &y, 1);

		if (lAInd+1 <= i)	// es wird mindestens noch ein zweiter Punkt angehangen
		{
			GK.AddKonturTeil (pML1, lAInd+1, i, -1);	// Teil der pML1-Kante an pGK anh�ngen
			GK.AddClipObjekt (CL);
		}
		bRet = true;
	}                        
	return bRet;
}

// Zerlegen von pML1-Fl�chenkontur durch pML2-Kante in Teilfl�chen, die in CL 
// eingetragen werden.
// Die MarkPunkte des Vektors pML1[] werden nicht kontinuierlich mit 
// aufsteigendem Index abgearbeitet. Dies h�tte zur Folge, da� u.U. mehrerer 
// Teilfl�chen gleichzeitig im Aufbau sein k�nnten. Wird ein Schnittpunkt, der 
// Endpunkt eines �berlappungsbereiches (deren zu- bzw. abf�hrende pML2-Strecke 
// innerhalb der pML1-Fl�che liegt) oder ein Punkt mit Randpunkt- bzw. Innen-
// ber�hrung ohne Seitenwechsel (deren beteiligte pML2-Strecken aus dem Inneren 
// der pML1-Fl�che kommen) erreicht, wird die bis dahin kontinuierliche Folge 
// der pML1[i]-Punkte verlassen und der Aufbau der aktuellen Teilfl�che mit 
// Punkten der schneidenden pML2-Kante fortgesetzt.
// Damit wird erreicht, da� sich immer nur EINE Teilfl�che im Aufbau befindet. 
// Wurde eine Strecke (pML1[i], pML1[i+1]) "verbraucht", wird die Markierung 
// _Mark2 des Anfangspunktes pML1[i] von UNVERBR auf VERBR gesetzt. Nach 
// Abschlu� der aktuell bearbeiteten Teilfl�che wird im pML1[]-Vektor an der 
// ersten "unverbrauchten" Strecke fortgesetzt. return-Wert ist "true", wenn 
// Teilfl�chen in CL eingetragen werden, sonst "false". Die Objektnummer
// lONr des Originalobjektes wird an die Teilobjekte weitergereicht, damit
// beim Kopieren der Merkmale das Quell-Objekt klar ist.
template <typename KoOrdT>
inline bool 
TeilFlaechen1 (WMMarkLine* pML1, WMMarkLine* pML2, WMClipListe<KoOrdT> &CL)
{
	_ASSERTE(pML1 != 0);
	_ASSERTE(pML2 != 0);

	if (!pML1 || !pML2) 
		return false;

bool bRet = false;	// return-Wert
long lVekL1 = pML1->ADP();
long i = 0;			// Index f�r pML1-Punkte
long lUnverbr = 0;	// Index der ersten noch unverbrauchten Strecke
bool bRest;			// nach Verlassen der 2. do-Schleife ist die soeben 
					// aufgebaute Teilfl�che noch durch einen restlichen Teil 
					// zu erg�nzen (true)
long lAInd;			// Anfangsindex f�r den Teil der Fl�chenkontur, der aus 
					// pML1 �bernommen wird
	for (;;) {
	// Anfang der Au�enkontur einer Teilfl�che
	KoOrdT x = DtoL (pML1->x(i));
	KoOrdT y = DtoL (pML1->y(i));
	WMFlaeche<KoOrdT> GF(&x, &y, 1);
	WMPunkt<KoOrdT> PA (x, y);		// Anfangspunkt von pGF (31.12.98)

		lAInd = (i < lVekL1-2) ? i + 1 : 0;
	
	// Aufbau einer Teilfl�che
		do {
			bRest = true;
			
			pML1->ModMark2 (i, VERBR);	// Strecke (pML1[i], pML1[i+1]) als "verbraucht" markieren
			i = (i < lVekL1-2) ? i + 1 : 0;

		// aktueller Punkt pML1[i] ist Schnittpunkt (SCHNITT), Endpunkt eines
		// �berlappungsbereiches (RAND_INN) oder Punkt mit Randpunkt- bzw. 
		// Innenber�hrung ohne Seitenwechsel (BERUE_INN, BERUE_ER, BERUE_LE)
 		WMMar1 mark11 = pML1->GetMk1(i);

			if (mark11 == SCHNITT || mark11 == RAND_INN || mark11 == BERUE_INN ||
				mark11 == BERUE_ER || mark11 == BERUE_LE)
			{
			// Teil der Kontur von pML1 an pGF anh�ngen
				GF.KA(0).AddKonturTeil (pML1, lAInd, i, -1);
				if (PA == pML1->DP(i))
					break;	// 13.10.98
			
			// pGF mit Punkten von pML2 erg�nzen
				GF.KA(0).SpezAddPunkt1 (pML1, pML2, i, mark11);
				
				lAInd = (i < lVekL1-2) ? i + 1 : 0;
				bRest = false;
			}
		} while (PA != pML1->DP(i)); // Abbruch, wenn akt. Teilfl�che geschlossen
		
	// restlichen Teil an pGF anh�ngen, wenn in der do-Schleife noch St�tzpunkte 
	// gesammelt wurden, die jedoch mit AddKonturTeil noch nicht an die 
	// Teilfl�che angef�gt wurden; bRest == false, wenn unmittelbar nach dem 
	// Aufruf von Routine SpezAddPunkt() die do-Schleife mit geschlossener 
	// Teilfl�che beendet wurde
		if (bRest)
			GF.KA(0).AddKonturTeil (pML1, lAInd, i, -1);
			
	// Da es m�glich ist, da� durch die Eps-Arithmetik der Anfangs- und Endpunkt 
	// nur eps-gleich sind, werden beide Punkte vorsichtshalber v�llig identisch 
	// gemacht.
	long lSPAnz = GF.KA(0).ASP();
		
		GF.KA(0).SPV(lSPAnz-1) = PA;		// 31.12.98
		GF.AddClipObjekt(CL);
		bRet = true;
			
	// n�chste noch "unverbrauchte" Strecke suchen; wird keine mehr gefunden, 
	// ist i == lVekL1-1
		for (i = lUnverbr; i < lVekL1-1; i++) {
			if (UNVERBR == pML1->GetMk2(i))
				break;
		}
		lUnverbr = i;

		if (i == lVekL1-1)	// keine "unverbrauchte" Strecke mehr gefunden
			return bRet;
	}
}

// Zerlegen der Kontur pML1 durch die Fl�chenkontur pML2 in Teilfl�chen, die in 
// CL eingetragen werden.
// Die MarkPunkte des Vektors pML1[] werden nicht kontinuierlich mit 
// aufsteigendem Index abgearbeitet. Dies h�tte zur Folge, da� u.U. mehrerer 
// Teilfl�chen gleichzeitig im Aufbau sein k�nnten. Wird ein Schnitt- bzw. der 
// Endpunkt eines �berlappungsbereiches mit Seitenwechsel erreicht, wird die 
// bis dahin kontinuierliche Folge der pML1[i]-Punkte verlassen und der Aufbau 
// der aktuellen Teilfl�che mit Punkten aus pML2 fortgesetzt. Damit wird 
// erreicht, da� sich immer nur EINE Teilfl�che im Aufbau befindet. Wurde ein 
// Strecke (pML1[i], pML1[i+1]) "verbraucht", wird die Markierung _Mark2 des
// Anfangspunktes pML1[i] von UNVERBR auf VERBR gesetzt. Nach Abschlu� der 
// aktuell bearbeiteten Teilfl�che wird im pML1[]-Vektor an der ersten 
// "unverbrauchten" Strecke fortgesetzt. ulLageAusw gibt an, ob die 
// Ergebnis-Teilfl�che gew�nscht werden, die innerhalb und/oder au�erhalb der 
// schneidenden Kontur pML2 liegen; return-Wert ist "true", wenn Teilfl�chen 
// in CL eingetragen werden, sonst "false". Die Objektnummer lONr des 
// Originalobjektes wird an die Teilobjekte weitergereicht, damit beim Kopieren 
// der Merkmale das Quell-Objekt klar ist.
template <typename KoOrdT>
inline bool 
TeilFlaechen2 (WMMarkLine* pML1, WMMarkLine* pML2, unsigned long ulLageAusw, 
	WMClipListe<KoOrdT> &CL)
{
	_ASSERTE(pML1 != 0);
	if (!pML1) 
		return false;

long lVekL1 = pML1->ADP();

	for (long i = 0; i < lVekL1; i++) {
	WMMar1 marM = pML1->GetMk1(i);

		if (marM == SCHNITT || marM == RAND_INN || marM == RAND_UMG ||
			marM == BERUE_INN || marM == BERUE_UMG)
		{
			break;
		}
	}
	if (i == lVekL1)	// keine Teilfl�che bildbar
		return false;

	_ASSERTE(pML2 != 0);	// lONr == 0 kann sein, z.B. bei Aufruf aus SchnittKonturMitKontur()
	if (!pML2) 
		return false;

bool bRet = false;	// return-Wert
WMPosit posLage;	// Lage der zu erzeugenden Teilfl�che bez. pML2

// Suche nach einem pML1-Punkt, so da� der anschlie�ende Teil des pML1-Vektors 
// nicht in einem �berlappungsbereich liegt, um dort mit dem Konturaufbau einer 
// Teilfl�che zu beginnen
	for (i = 0; i < lVekL1-1; i++) {
	WMMar1 ma10 = pML1->GetMk1(i);
	WMMar1 ma11 = pML1->GetMk1(i+1);

		if (ma10 == INNERHALB || ma11 == INNERHALB ||	// au�erhalb eines �berlappungsbereiches ?
		   ((ma10 == RAND_INN || ma10 == RAND_UMG) &&
			 KONTUR == pML2->Position (pML1, i)))
			pML1->ModMark2 (i, VERBR);	// Strecke (pML1[i], pML1[i+1] als "verbraucht" markieren
		else
			break;  // geeigneter Punkt gefunden
	}
	
	if (i == lVekL1-1)	// beide Fl�chen liegen haargenau �bereinander
		return false;	// kein Eintrag in ClipListe, da auf Kontur pML2 keine 
						// andere Fl�che liegen kann

// Abarbeitung aller pML1-Punkte
WMMar1 mark11;		// Markierung
long lUnverbr = 0;	// Index der ersten noch unverbrauchten Strecke
bool bRest;			// nach Verlassen der 2. do-Schleife ist die soeben 
					// aufgebaute Teilfl�che noch durch einen restlichen Teil 
					// zu erg�nzen (true)
long lAInd;			// Anfangsindex f�r den Teil der Fl�chenkontur, der aus 
					// pML1 �bernommen wird
WMMoveDir MD;		// wenn Punkte aus pML2 �bernommen werden, ist der Index 
					// aufsteigend zu durchlaufen (true)

int iKInd1 = pML1->GetKInd();		_ASSERTE(iKInd1 >= 0);
int iKInd2 = pML2->GetKInd();		_ASSERTE(iKInd2 >= 0);
bool bWechsel;	// bei BERUE_INN bzw. BERUE_UMG ist bei pML2 fortzusetzen 
				// (true); wird durch EckeMitBeruehrung() gesetzt
bool bMax;		// SEHR wichtiger Parameter f�r EckeMitBeruehrung()

	if (0 == iKInd1 && 0 == iKInd2)
		bMax = true;
	else if (0 == iKInd1 && iKInd2 > 0)
		bMax = true;
	else if (iKInd1 > 0 && 0 == iKInd2)
		bMax = false;
	else	// if (iKInd1 > 0 && iKInd2 > 0)
		bMax = true;	// seit 10.06.99

bool bGlKont;	// die beiden Konturen haben den gleichen Umlaufsinn (bGlKont = true)

	if ((0 == iKInd1 && 0 == iKInd2) || (iKInd1 > 0 && iKInd2 > 0))
		bGlKont = true;
	else 
		bGlKont = false;

	for (;;) {
	// Test, ob die evtl. aufzubauende Teilfl�che pGF innerhalb (posLage == INNERH) oder
	// au�erhalb (posLage == AUSSERH) der schneidenden Kontur pML2 liegt
		posLage = pML2->Position (pML1, i, false);

	// Wenn Lage der Teilfl�che, die nachfolgend aufgebaut werden k�nnte, mit dem
	// vorgegebenen Auswahlkriterium �bereinstimmt, dann wird die Teilfl�che wirklich
	// aufgebaut (true), anderenfalls werden die Strecken nur als "verbraucht" markiert;
	// (Das Auswahlkriterium "Auf dem Rand" wird nicht ber�cksichtigt, da auf dem Rand
	// einer Fl�che keine andere Fl�che liegen kann.)
		if ((posLage == INNERH && (ulLageAusw & LINN)) ||	// innerhalb
			(posLage == AUSSERH && (ulLageAusw & LAUSS)))	// au�erhalb
		{ 
		// Teilfl�che wird tats�chlich aufgebaut
		unsigned long ulLageAuswAkt;	// Lageauswahl, mit der aktuell gearbeitet wird

			if (posLage == INNERH && (ulLageAusw & LINN))
				ulLageAuswAkt = LINN;
			else
				ulLageAuswAkt = LAUSS;

		// Anfang der Au�enkontur einer Teilfl�che
		KoOrdT x = DtoL (pML1->x(i));
		KoOrdT y = DtoL (pML1->y(i));
		WMFlaeche<KoOrdT> GF (&x, &y, 1);
		WMPunkt<KoOrdT> PA (x, y);	// Anfangspunkt von pGF 

			if ((posLage == INNERH && bGlKont) ||
				(posLage == AUSSERH && !bGlKont))
				MD = MOVEDIR_UP;	// pML2-Punkte mit aufsteigendem bzw.
			else
				MD = MOVEDIR_DOWN;	//  absteigendem Index bearbeiten

			lAInd = (i < lVekL1-2) ? i + 1 : 0;

			// Aufbau einer Teilfl�che
			do {
				bRest = true;
			
			// Strecke (pML1[i], pML1[i+1]) als "verbraucht" markieren
				pML1->ModMark2 (i, VERBR);
				i = (i < lVekL1-2) ? i + 1 : 0;

			// aktueller Punkt pML1[i] ist Endpunkt eines �berlappungsbereiches
			// (_Mark1 == RAND_UMG bzw. RAND_INN), Schnittpunkt (SCHNITT) oder, wenn
			// Teilfl�che au�erhalb von pML2 aufgebaut werden soll, Punkt mit Randpunkt-
			// bzw. Innenber�hrung ohne Seitenwechsel (BERUE_UMG)
				mark11 = pML1->GetMk1(i);

				if ((mark11 == BERUE_INN && (ulLageAuswAkt & LINN)) ||
					(mark11 == BERUE_UMG && (ulLageAuswAkt & LAUSS)))
				{
					pML1->EckeMitBeruehrung (pML2, i, MOVEDIR_UP, MD, bMax, bWechsel);
				}
				if (mark11 == SCHNITT || mark11 == RAND_INN || mark11 == RAND_UMG ||
					(mark11 == BERUE_INN && (ulLageAuswAkt & LINN) && bWechsel) ||
					(mark11 == BERUE_UMG && (ulLageAuswAkt & LAUSS) && bWechsel))
				{
					bRest = false;
				
				// Teil der Kontur von pML1 an pGF anh�ngen
					GF.KA(0).AddKonturTeil (pML1, lAInd, i, -1);

				// das langj�hrige unendeckte Fehlen der nachfolgenden if-
				// Anweisung ist eine der unerkl�rlichsten Ph�nomene meiner 
				// Programmierpraxis (13.10.98)
					if (PA == pML1->DP(i)) 
						break;

				// pGF mit Punkten von pML2 erg�nzen
					GF.KA(0).SpezAddPunkt2 (pML1, pML2, i, MD, ulLageAuswAkt);
				
					lAInd = (i < lVekL1-2) ? i + 1 : 0;
				}
			} while (PA != pML1->DP(i));	// Abbruch, wenn akt. Teilfl�che geschlossen
		
		// restlichen Teil an pGF anh�ngen, wenn in der do-Schleife noch St�tzpunkte
		// gesammelt wurden, die jedoch mit AddKonturTeil noch nicht an die Teilfl�che
		// angef�gt wurden; bRest == false, wenn unmittelbar nach dem Aufruf von Routine
		// SpezAddPunkt() die do-Schleife mit geschlossener Teilfl�che beendet wurde
			if (bRest)
				GF.KA(0).AddKonturTeil (pML1, lAInd, i, -1);
			
		// Da es m�glich ist, da� durch die Eps-Arithmetik der Anfangs- und Endpunkt nur
		// eps-gleich sind, werden beide Punkte vorsichtshalber v�llig identisch gemacht.
		long lSPAnz = GF.KA(0).ASP();
		
			GF.KA(0).SPV(lSPAnz-1) = PA;
			GF.AddClipObjekt (CL);

			bRet = true;
		}

		// Teilfl�che wird nicht aufgebaut, die Strecken werden nur als "verbraucht" markiert
		else {
		long lSZ = lVekL1 - 1;	// Z�hler f�r sp�testen Abbruch der do-Schleife, wenn while-Bedingung
								// �berhaupt nicht erf�llt wird (f�r den Fall aller F�lle !!)
			do {
				pML1->ModMark2 (i, VERBR);	// Strecke (pML1[i], pML1[i+1]) als "verbraucht" markieren
				i = (i < lVekL1-2) ? i + 1 : 0;

			// aktueller Punkt pML1[i] ist Endpunkt eines �berlappungsbereiches
			// (_Mark1 == RAND_UMG bzw. RAND_INN), Schnittpunkt (SCHNITT) oder, 
			// wenn Teilfl�che au�erhalb von pML2 aufgebaut werden soll, Punkt 
			// mit Randpunkt- bzw. Innenber�hrung ohne Seitenwechsel (BERUE_UMG)
				mark11 = pML1->GetMk1(i);

				lSZ--;
				if (lSZ == 0) 
					break;
			} while (mark11 != RAND_INN && mark11 != RAND_UMG && 
					 mark11 != SCHNITT && 
					 (mark11 != BERUE_UMG || !(ulLageAusw & LAUSS)));
		}
	
	// n�chste noch "unverbrauchte" Strecke, die nicht in einem �berlappungs-
	// bereich liegt, suchen; wird keine mehr gefunden, ist i == lVekL1-1
		for (i = lUnverbr; i < lVekL1-1; i++) {
			if (UNVERBR == pML1->GetMk2(i))	{	// Strecke "unverbraucht"
			WMMar1 ma10 = pML1->GetMk1(i);
			WMMar1 ma11 = pML1->GetMk1(i+1);

			// au�erhalb eines �berlappungsbereiches ?
				if (ma10 == INNERHALB || ma11 == INNERHALB ||	
				   ((ma10 == RAND_INN || ma10 == RAND_UMG) &&
					 KONTUR == pML2->Position (pML1, i)))
				{
					pML1->ModMark2 (i, VERBR);	// Strecke (pML1[i], pML1[i+1] als "verbraucht" markieren
				} 
				else
					break;  // geeigneten Punkt gefunden
			}
		}
		lUnverbr = i;
		if (i == lVekL1-1)	// keine "unverbrauchte" Strecke mehr gefunden
			return bRet;
	} // for
}

} // namespace trias_wmgeometry

#endif // !defined(_MARKOBJECTS_INL__650FBE6A_7F64_4467_8035_2C074C250DFB__INCLUDED_)
