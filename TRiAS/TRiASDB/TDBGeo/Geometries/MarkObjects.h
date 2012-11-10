// $Header: $
// Copyright� 1999-2002 GEOPunkt GmbH, NL Potsdam, All rights reserved
// Created: 25.01.2002 21:41:04 
//
// @doc
// @module MarkObjects.h | Declaration of the <c CMarkObjects> class

#if !defined(_MARKOBJECTS_H__F1712058_457A_430B_A5DE_FD6D2B6A6856__INCLUDED_)
#define _MARKOBJECTS_H__F1712058_457A_430B_A5DE_FD6D2B6A6856__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

// Header include diagnostics
#if defined(_TRIAS_DBG_HEADER_DIAGNOSTICS)
#pragma message(__TIME__": include " __FILE__ )
#endif

namespace trias_wmgeometry {

///////////////////////////////////////////////////////////////////////////////
// m�gliche 1. Markierung bei markierbaren Punkten
enum WMMar1
{
	NORMAL,		// normaler Punkt
	INNERHALB,	// Punkt innerhalb eines �berlappungsbereiches
	RANDP,		// Randpunkt eines �berlappungsbereiches
	RAND_INN,	// Randpunkt eines �berlappungsbereiches mit Zuf�hrung aus dem
				// Inneren der Bezugsfl�che
	RAND_UMG,	// Randpunkt eines �berlappungsbereiches mit Zuf�hrung aus der
				// Umgebung der Bezugsfl�che
	BERUEHR,	// Punkt mit Randpunkt- bzw. Innenber�hrung ohne Seitenwechsel
	BERUE_INN,	// Punkt mit Randpunkt- bzw. Innenber�hrung ohne Seitenwechsel, wobei die
				// beteiligten Strecken aus dem Inneren der Bezugsfl�che kommen
	BERUE_UMG,	// Punkt mit Randpunkt- bzw. Innenber�hrung ohne Seitenwechsel, wobei die
				// beteiligten Strecken aus der Umgebung der Bezugsfl�che kommen
	BERUE_ER,	// erster Punkt einer offenen Kante mit Randpunkt- bzw. Innenber�hrung ohne
				// Seitenwechsel, wobei die beteiligten Strecken aus dem Inneren der
				// Bezugsfl�che kommen und der Anfangspunkt der Kante im Inneren der
				// Bezugsfl�che liegt
	BERUE_LE,	// letzter Punkt einer offenen Kante mit Randpunkt- bzw. Innenber�hrung ohne
				// Seitenwechsel, wobei die beteiligten Strecken aus dem Inneren der
				// Bezugsfl�che kommen und der Endpunkt der Kante im Inneren der Bezugsfl�che
				// liegt
	SCHNITT,	// Schnittpunkt
	GEMEINSAM	// Punkt, an dem 2 Linien eine Gemeinsamkeit haben (Schnitt, Ber�hrung,
				// �berlappung) 
};

///////////////////////////////////////////////////////////////////////////////
// m�gliche 2. Markierung bei markierbaren Punkten
enum WMMar2
{
	UNVERBR,	// "unverbrauchte" Strecke
	VERBR		// "verbrauchte" Strecke
};

///////////////////////////////////////////////////////////////////////////////
// Durchlaufrichtung bei �bernahme einer Teilkante
enum WMMoveDir
{
	MOVEDIR_UP,		// mit aufsteigenden St�tzpunkt-Indizes
	MOVEDIR_DOWN	// mit absteigenden St�tzpunkt-Indizes
};

///////////////////////////////////////////////////////////////////////////////
// markierter St�tzpunkt MARKVERTEX
class WMMarkVertex
{
private:
	DoublePair m_dpVtx;	// St�tzpunkt
	WMMar1 m_Mark1;		// 1. Markierungsm�glichkeit (NORMAL, SCHNITT, ...)
	WMMar2 m_Mark2;		// 2. Markierungsm�glichkeit (UNVERBR, VERBR)
	long m_lRInd;		// Referenzindex zu einem St�tzpunkt in einem anderen MarkLine-Vektor

public:
// Konstruktoren/Destruktor
	WMMarkVertex();			// default-Konstruktor
	template <typename KoOrdT>
	WMMarkVertex (WMPunkt<KoOrdT> const &Pkt);
	WMMarkVertex (DoublePair const &DP, WMMar1 Mk1 = NORMAL, 
		WMMar2 Mk2 = UNVERBR, long lRInd = -1);
	WMMarkVertex (WMMarkVertex const& MV);	// Copy-Konstruktor
	~WMMarkVertex();

// Elementfunktion
	void SetX (double x);
	void SetY (double y);
	void ModMk1 (WMMar1 Mk1);		// 1. Markierung modifizieren
	void ModMk2 (WMMar2 Mk2);		// 2. Markierung modifizieren
	void SetRInd (long lRInd);		// Referenzindex setzen
	void IncRInd (void);			// Referenzindex inkrementieren
	DoublePair Vtx (void) const;
	double X (void) const;
	double Y (void) const;
	WMMar1 Mark1 (void) const;
	WMMar2 Mark2 (void) const;
	long GetRInd (void) const;

	WMMarkVertex &operator= (WMMarkVertex const &rhs);	// Zuweisung �berladen
};

// Ermittlung des Index lEInd des MarkLine-Vektors pML, VOR dem ein zus�tzlicher 
template <typename KoOrdT>
bool EinfIndex (WMPunkt<KoOrdT> const &APkt, WMPunkt<KoOrdT> const &EPkt, long l, 
	WMMarkLine* pML, DoublePair const &ZP, long& lEInd);

// Punkt DP wird in pML vor Index -1 <= lIndex <= Vektorl�nge mit der Markierung 
// Mark1 eingef�gt
bool AddMarkPunkt (WMMarkLine *pML, long lIndex, DoublePair const &DP, 
	WMMar1 Mark);

// Punkt DP wird in pML vor Index -1 <= lIndex <= Vektorl�nge mit der Markierung 
// Mark1 eingef�gt, wenn kein koordinatengleicher Punkt existiert
bool EinfMarkPunkt (WMMarkLine *pML, long &lIndex, DoublePair const &DP, 
	WMMar1 Mark, bool& bAdd);

// Modifizierung von Markierungen der pML1- und pML2-Punkte
void MarkierungModify0 (WMMarkLine *pML);
void MarkierungModify1 (WMMarkLine *pML1, WMMarkLine *pML2);
void MarkierungModify2 (WMMarkLine *pML1, WMMarkLine *pML2);
bool MarkINNERHALB (WMMarkLine* pML1, WMMarkLine *pML2, int iKInd1, long lVekL1,
	long i, bool& bKont, WMMar1 &Mark, WMMar1 &newM, bool& bMody);
bool MarkBERUEHR (WMMarkLine *pML1, WMMarkLine *pML2, long lVekL1, long i, 
	WMMar1& newM, bool& bMody);

template <typename KoOrdT>
void SpezMarkierungModify (WMKante<KoOrdT> const *pMK, WMMarkLine *pML1, WMMarkLine *pML2);

// Position eines MarkLine-Vektors pML bez. einer Fl�che pFS
template <typename KoOrdT>
WMPosit KantenPosit (WMKante<KoOrdT> *pFS, WMMarkLine* pML, bool& bOverlap, int& iTouchOut);

// Test, ob pML-Kante zerlegt wird (true), sonst false
bool KanteZerlegt (WMMarkLine* pML);

// Test, ob pML-Fl�che durch pSKt-EKante zerlegt wird (true), sonst false
template <typename KoOrdT>
bool FlaecheZerlegt (WMKante<KoOrdT> *pSKt, WMMarkLine* pML);

// Zerlegen von pML durch eine Kante in Teilkanten, die in CL eingetragen werden;
// return-Wert ist "true", wenn Teilkanten in CL eingetragen werden, sonst "false"
template <typename KoOrdT>
bool TeilKanten1 (WMMarkLine* pML, WMClipListe<KoOrdT> &CL);

template <typename KoOrdT>
bool TeilKanten2 (WMMarkLine* pML1, WMMarkLine* pML2, unsigned long ulLageAusw, 
	WMClipListe<KoOrdT> &CL);

// Zerlegen von pML1 durch die EKante pSKt in Teilfl�chen
template <typename KoOrdT>
bool TeilFlaechen1 (WMMarkLine* pML1, WMMarkLine* pML2, WMClipListe<KoOrdT> &CL);

// Zerlegen von pML1 durch die Fl�chenkontur pKont in Teilfl�chen
template <typename KoOrdT>
bool TeilFlaechen2 (WMMarkLine* pML1, WMMarkLine* pML2, unsigned long ulLageAusw, 
	WMClipListe<KoOrdT> &CL);

///////////////////////////////////////////////////////////////////////////////
// Vektor von markierten St�tzpunkten MARKLINE
class WMMarkLine
{
private:
	WMMarkVertex *m_pML;	// Vektor von markierten St�tzpunkten
	long m_lSize;			// Vektorl�nge
	int m_iKInd;			// Index der Fl�chenkontur, aus der m_pML gebildet 
							// wurde (f�r Kante gilt m_iKInd = -1)
	bool m_bClosed;			// m_pML geschlossen (true) oder offen (false)
	bool m_bPos;			// Umlaufsinn ist mathematisch positiv (true) oder 
							// negativ (false) (f�r Kante unbestimmt)
public:
// Konstruktor/Destruktor
	WMMarkLine (long lLen, int iKInd, bool bClosed = true);
	~WMMarkLine();

// MemberFunktionen
	WMMarkVertex *Vektor();
	long ADP (void) const;	// Anzahl der DoublePair-Punkte
	int GetKInd (void) const;
	bool IsClosed (void) const;

	void SetX (long lInd, double x);
	void SetY (long lInd, double y);
	void ModMark1 (long lInd, WMMar1 Mark1); // 1. Markierung modifizieren
	void ModMark2 (long lInd, WMMar2 Mark2); // 2. Markierung modifizieren

	WMMarkVertex& Vt (long lInd) const;
	DoublePair DP (long lInd) const;

	template <typename KoOrdT>
	WMPunkt<KoOrdT> SP (long lInd) const;

	double x (long lInd) const;
	double y (long lInd) const;
	WMMar1 GetMk1 (long lInd) const;
	WMMar2 GetMk2 (long lInd) const;
	long GetRefInd (long lInd) const;

// weitere Funktionen
	void RefIndexSetzen (long lInd, long lRInd);
	void RefIndexInkrementieren (long lInd);
	void RefIndexModifizieren (WMMarkLine* pML2, bool bAdd1, bool bAdd2, 
		long& lRInd1, long& lRInd2);
	WMPosit Position_real (double x, double y, double dEps = dREps);
	WMPosit Position (WMMarkLine* pML, long lInd, bool bCont = true, 
		WMMoveDir MD = MOVEDIR_UP);
	bool EckeMitBeruehrung (WMMarkLine* pML, long lInd, WMMoveDir MD, 
		WMMoveDir MD2, bool bMax, bool& bWechsel);
};

} // namespace trias_wmgeometry

#endif // !defined(_MARKOBJECTS_H__F1712058_457A_430B_A5DE_FD6D2B6A6856__INCLUDED_)
