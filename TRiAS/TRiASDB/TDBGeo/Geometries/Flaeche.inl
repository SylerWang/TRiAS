// $Header: $
// Copyright� 1999-2002 GEOPunkt GmbH, NL Potsdam, All rights reserved
// Created: 21.01.2002 14:46:30 
//
// @doc
// @module Flaeche.inl | Declaration of the <c CFlaeche> class

#if !defined(_FLAECHE_INL__3F1018D6_D59D_4202_8F7F_B18CBC8AF418__INCLUDED_)
#define _FLAECHE_INL__3F1018D6_D59D_4202_8F7F_B18CBC8AF418__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

// Header include diagnostics
#if defined(_TRIAS_DBG_HEADER_DIAGNOSTICS)
#pragma message(__TIME__": include " __FILE__ )
#endif

namespace trias_wmgeometry {

///////////////////////////////////////////////////////////////////////////////
// Fl�che 

// Spezielle Fl�chenvereinigung von this- und pFl-Fl�che mit Ber�cksichtigung 
// s�mtlicher Inseln, wobei vorausgesetzt wird, da� pFl vollst�ndig innerhalb 
// der this-Au�enkontur liegt. Es werden folgende F�lle unterschieden:
// - pFl liegt innerhalb einer this-Insel und ber�hrt diese Innenkontur 
//	 h�chstens an einzelnen Punkten, dann ist keine Fl�chenvereinigung m�glich, 
//	 es wird 0 zur�ckgegeben
// - this-Fl�che hat keine Inseln bzw. pFl liegt au�erhalb aller this-Inseln, 
//   dann wird die this-Fl�che unver�ndert zur�ckgegeben
// - In allen anderen F�llen wird die this-Fl�che mit folgenden Inseln 
//	 zur�ckgegeben:
//   . Teile der this-Inseln, die au�erhalb der pFl-Au�enkontur liegen
//   . Fl�chen, die sich beim Durchschnitt jeder this-Insel mit jeder pFl-Insel 
//	   ergeben
template <typename KoOrdT>
inline WMFlaeche<KoOrdT> * 
WMFlaeche<KoOrdT>::FlaechenVereinigung1 (WMFlaeche* pFl)
{
	if (1 == _Size)	// this-Fl�che hat keine Inseln
		return this;

	_ASSERTE(pFl != 0);

// Wenn this-Fl�che auch Inseln hat, dann Lage der pFl-Au�enkontur bez. dieser 
// this-Inseln bestimmen
bool bLeer;		// Container der beiden in Aufbereitung2() verglichenen Objekte 
				// sind durchschnittsleer (true)
bool bAbbr;		// Parameter von Aufbereitung2(); wird hier nicht ausgewertet
bool bOverlap;	// pFl-Au�enkontur hat mit einer this-Insel einen �berlappungsbereich
int iTouchOut;	// Parameter von KantenPosit(); wird hier nicht ausgewertet

	for (int i = 1; i < _Size; i++) {
	WMMarkLine ML1 (pFl->KA(0).ASP(), 0);			// 09.06.98: von ...
	WMMarkLine ML2 (_KAF[i].ASP(), i, true);

		_ASSERTE(!(!ML1.Vektor() || !ML2.Vektor()));
		if (!pFl->KA(0).Aufbereitung2 (&_KAF[i], &ML1, &ML2, bLeer, bAbbr, 0))	// 27.07.98
		{
			if (bLeer) 
				continue;		// 11.11.98
			return 0;
		}																// ... bis

	WMPosit posLage = KantenPosit (&_KAF[i], &ML1, bOverlap, iTouchOut);

		if (INNERH == posLage ||				// pFl liegt innerhalb einer this-Insel
			(INNERHB == posLage && !bOverlap))	// pFl ber�hrt this-Insel h�chstens 
												// an einzelnen Punkten
			return 0;	// deshalb keine Fl�chenvereinigung m�glich
							
	// Au�enkontur der pFl-Fl�che ist mit der i-ten Insel der this-Fl�che v�llig 
	// identisch (09.06.98)
		else if (KONTUR == posLage || GLEICH == posLage) {
		// i-te Insel der this-Fl�che l�schen und daf�r Inseln der pFl-Fl�che 
		// hinzunehmen
			AddInseln3 (pFl, i);
			return this;
		}

	// Au�enkontur der pFl-Fl�che umschlie�t (d.h. �berdeckt) die i-te Insel der
	// this-Fl�che (27.07.98)
		else if (UMSCHL == posLage ||	// 27.07.98
				 UMSCHLB == posLage)
		{
		// i-te Insel der this-Fl�che l�schen und daf�r andere Inseln hinzunehmen
			AddInseln4 (pFl, i);
			return this;
		}
		else if (AUSSERH != posLage && AUSSERHB != posLage)
			break;	// pFl ragt in ein "Inselloch" hinein
	}

	if (i == _Size)	// pFl ist bez. aller this-Inseln AUSSERH bzw. AUSSERHB
		return this;

	AddInseln5 (pFl);	// Inseln (verschnitten) hinzuf�gen
	return this;		// evtl. mit Inseln erg�nzt
}

// Innenkonturen der Fl�chen pFl1 und pFl2 werden unver�ndert als Innenkonturen 
// der this-Fl�che hinzugef�gt (bei Routine FlaechenVereinigung() ben�tigt)
template <typename KoOrdT>
inline void 
WMFlaeche<KoOrdT>::AddInseln1 (WMFlaeche* pFl1, WMFlaeche* pFl2)
{
	_ASSERTE(pFl1 != 0);
	_ASSERTE(pFl2 != 0);

int iKAnz1 = pFl1->KantenAnz();
int iKAnz2 = pFl2->KantenAnz();

	if (iKAnz1 > 1) {
		for (int i = 1; i < iKAnz1; i++)
			AddKante (WMFlaeche<KoOrdT>(&pFl1->KA(i), 1), 1, -1);
	}
	if (iKAnz2 > 1) {
		for (int i = 1; i < iKAnz2; i++)
			AddKante (WMFlaeche<KoOrdT>(&pFl2->KA(i), 1), 1, -1);
	}
}

// Innenkonturen der Fl�chen pFl1 und pFl2 werden unter Ber�cksichtung 
// m�glicher �berlappungen als Innenkonturen der this-Fl�che hinzugef�gt (bei 
// Routinen FlaechenVereinigung() ben�tigt)
template <typename KoOrdT>
inline void 
WMFlaeche<KoOrdT>::AddInseln2 (WMFlaeche* pFl1, WMFlaeche* pFl2)
{
	_ASSERTE(pFl1 != 0);
	_ASSERTE(pFl2 != 0);
	if (!pFl1 || !pFl2)
		return;

WMClipListe<KoOrdT> CL;	// Liste f�r die Ergebnisse der Schnittoperation
int iKAnz1 = pFl1->KantenAnz();
int iKAnz2 = pFl2->KantenAnz();

// Erzeugen von Inseln f�r die Vereinigungsfl�che
// Teile der pFl1-Inseln, die au�erhalb der pFl2-Au�enkontur liegen
	if (iKAnz1 > 1) {
		for (int i = 1; i < iKAnz1; i++)
			pFl1->KA(i).SchnittKonturMitKontur (&pFl2->KA(0), i, 0, LAUSS, CL);
	}

// Teile der pFl2-Inseln, die au�erhalb der pFl1-Au�enkontur liegen
	if (iKAnz2 > 1) {
		for (int ii = 1; ii < iKAnz2; ii++)
			pFl2->KA(ii).SchnittKonturMitKontur (&pFl1->KA(0), ii, 0, LAUSS, CL);
	}

// Fl�chen, die sich beim Durchschnitt jeder pFl1-Insel mit jeder pFl2-Insel ergeben
	if (iKAnz1 > 1 && iKAnz2 > 1) {
		for (int ii = 1; ii < iKAnz2; ii++)
			for (int i = 1; i < iKAnz1; i++)
				pFl1->KA(i).SchnittKonturMitKontur (&pFl2->KA(ii), i, ii, LINN, CL);
	}

	if (CL.size() > 0) {		// es hat sich wenigstens eine Insel ergeben
	WMClipListe<KoOrdT>::iterator end = CL.end();

		for (WMClipListe<KoOrdT>::iterator ri = CL.begin(); ri != end; ++ri) {
			_ASSERTE((*ri)->isA() == OT_FLAECHE);
			AddKante (*(WMFlaeche<KoOrdT> *)(*ri), 1, -1);
		}
	}
}

// i-te Insel der this-Fl�che l�schen und daf�r Inseln der pFl-Fl�che 
// hinzunehmen (bei Routine FlaechenVereinigung1() ben�tigt)
template <typename KoOrdT>
inline void 
WMFlaeche<KoOrdT>::AddInseln3 (WMFlaeche* pFl, int i)
{
	_ASSERTE(pFl != 0);
	_ASSERTE(i >= 1);

	SubKante (1, i);	// alte _KAF[i]-Insel herausnehmen

int iKAnz = pFl->KantenAnz();

	if (iKAnz > 1) {
		for (int j = 1; j < iKAnz; j++)
			AddKante (WMFlaeche<KoOrdT>(&pFl->KA(j), 1), 1, -1);	// pFl-Inseln hinzunehmen	
	}
}

// i-te Insel der this-Fl�che l�schen und daf�r neue Inseln hinzunehmen, u. z.
// - die Bereiche, die innerhalb der i-ten Insel der this-Fl�che und au�erhalb 
//	 der Au�enkontur der pFl-Fl�che liegen sowie
// - die Inseln der pFl-Fl�che bzw. deren Bereiche, die innerhalb der i-ten 
//   Insel der this-Fl�che liegen
// (bei Routine FlaechenVereinigung1() ben�tigt)
template <typename KoOrdT>
inline void 
WMFlaeche<KoOrdT>::AddInseln4 (WMFlaeche* pFl, int i)
{
	_ASSERTE(pFl != 0);
	_ASSERTE(i >= 1);

WMClipListe<KoOrdT> CL;	// Liste f�r die Ergebnisse der Schnittoperation

// Teile der i-ten this-Insel, die au�erhalb der pFl-Au�enkontur liegen
	_KAF[i].SchnittKonturMitKontur (&pFl->KA(0), i, 0, LAUSS, CL);

int iKCnt = pFl->KantenAnz();

	if (iKCnt > 1) {	// pFl-Fl�che hat Inseln
		// Teile der j-ten pFl-Insel, die innerhalb der i-ten this-Insel liegen
		for (int j = 1; j < iKCnt; j++)
			pFl->KA(j).SchnittKonturMitKontur (&_KAF[i], j, i, LINN, CL);
	}

	if (CL.size() > 0) {		// es hat sich wenigstens eine Insel ergeben
	WMClipListe<KoOrdT>::iterator end = CL.end();

		for (WMClipListe<KoOrdT>::iterator ri = CL.begin(); ri != end; ++ri) {
			_ASSERTE((*ri)->isA() == OT_FLAECHE);
			AddKante (*(WMFlaeche<KoOrdT> *)(*ri), 1, -1);
		}
	}
	SubKante (1, i);	// i-te Insel der this-Fl�che l�schen (06.07.99)
}

// Innenkonturen der this-Fl�che und von pFl werden unter Ber�cksichtung m�glicher
// �berlappungen als Innenkonturen der this-Fl�che hinzugef�gt (bei Routine
// FlaechenVereinigung1() ben�tigt)
template <typename KoOrdT>
inline void 
WMFlaeche<KoOrdT>::AddInseln5 (WMFlaeche* pFl)
{
	_ASSERTE(pFl != 0);

WMClipListe<KoOrdT> CL;	// Liste f�r die Ergebnisse der Schnittoperation
int iKAnz1 = _Size;
	
// Erzeugen von Inseln f�r die Vereinigungsfl�che
	if (iKAnz1 > 1) {
	// Teile der this-Inseln, die au�erhalb der pFl-Au�enkontur liegen
		for (int i = 1; i < iKAnz1; i++)
			_KAF[i].SchnittKonturMitKontur (&pFl->KA(0), i, 0, LAUSS, CL);

	// Fl�chen, die sich beim Durchschnitt jeder this-Insel mit jeder pFl-Insel ergeben
	int iKAnz2 = pFl->KantenAnz();

		if (iKAnz2 > 1) {
			for (int ii = 1; ii < iKAnz2; ii++)
				for (int i = 1; i < iKAnz1; i++)
					_KAF[i].SchnittKonturMitKontur (&pFl->KA(ii), i, ii, LINN, CL);
		}
	}

// die bisherigen this-Inseln l�schen
	SubKante (iKAnz1-1, 1);

	if (CL.size() > 0) {		// es hat sich wenigstens eine Insel ergeben
	WMClipListe<KoOrdT>::iterator end = CL.end();

		for (WMClipListe<KoOrdT>::iterator ri = CL.begin(); ri != end; ++ri) {
			_ASSERTE((*ri)->isA() == OT_FLAECHE);
			AddKante (*(WMFlaeche<KoOrdT> *)(*ri), 1, -1);
		}
	}
}

// pKVFl mit Punkten von pML2 erg�nzen
// (siehe auch Routine SpezAddPunkt() in geo_obj3.cxx)
template <typename KoOrdT>
inline void 
WMFlaeche<KoOrdT>::ZweiteFlaeche (WMMarkLine* pML1, WMMarkLine* pML2, long& i)
{
	_ASSERTE(pML1 != 0);
	_ASSERTE(pML2 != 0);

long lVekL1 = pML1->ADP();   // L�nge des Vektors pML1
long lVekL2 = pML2->ADP();   //  bzw. pML2

// Index des pML2-Punktes, der mit Punkt pML1[i] �bereinstimmt
long ii = pML1->GetRefInd(i);

	_ASSERTE(ii >= 0);

long lAnfId2;	// Anfangsindex f�r den Teil der Kontur, der aus pML2 �bernommen wird
WMMar1 mark;	// Markierung

int iKInd1 = pML1->GetKInd();		_ASSERTE(iKInd1 >= 0);
int iKInd2 = pML2->GetKInd();		_ASSERTE(iKInd2 >= 0);
bool bWechsel;	// bei BERUE_UMG ist bei pML1 fortzusetzen (true); wird durch
				// EckeMitBeruehrung() gesetzt
bool bMax;		// SEHR wichtiger Parameter von EckeMitBeruehrung()

	if (0 == iKInd1 && 0 == iKInd2)
		bMax = false;
	else if (0 == iKInd1 && iKInd2 > 0)
		bMax = true;
	else if (iKInd1 > 0 && 0 == iKInd2) {
		_ASSERTE(false);	// nur zu Testzwecken, da
		bMax = false;		// diesen Fall hatte ich noch nicht
	}
	else	// if (iKInd1 > 0 && iKInd2 > 0)
		bMax = true;	// 29.10.98

	lAnfId2 = (ii < lVekL2-2) ? ii + 1 : 0;
	do {
		ii = (ii < lVekL2-2) ? ii + 1 : 0;
		mark = pML2->GetMk1(ii);
		if (BERUE_UMG == mark)
			pML2->EckeMitBeruehrung (pML1, ii, MOVEDIR_UP, MOVEDIR_UP, bMax, bWechsel);
	}
	// Abbruch bei Schnitt- oder Endpunkten mit "Zuf�hrung" in die pML2-Umgebung
	// und/oder nicht mit Ber�hrungspunkt
	while (mark != SCHNITT && mark != RAND_UMG
		   && !(mark == BERUE_UMG && bWechsel));

// Teil der Kontur von pML2 an pKVFl anh�ngen
	_KAF[0].AddKonturTeil (pML2, lAnfId2, ii, -1);

// Index des pML1-Punktes, der mit dem letzten hinzugef�gten Punkt pML2[ii] 
// �bereinstimmt
	i = pML2->GetRefInd(ii);
	_ASSERTE(i >= 0);
}

// Hilfsroutine f�r EFlaeche :: EnthaltenIn()
template <typename KoOrdT>
inline WMPosit 
WMFlaeche<KoOrdT>::BeideAussenkonturenIdentisch (WMFlaeche* pFl, int iKAnz) const
{
	_ASSERTE(pFl != 0);	// pPSt kann 0 sein
	if (1 == _Size && 1 == iKAnz)	// this- und pFl-Fl�che haben keine Innenkonturen
		return GLEICH;

	if (_Size > 1 && 1 == iKAnz)
		return INNERHB;

	if (1 == _Size && iKAnz > 1)
		return INNAUSS;

// es bleibt:   iKAnz > 1 && _Size > 1
// daf�r sind immer noch INNAUSS, INNERHB, KONTUR und GLEICH m�glich
bool bLeer, bAbbr;	// Parameter von Aufbereitung2(); werden hier nicht ausgewertet
bool bOverlap;		// Parameter von KantenPosit(); werden
int iTouchOut;		// hier nicht ausgewertet

// piKennz ist ein 2-dimensionales Feld (Vektor von Vektoren) mit
//   1. Index: Indizes der this-Insel   } jeweils von 0 ... KantenAnz()-2;
//   2. Index: Indizes der pFl-Insel    }  deswegen �berall i-1 bzw. ii-1
// die Belegung von piKennz hat folgende Bedeutung:
//   -1  noch unklar (Initialisierung)
//    0  zur i-ten bzw. ii-ten Insel gibt es eine Insel der "anderen" Fl�che, die haarscharf
//       auf dieser Insel liegt (Inseln, zu der es eine deckungsgleiche Insel der "anderen"
//       Fl�che gibt, werden aus der weiteren Betrachtung heraus gelassen)
//    1  die i-te Insel liegt au�erhalb der ii-ten Insel
//    2  die i-te Insel umschlie�t die ii-te Insel
vector<vector<int> > piKennz;

	piKennz.resize (_Size-1);	// Gr��e des Feldes anlegen
	for (size_t i = 0; i < piKennz.size(); i++)
		piKennz[i].resize (iKAnz-1);

	for (i = 1; i < _Size; i++)	// Initialisierung
		for (int ii = 1; ii < iKAnz; ii++)
			piKennz[i-1][ii-1] = -1;

	for (i = 1; i < _Size; i++)
		for (int ii = 1; ii < iKAnz; ii++) {
			if (0 == piKennz[i-1][ii-1])
				continue;

		WMMarkLine ML1 (_KAF[i].ASP(), i, true);
		WMMarkLine ML2 (pFl->KA(ii).ASP(), ii, true);

			_ASSERTE(!(!ML1.Vektor() || !ML2.Vektor()));
			if (!_KAF[i].Aufbereitung2 (&pFl->KA(ii), &ML1, &ML2, bLeer, bAbbr, 0))
			{
				if (bLeer) {
				// Container beider Konturen sind durchschnittsleer
					piKennz[i-1][ii-1] = 1;
					continue;
				}
				else
					return UNKLAR;
			}

		WMPosit posLage = KantenPosit (&pFl->KA(ii), &ML1, bOverlap, iTouchOut);

			if (INNAUSS == posLage || INNERH == posLage || INNERHB == posLage)
				return INNAUSS;

			if (UNKLAR == posLage)
				return UNKLAR;

			if (KONTUR == posLage) {
				for (int jj = 1; jj < iKAnz; jj++)
					piKennz[i-1][jj-1] = 0;

				for (int j = 1; j < _Size; j++)
					piKennz[j-1][ii-1] = 0;
				break;	// n�chste KA(i)-Insel
			}

			_ASSERTE(piKennz[i-1][ii-1] == -1);

			if (AUSSERH == posLage || AUSSERHB == posLage)
				piKennz[i-1][ii-1] = 1;
			else	// UMSCHL == posLage || UMSCHLB == posLage
				piKennz[i-1][ii-1] = 2;
		}

// nachfolgender Test kann NICHT gleich mit der vorangegangenen for-Schleife 
// abgefangen werden, da die Kennzeichnungen "1" bzw. "2" nachtr�glich noch 
// auf "0" gesetzt werden k�nnen, da sich erst SP�TER herausstellen kann, 
// da� es zu einer Insel eine deckungsgleiche Insel der "anderen" Fl�che gibt
bool bAusser = false;	// das Kennzeichen piKennz[][] == 1 tritt auf, d.h. 
						// mindestens einmal war posLage == AUSSERH bzw. 
						// posLage == AUSSERHB (true)
bool bUmschl = false;	// das Kennzeichen piKennz[][] == 2 tritt auf, d.h. 
						// mindestens einmal war posLage == UMSCHL bzw. 
						// posLage == UMSCHLB (true)

	for (i = 1; i < _Size; i++)
		for (int ii = 1; ii < iKAnz; ii++) {
		int iKZ = piKennz[i-1][ii-1];

			if (1 == iKZ)
				bAusser = true;
			else if (2 == iKZ)
				bUmschl = true;
		}

	if (!bAusser) {
		if (bUmschl)
			return INNERHB;

	// bAusser == false && bUmschl == false
		if (_Size == iKAnz)
			return GLEICH;

		if (_Size > iKAnz)
			return INNERHB;

		if (_Size < iKAnz)
			return INNAUSS;
	}

// bAusser == true, d.h. es bleibt immer noch INNAUSS und INNERHB
// Wenn es mindestens eine KA(ii)-Insel der pFl-Bezugsfl�che gibt, f�r die f�r 
// ALLE KA(i)-Inseln piKennz[i][.] == 1 gilt, dann INNAUSS, sonst INNERHB
	for (int ii = 1; ii < iKAnz; ii++) {
	bool bAllNull = true;	// es gilt piKennz[.][ii] == 0 f�r alle i

		for (int i = 1; i < _Size; i++) {
		int iKZ = piKennz[i-1][ii-1];

			if (0 == iKZ) 
				continue;
			bAllNull = false;
			if (1 != iKZ) 
				break;
		}

		if (i == _Size && !bAllNull)
			return INNAUSS;
	}
	return INNERHB;
}

// 19.10.98: Hilfsroutine zu EFlaeche::EnthaltenIn() f�r folgenden Fall:
// this-Fl�che liegt innerhalb der pFl-Au�enkontur und und bez. der pFl-
// Innenkonturen gilt mindestens einmal UMSCHL bzw. UMSCHLB (diese 
// pFl-Innenkonturen sind in piInsel aufgelistet); f�r das Verh�ltnis der 
// this-Fl�che bez. der pFl-Fl�che gilt dann
//   INNERH,  wenn zu allen diese pFl-Innenkonturen auch this-Innenkonturen mit UMSCHL
//            existieren
//   INNERHB, wenn zu allen diese pFl-Innenkonturen auch this-Innenkonturen mit UMSCHLB bzw.
//            KONTUR existieren
//   INNAUSS  in allen �brigen F�llen
template <typename KoOrdT>
inline WMPosit 
WMFlaeche<KoOrdT>::EnthaltenInWeiter (WMFlaeche* pFl, int* piInsel) const
{
	_ASSERTE(pFl != 0);
	_ASSERTE(piInsel != 0);

	if (0 == piInsel[0] || 1 == _Size) 
		return UNKLAR;

bool bAbbr = false;		// true: Abbruch der while-Schleife
int k = 0;				// Laufindex f�r piInsel
bool bOverlap;			// Parameter von LageKonturZuKontur(); werden hier
int iTouchOut;			// nicht ausgewertet
bool bInnerhB = false;	// this-Fl�che liegt bez. der pFl-Fl�che INNERHB (true)

// Lage der pFl-Inseln, die innerhalb der this-Au�enkontur liegen, zu den this-Inseln
	while (0 != piInsel[k])	{	// pFl-Inseln
	bool bInn = false;	// this-Insel liegt bez. einer pFl-Insel INNERH (true)
	bool bInnB = false;	// this-Insel liegt bez. einer pFl-Insel INNERHB (true)
	int i = piInsel[k];	// Index f�r die pFl-Inseln, die innerhalb der this-Au�enkontur liegen 

		for (int ii = 1; ii < _Size; ii++) {	// this-Inseln
		WMMarkLine ML1 (pFl->KA(i).ASP(), i, true);
		WMMarkLine ML2 (_KAF[ii].ASP(), ii, true);

			_ASSERTE(!(!ML1.Vektor() || !ML2.Vektor()));

		WMPosit posLage = pFl->KA(i).LageKonturZuKontur (&_KAF[ii], &ML1, &ML2, 
			bOverlap, iTouchOut);

			if (INNERH == posLage) {
				bInn = true;
				break;
			}
			else if (INNERHB == posLage || KONTUR == posLage || GLEICH == posLage) {
				bInnB = true;
				bInnerhB = true;
				break;
			}
			else if (OFFEN == posLage || UNKLAR == posLage)	{
				_ASSERTE(posLage != OFFEN);
				_ASSERTE(posLage != UNKLAR);
				return UNKLAR;
			}
		} // for

		if (!bInn && !bInnB)
			return INNAUSS;

		k++;
	} // while

	if (bInnerhB)
		return INNERHB;
	return INNERH;
}

// Memberfunktionen von GeoFlaeche

// this-Fl�che wird durch pSKt-EKante geschnitten
// Test, ob die Objektcontainer der this-Fl�che und der schneidenden pSKt-EKante
// durchschnittsleer sind, wird in Routine Aufbereitung1() durchgef�hrt und dabei 
// au�erdem der Prozentz�hler weitergestellt
template <typename KoOrdT>
inline bool 
WMFlaeche<KoOrdT>::ClippingMitKante (WMKante<KoOrdT>* pSKt, 
	WMClipListe<KoOrdT>& CL, int iSkip, bool& bAbbr, void* pPSt)
{
	_ASSERTE(pSKt != 0);	// pPSt kann 0 sein

bool bRet = false;	// return-Wert

// aus St�tzpunktfolge der this-Fl�chenkontur wird Vektor pML1, aus 
// St�tzpunktfolge der pSKt-EKante wird Vektor pML2 mit markierten Punkten 
// erzeugt; diese Vektoren werden in Aufbereitung1() evtl. noch erweitert
bool bClosed = (pSKt->SP(0) == pSKt->SP(pSKt->ASP()-1));
WMMarkLine ML1 (_KAF[0].ASP(), 0);
WMMarkLine ML2 (pSKt->ASP(), -1, bClosed);

	_ASSERTE(!(!ML1.Vektor() || !ML2.Vektor()));

// pML1 und pML2 werden evtl. durch Routine Aufbereitung1() modifiziert; 
// zur�ckgegeben werden die um die Schnittpunkte erweiterten Vektoren pML1 
// und pML2
	if (!_KAF[0].Aufbereitung1 (pSKt, &ML1, &ML2, bAbbr, pPSt)) 
		return false;

// Routine FlaecheZerlegt() ermittelt, ob die zu schneidende this-Fl�che (pML1) 
// �berhaupt durch die schneidende pSKt-EKante (pML2) zerlegt wird (true) oder 
// nicht
	if (FlaecheZerlegt (pSKt, &ML1))
		bRet = TeilFlaechen1 (&ML1, &ML2, CL);

// Inseln der this-Fl�che (evtl.) ber�cksichtigen
	if (bRet &&		// Teilfl�chen wurden erzeugt
		_Size > 1)	// this-Fl�che hat Inseln
		InselnBeiSchnittMitKante (CL, iSkip);

	return bRet;
}

// this-Fl�che wird durch pSFl-Fl�che geschnitten
// Test, ob die Objektcontainer der this-Fl�che und der schneidenden pSFl-Fl�che
// durchschnittsleer sind, wird in Routine Aufbereitung2() durchgef�hrt und 
// dabei au�erdem der Prozentz�hler weitergestellt
template <typename KoOrdT>
inline bool 
WMFlaeche<KoOrdT>::ClippingMitFlaeche (WMFlaeche* pSFl, unsigned long ulLageAusw, 
	WMClipListe<KoOrdT>& CL, int iSkip, WMPosit& posLage, bool& bAbbr, void* pPSt)
{
	_ASSERTE(pSFl != 0); 	// pPSt != 0 wird weiter unten gestestet

// aus St�tzpunktfolge der this-Fl�chenkontur wird Vektor pML1, aus St�tzpunkt-
// folge der pSFl-Fl�che wird Vektor pML2 mit markierten Punkten erzeugt; diese 
// Vektoren werden in Aufbereitung2() evtl. noch erweitert
WMMarkLine ML1 (_KAF[0].ASP(), 0);
WMMarkLine ML2 (pSFl->KA(0).ASP(), 0);

	_ASSERTE(!(!ML1.Vektor() || !ML2.Vektor()));

// pML1 und pML2 werden evtl. durch Routine Aufbereitung2() modifiziert; 
// zur�ckgegeben werden die um die Schnittpunkte erweiterten Vektoren pML1 
// und pML2
bool bLeer;		// Container der beiden mit Aufbereitung2() verglichenen 
				//  Objekte sind durchschnittsleer (true)

	if (!_KAF[0].Aufbereitung2 (&pSFl->KA(0), &ML1, &ML2, bLeer, bAbbr, pPSt)) {
		if (bLeer)	// beide Container sind durchschnittsleer
			posLage = AUSSERH;
		else 
			posLage = UNKLAR;
		return false;
	}

// Routine KantenPosit() ermittelt, ob die Au�enkontur der zu schneidenden 
// this-Fl�che pML1 �berhaupt durch die Au�enkontur der pSFl-Fl�che zerlegt 
// wird (posLage == INNAUSS) oder nicht; in letzterem Fall liegt this-Fl�che 
// au�erhalb (AUSSERH bzw. AUSSERHB) bzw. innerhalb (INNERH bzw. INNERHB) 
// von pSFl; f�r posLage == UMSCHL bzw. UMSCHLB liegt pSFl vollst�ndig 
// innerhalb der this-Fl�che, d.h. die this-Fl�che umschlie�t pSFl
bool bOverlap;	// this-Fl�che hat mit der pSFl-Au�enkontur einen 
				// �berlappungsbereich
int iTouchOut;	// iTouchOut Ber�hrungspunkte mit "Zuf�hrung" aus der Umgebung 
				// der pSFl-Au�enkontur gemeinsam

	posLage = KantenPosit (&pSFl->KA(0), &ML1, bOverlap, iTouchOut);

// keine Zerlegung
	if (posLage == AUSSERH || posLage == AUSSERHB)
		return false;

// Spezialfall: die zu schneidende this-Fl�che liegt innerhalb der Au�enkontur 
// der schneidenden pSFl-Fl�che; es ist noch zu pr�fen, ob this-Fl�che in eine 
// pSFl-Insel hineinragt
	if (INNERH == posLage || INNERHB == posLage || KONTUR == posLage || 
		GLEICH == posLage)
	{
		return MesserAusserhalb (pSFl, ulLageAusw, CL, iSkip);
	}

// Spezialfall: schneidende pSFl-Fl�che liegt innerhalb der Au�enkontur der 
// zu schneidenden this-Fl�che
	if (posLage == UMSCHL || posLage == UMSCHLB) {
	bool bEnde;	// true, wenn durch Routine MesserInnerhalb() alles erledigt wurde
	bool bRet =	MesserInnerhalb (pSFl, ulLageAusw, CL, iSkip, bOverlap, iTouchOut, bEnde);

		if (bEnde)
			return bRet;
	}

// Zerlegen in Teilfl�chen
bool bRet =	TeilFlaechen2 (&ML1, &ML2, ulLageAusw, CL);

// Inseln ber�cksichtigen
	if (bRet &&									// Teilfl�chen wurden erzeugt
		(_Size > 1 || pSFl->KantenAnz() > 1))	// wenigstens eine Fl�che hat Inseln
	{
		if (ulLageAusw & LINN)
			InselnBeiSchnittMitFlaeche (pSFl, CL, iSkip);
		if (ulLageAusw & LAUSS)
			InselnBeiSchnittMitFlaecheAUSS (pSFl, CL, iSkip);
	}
	return bRet;
}

// Hilfsroutine f�r GeoFlaeche::ClippingMitFlaeche() f�r den Fall, da� 
// schneidende pSFl-Fl�che innerhalb der Au�enkontur der zu schneidenden 
// this-Fl�che liegt; werden Teilfl�chen in CL eingetragen, wird true 
// zur�ckgegeben, sonst false
template <typename KoOrdT>
inline bool 
WMFlaeche<KoOrdT>::MesserInnerhalb (WMFlaeche* pSFl, unsigned long ulLageAusw, 
	WMClipListe<KoOrdT>& CL, int iSkip, bool bOverlap, int iTouchOut, bool& bEnde)
{
	_ASSERTE(pSFl != 0);

	bEnde = true;

// Test, ob pSFl-Au�enkontur nicht vielleicht innerhalb einer this-Insel liegt, 
// dann w�re kein Schnitt m�glich
bool bOver;	// Parameter von LageKonturZuKontur(); werden
int iTouch;	// hier nicht ausgewertet

	for (int i = 1; i < _Size; i++) {		// this-Inseln
	WMMarkLine ML1 (pSFl->KA(0).ASP(), 0);
	WMMarkLine ML2 (_KAF[i].ASP(), i, true/*, false*/);

		_ASSERTE(!(!ML1.Vektor() || !ML2.Vektor()));

	WMPosit posLage = pSFl->KA(0).LageKonturZuKontur (&_KAF[i], &ML1, &ML2, bOver, iTouch);

		if (INNERH == posLage || INNERHB == posLage || KONTUR == posLage ||
			GLEICH == posLage || OFFEN == posLage || UNKLAR == posLage)
		{
			return false;	// kein Schnitt m�glich
		}
		if (INNAUSS == posLage || UMSCHL == posLage || UMSCHLB == posLage)	// 28.10.98
			break;
	} // for

int iKAnz = pSFl->KantenAnz();
bool bRet = false;	// return-Wert dieser Routine

// Wenn "innerhalb" gew�hlt wurde, dann ist die Au�enkontur der Ergebnisfl�che 
// der Teil der this-Fl�che, der innerhalb von pSFl liegt, d.h. pSFl-
// Au�enkontur mit Identifikator der this-Fl�che
	if (ulLageAusw & LINN) {
	WMFlaeche<KoOrdT> NewArea (&pSFl->KA(0), 1);

		NewArea.AddClipObjekt (CL);

	// Inseln ber�cksichtigen
		if (_Size > 1 || iKAnz > 1)	// wenigstens eine Fl�che hat Inseln
			InselnBeiSchnittMitFlaeche (pSFl, CL, iSkip);
		bRet = true;
	}
			
// Wenn "au�erhalb" gew�hlt wurde und beide Au�enkonturen sich h�chstens in 
// einem Punkt ber�hren, dann entstehen als Ergebnisfl�chen die this-Au�enkontur 
// mit der pSFl-Au�enkontur als Insel sowie die pSFl-Innenkonturen als separate 
// Fl�chen, zu denen dann noch die this- bzw. pSFl-Inseln hinzuzunehmen sind.
	if (ulLageAusw & LAUSS) {
		if (iTouchOut <= 1 && !bOverlap) {	
		// beide Au�enkonturen ber�hren sich h�chstens in einem Punkt
		WMFlaeche<KoOrdT> NewArea (&pSFl->KA(0), 1);
		WMFlaeche<KoOrdT> GF (&_KAF[0], 1);		// 02.06.99

		// eine Au�enkontur wird zur Innenkontur, deshalb Orientierung drehen
			NewArea.OrientDreh (0);
			GF.AddKante (NewArea, 1, -1);	// als Insel hinzuf�gen
			GF.AddClipObjekt (CL);

		// Inseln ber�cksichtigen
			if (_Size > 1 || iKAnz > 1)	// wenigstens eine Fl�che hat Inseln
				InselnBeiSchnittMitFlaecheAUSS (pSFl, CL, iSkip);
			bRet = true;
		}
		else
			bEnde = false;	// Weiterbearbeitung mit Routine TeilFlaechen2() 
							// erforderlich
	}
	return bRet;
}

// Hilfsroutine f�r InselZweiteFlaecheAUSS() f�r den Fall, da� schneidende 
// pSFl-Insel pKont innerhalb der this-Au�enkontur liegt; dann noch Test, wie 
// pKont zu den this-Innenkonturen liegt. R�ckgabe von true, wenn in CL weitere 
// Schnittergebnisse eingetragen werden.
template <typename KoOrdT>
inline bool 
WMFlaeche<KoOrdT>::MesserinselInnerhalb (WMKante<KoOrdT>* pKont, int iKInd, 
	WMClipListe<KoOrdT>& CL, int iSkip)
{
	_ASSERTE(pKont != 0);

bool bOverlap;	// Parameter von LageKonturZuKontur(); werden
int iTouchOut;	// hier nicht ausgewertet

// Test, ob pSFl-Insel pKont nicht vielleicht innerhalb einer this-Insel liegt, 
// dann w�re kein Schnitt m�glich
	for (int i = 1; i < _Size; i++)	{
	// this-Inseln
	WMMarkLine ML1 (pKont->ASP(), iKInd, true);
	WMMarkLine ML2 (_KAF[i].ASP(), i, true);

		_ASSERTE(!(!ML1.Vektor() || !ML2.Vektor()));

	WMPosit posLage = pKont->LageKonturZuKontur (&_KAF[i], &ML1, &ML2, bOverlap, iTouchOut);

		if (INNERH == posLage || INNERHB == posLage || KONTUR == posLage || 
			GLEICH == posLage)
		{
			return false;	// kein Schnitt m�glich
		}
	} // for

WMFlaeche<KoOrdT> NewArea (&pKont, 1);

	NewArea.OrientDreh (0);			// Insel wird zur Au�enkontur, deshalb drehen
	NewArea.AddClipObjekt (CL);

	if (_Size > 1)
		InselnBeiSchnittMitKante (CL, iSkip);	// this-Inseln ber�cksichtigen

	return true;
}

// Hilfsroutine f�r GeoFlaeche::ClippingMitFlaeche() f�r den Fall, da� zu 
// schneidende this-Fl�che innerhalb der Au�enkontur der schneidende pSFl-Fl�che 
// liegt; R�ckgabe von true, wenn geschnitten wurde und damit Schnittergebnisse 
// in CL eingetragen wurden, ansonsten false
template <typename KoOrdT>
inline bool 
WMFlaeche<KoOrdT>::MesserAusserhalb (WMFlaeche* pSFl, unsigned long ulLageAusw, 
		WMClipListe<KoOrdT>& CL, int iSkip)
{
	_ASSERTE(pSFl != 0);

int iKAnz = pSFl->KantenAnz();

	if (iKAnz == 1) return false;
	
// Feld f�r die Indizes der pSFl-Inseln, die noch mit den this-Inseln zu 
// vergleichen sind
int k = 0;		// Laufindex f�r piInsel
vector<int> piInsel(iKAnz, 0);	
bool bOverlap;	// Parameter von LageKonturZuKontur(); werden
int iTouchOut;	// hier nicht ausgewertet

// Lage der pSFl-Inseln zu der this-Au�enkontur
	for (int i = 1; i < iKAnz; i++)	{		// pSFl-Inseln
	WMMarkLine ML1 (pSFl->KA(i).ASP(), i, true);
	WMMarkLine ML2 (_KAF[0].ASP(), 0);

		_ASSERTE(!(!ML1.Vektor() || !ML2.Vektor()));

	WMPosit posLage = pSFl->KA(i).LageKonturZuKontur (&_KAF[0], &ML1, &ML2, 
		bOverlap, iTouchOut);

		if (posLage == INNAUSS)	{
			if (ulLageAusw & LINN) {	// Schnittergebnis "innerhalb"
			WMFlaeche<KoOrdT> NewArea (&_KAF[0], 1);

			// this-Au�enkontur nach CL
				NewArea.AddClipObjekt (CL);
				InselnBeiSchnittMitFlaeche (pSFl, CL, iSkip);
				return true;
			}
			else {
			// Schnittergebnis "au�erhalb"
				InselnBeiSchnittMitFlaecheAUSS (pSFl, CL, iSkip);	// erst ab 11.09.98
				return true;
			}
		}

	// eine pSFl-Insel liegt innerhalb der this-Au�enkontur, deshalb sind die 
	// this-Inseln noch zu Rate zu ziehen
		if (posLage == INNERH || posLage == INNERHB) {
			piInsel[k] = i;
			k++;
			continue;
		}

		// eine pSFl-Insel umschlie�t die this-Au�enkontur
		if (UMSCHL == posLage || UMSCHLB == posLage || KONTUR == posLage ||
			GLEICH == posLage || OFFEN == posLage || UNKLAR == posLage)
		{
			return false;	// kein Schnitt m�glich
		}
	} // for

// noch weitere Tests mit den this-Innenkonturen (so sie vorhanden sind)
	if (0 != piInsel[0])	// 29.10.98
		MesserAusserhalbWeiter (pSFl, ulLageAusw, CL, iSkip, piInsel.begin());

	return true;	// 11.09.98 ("true", weil sonst die Originalobjekte nicht angezeigt werden)
}

// Hilfsroutine f�r MesserAusserhalb() f�r den Fall, da� mindestens eine 
// pSFl-Insel innerhalb der this-Au�enkontur liegt; wenn f�r mindestens eine 
// dieser pSFl-Inseln gilt, da� sie nicht innerhalb einer this-Insel liegen, 
// kann geschnitten werden;
// R�ckgabe von true, wenn geschnitten wurde und damit Schnittergebnisse in CL 
// eingetragen wurden, ansonsten false
template <typename KoOrdT>
inline bool 
WMFlaeche<KoOrdT>::MesserAusserhalbWeiter (WMFlaeche* pSFl, 
	unsigned long ulLageAusw, WMClipListe<KoOrdT>& CL, int iSkip, int* piInsel) 
{
	_ASSERTE(pSFl != 0);
	_ASSERTE(piInsel != 0);

	if (0 == piInsel[0]) 
		return false;	// 29.10.98

bool bAbbr = false;	// true: Abbruch der while-Schleife
int k = 0;			// Laufindex f�r piInsel
bool bOverlap;		// Parameter von LageKonturZuKontur(); werden hier
int iTouchOut;		// nicht ausgewertet

// Lage der pSFl-Inseln, die innerhalb der this-Au�enkontur liegen, zu den this-Inseln
	while (0 != piInsel[k])	{	// pSFl-Inseln
	int i = piInsel[k];			// Index f�r die pSFl-Inseln, die innerhalb der 
								// this-Au�enkontur liegen 

		for (int ii = 1; ii < _Size; ii++) {	// this-Inseln
		WMMarkLine ML1 (pSFl->KA(i).ASP(), i, true);
		WMMarkLine ML2 (_KAF[ii].ASP(), ii, true);

			_ASSERTE(!(!ML1.Vektor() || !ML2.Vektor()));

		WMPosit posLage = pSFl->KA(i).LageKonturZuKontur (&_KAF[ii], &ML1, &ML2, 
			bOverlap, iTouchOut);

			if (INNERH == posLage || INNERHB == posLage || KONTUR == posLage ||
				GLEICH == posLage || OFFEN == posLage || UNKLAR == posLage)
			{
			// for-Schleife abbrechen, da getestete pSFl-Insel innerhalb einer 
			// this-Insel liegt; es mu� aber einer pSFl-Insel gefunden werden, 
			// die au�erhalb von allen this-Inseln liegt
				bAbbr = true;
				break;
			}

			if (posLage == INNAUSS)	{	// 15.03.99
				bAbbr = false;
				break;
			}
		} // for

		if (bAbbr) 
			k++;
		else {
		// wenn for-Schleife nicht abgebrochen wurde, gibt es mindestens eine 
		// pSFl-Insel, die nicht innerhalb einer this-Insel liegt, d.h. es kann 
		// geschnitten werden und deshalb gleich while-Schleife abbrechen
			break;
		}
	} // while

	if (bAbbr) 
		return false;	// kein Schnitt m�glich

bool bRet1 = false;	// return-Werte
bool bRet2 = false;

	if (ulLageAusw & LINN) {	// Schnittergebnis "innerhalb"
		AddClipObjekt (CL);					// this-Fl�che nach CL
		pSFl->InselnInnerhalb (CL, iSkip);	// pSFl-Inseln noch ber�ckichtigen
		bRet1 = true;
	}

	if (ulLageAusw & LAUSS)		// Schnittergebnis "au�erhalb" (29.10.98)
		bRet2 = InselZweiteFlaecheAUSS (pSFl, CL);

	return bRet1 || bRet2;
}

// Wenn bei Schnitt der this-Fl�che durch die pSFl-Fl�che die Schnittergebnisse 
// au�erhalb der schneidenden Fl�che liegen sollen, wird hier gepr�ft, wie die 
// pSFl-Inseln zur this-Fl�che (NICHT zu den CL-Fl�chen) liegen.
// Wenn weitere Schnittergebnisse in CL eingetragen werden, dann wird true 
// zur�ckgegeben, sonst false.
// Ich hoffe, da� durch folgende k�hne �berlegung alle denkbaren F�lle 
// abgefangen werden:
// Aus jeder SFl-Insel wird eine neue schneidende Fl�che (ohne Inseln !) 
// gebildet, die die this-Fl�che (i.a. mit Inseln) mit "innerhalb" schneidet. 
// Die Ergebnisse werden erst in einer Zwischenliste CLZw abgelegt und dann 
// nach CL �bertragen !!!!!
template <typename KoOrdT>
inline bool 
WMFlaeche<KoOrdT>::InselZweiteFlaecheAUSS (WMFlaeche* pSFl, 
	WMClipListe<KoOrdT>& CL)
{
	_ASSERTE(pSFl != 0);

int iKAnz = pSFl->KantenAnz();

	if (iKAnz == 1) 
		return false;

bool bOverlap;		// Parameter von LageKonturZuKontur(); werden
int iTouchOut;		// hier nicht ausgewertet
bool bRet = false;	// return-Wert dieser Routine
WMClipListe<KoOrdT> CLZw;		// ClipListe f�r Zwischenergebnisse

// Test, ob sich eine pSFl-Insel mit der this-Au�enkontur schneidet
	for (int i = 1; i < iKAnz; i++) {
	WMMarkLine ML1 (_KAF[0].ASP(), 0);
	WMMarkLine ML2 (pSFl->KA(i).ASP(), i, true);

		_ASSERTE(!(!ML1.Vektor() || !ML2.Vektor()));

	WMPosit posLage = _KAF[0].LageKonturZuKontur (&pSFl->KA(i), &ML1, &ML2, 
		bOverlap, iTouchOut);

	// keine weiteren Schnittergebnisse, wenn die zu schneidende this-Fl�che 
	// innerhalb der schneidenden pSFl-Insel liegt
		if (INNERH == posLage || INNERHB == posLage || KONTUR == posLage ||
			GLEICH == posLage || UNKLAR == posLage || OFFEN == posLage)
		{
			return false;
		}

// wenn die beiden nachfolgenden Zeilen drin blieben, m��te DELETE_OBJ (pML1); 
// DELETE_OBJ (pML2); hinzugef�gt werden (29.10.98)
//		if (posLage == AUSSERH || posLage == AUSSERHB)
//			continue;

	// schneidende pSFl-Insel liegt innerhalb der Au�enkontur der zu schneidenden
	// this-Fl�che; dann Test mit den this-Innenkonturen
		if (posLage == UMSCHL || posLage == UMSCHLB)
			MesserinselInnerhalb (&pSFl->KA(i), i, CLZw, 0);

	// pSFl-Insel schneidet die Au�enkontur der this-Fl�che;
	// dann Schnitt mit der this-Au�enkontur pML1 und Test mit den this-Innenkonturen
		if (posLage == INNAUSS) {
			TeilFlaechen2 (&ML1, &ML2, LINN, CLZw);
			InselnBeiSchnittMitKante (CLZw, 0);	// in CLZw braucht nichts �bergangen zu werden
		}

	// wenn in CLZw Zwischenergebnisse abgelegt wurden, dann diese jetzt nach CL �bernehmen
		if (CLZw.size() > 0) {
		WMClipListe<KoOrdT>::iterator end = CLZw.end();

			for (WMClipListe<KoOrdT>::iterator riz = CLZw.begin(); riz != end; ++riz)
			{
				(*riz)->AddClipObjekt (CL);
			}
			CLZw.clear();
			bRet = true;
		}
	} // for
	return bRet;
}

// Hilfsroutine f�r InselZweiteFlaeche()
template <typename KoOrdT>
inline bool 
WMFlaeche<KoOrdT>::ZweiInselnVereinigen (WMClipListe<KoOrdT>& CL, 
	WMFlaeche*& pNewIsland, WMMarkLine* pML1, WMMarkLine* pML2)
{
	_ASSERTE(pML1 != 0);
	_ASSERTE(pML2 != 0);

WMFlaeche<KoOrdT> UniIsland;

	ContourUnion (pML1, pML2, &UniIsland, false);	// sonst k�nnte "Insel in Insel" entstehen (28.05.99)

int iKCnt = UniIsland.KantenAnz();

	for (int i = 0; i < iKCnt; i++) {
		if (0 == i)	{
			DELETE_OBJ (pNewIsland);
			pNewIsland = new WMFlaeche<KoOrdT>(&UniIsland.KA(i), 1);
		}
		else {
		// Innenkonturen von pUniIsland werden zu separaten Ergebnisfl�chen
		WMFlaeche<KoOrdT> NewArea (&UniIsland.KA(i), 1);

			NewArea.OrientDreh (0);			// Insel wird zur Au�enkontur, deshalb drehen
			NewArea.AddClipObjekt (CL);
		}
	}
	return true;
}

// Memberfunktionen

// Inseln der this-Fl�che bei Schnittoperationen mit Schnittkante 
// ber�cksichtigen; die ersten iSkip Eintr�ge in CL sind dabei zu �bergehen
template <typename KoOrdT>
inline bool 
WMFlaeche<KoOrdT>::InselnBeiSchnittMitKante (WMClipListe<KoOrdT>& CL, 
	int iSkip)
{
bool bModify;	// wird hier nicht ausgewertet

// Feld f�r die Indizes der Inseln, die schon "verbraucht" wurden
vector<int> piVbInsel(_Size, 0);

bool bRet1 = InselnAmRand (CL, iSkip, piVbInsel.begin(), bModify);
bool bRet2 = InselnInnerhalb (CL, iSkip, piVbInsel.begin());

	return bRet1 && bRet2; 
}

// Inseln der this-Fl�che, die am Rand der in CL enthaltenen Schnittergebnisse 
// liegen, bei Schnittoperationen mit Schnittkante ber�cksichtigen; die ersten 
// iSkip Eintr�ge in CL sind dabei zu �bergehen;
// in bModify wird zur�ckgegeben, ob an mindestens einer CL-Fl�che eine 
// Ver�nderung durch "Anknabbern" der Au�enkontur vorgenommen wurde (true), 
// sonst false
template <typename KoOrdT>
inline bool 
WMFlaeche<KoOrdT>::InselnAmRand (WMClipListe<KoOrdT>& CL, int iSkip, 
	int* piVbInsel, bool& bModify)
{
	bModify = false;
	if (0 == CL.size() || 1 == _Size) 
		return true;	// keine Inseln

	_ASSERTE(piVbInsel != 0);

WMClipListe<KoOrdT> CLZw;	// ClipListe f�r Zwischenergebnisse
bool bOverlap;  // Teilfl�che hat mit dem Rand einer this-Insel einen �berlappungsbereich bzw.
int iTouchOut;	// iTouchOut Ber�hrungspunkte mit "Zuf�hrung" aus der _KAF[i]-Umgebung gemeinsam

	for (int i = 1; i < _Size; i++)	{
	// alle Inseln, die noch nicht verbraucht sind
	bool bVerbr = false;	// Insel noch nicht verbraucht

		for (int j = 0; j < _Size-1; j++) {
			if (piVbInsel[j] == i)
			{
				bVerbr = true;	// diese Insel wurde schon verarbeitet
				break;
			}
			if (piVbInsel[j] == 0) 
				break;
		}
		if (bVerbr) 
			continue;

	// do-Schleife f�r alle in CL befindlichen Schnittergebnisse (die ersten 
	// iSkip Eintr�ge in CL sind zu �bergehen)
	WMClipListe<KoOrdT>::iterator ri = CL.begin();
	WMClipListe<KoOrdT>::iterator end = CL.end();

		_ASSERTE(iSkip >= 0 && iSkip < CL.size());	// wenigstens einer mu� noch da sein
		advance(ri, iSkip);
		do {
		bool bDel = false;	// im Zugriff befindliches Teilobjekt (kann Fl�che 
				// aber auch Kante sein) ist aus CL (noch) nicht zu l�schen

			if (OT_KANTE == (*ri)->isA()) {
				++ri;
				continue;
			}

		WMFlaeche<KoOrdT> *pTF = (WMFlaeche<KoOrdT> *)(*ri);

			PartialCleaningForLines (&pTF->KA(0), -1);	// 09.02.99

		// aus St�tzpunktfolge der Au�enkontur der ml-Teilfl�che wird Vektor 
		// pML1, aus _KAF[i]-Insel wird Vektor pML2 mit markierten Punkten 
		// erzeugt; diese Vektoren werden in Aufbereitung2() evtl. noch erweitert
		// Bildung von pML2 mu� innerhalb der do-Schleife erfolgen, da diese 
		// Variable in LageKonturZuKontur() durch Aufbereitung2() ver�ndert wird
		WMMarkLine ML1 (pTF->KA(0).ASP(), 0);
		WMMarkLine ML2 (_KAF[i].ASP(), i, true);

			_ASSERTE(!(!ML1.Vektor() || !ML2.Vektor()));
			
		// Lage der this-Inseln bez. der Teilfl�chen aus CL bestimmen
		WMPosit posLage = pTF->KA(0).LageKonturZuKontur (&_KAF[i], &ML1, &ML2, 
			bOverlap, iTouchOut);

		// gleich schneiden;  es k�nnen dabei mehrere Teilfl�chen entstehen
		// (UMSCHLB statt INNERHB, da Inseln math.neg. orientiert sind)
			if (INNAUSS == posLage ||
				(UMSCHLB == posLage && (bOverlap || iTouchOut > 1)))
			{
				TeilFlaechen2 (&ML1, &ML2, LAUSS, CLZw);
				bDel = true;	// im Zugriff befindliche Teilfl�che soll aus CL gel�scht werden
				bModify = true;	// eine CL-Fl�che wurde modifiziert

			// Insel als verbraucht registrieren
				for (int j = 0; j < _Size-1; j++) {
					if (piVbInsel[j] == i) 
						break;	// Insel ist schon als verbraucht registriert
					if (piVbInsel[j] == 0) {
						piVbInsel[j] = i;
						break;
					}
				}
				_ASSERTE(j < _Size-1);
			}

			if (bDel) {
				ri = CL.erase(ri);	// aktuelle Teilfl�che in CL l�schen (diese wurde durch	die
									//  "angeknabberte" Unter-Teilfl�chen ersetzt)
			} else 
				++ri;
		} while (ri != end);

	// wenn in CLZw Zwischenergebnisse abgelegt wurden, dann diese jetzt nach CL �bernehmen
		if (0 == CLZw.size()) 
			continue;

	WMClipListe<KoOrdT>::iterator endr = CLZw.end();

		for (WMClipListe<KoOrdT>::iterator riz = CLZw.begin(); riz != endr; ++riz)
		{
			(*riz)->AddClipObjekt (CL);
		}
		CLZw.clear();
	} // for
	return true;
}

///////////////////////////////////////////////////////////////////////////////
// Konstruktoren

// nur eine Kante
template <typename KoOrdT>
inline 
WMFlaeche<KoOrdT>::WMFlaeche (WMPunktVec<KoOrdT>* SPF, long Size) :
	_KAF(NULL), _Size(0), _OCont(NULL) 
{
	_ASSERTE(SPF != 0);
	if (Size > 0) {
		_KAF = new WMKante<KoOrdT>[1];   // Kantenfolge immer als Array anlegen !!
		_Size = 1;
		_KAF[0].AddPunkt (SPF, Size, -1);
	}
}

template <typename KoOrdT>
inline 
WMFlaeche<KoOrdT>::WMFlaeche() :
	_KAF(NULL), _Size(0), _OCont(NULL)
{ 
}

// EFlaeche generieren, die nur aus einer Kante besteht
template <typename KoOrdT>
inline 
WMFlaeche<KoOrdT>::WMFlaeche (KoOrdT x[], KoOrdT y[], long Len) :
	_KAF(NULL), _Size(0), _OCont(NULL)
{
	_ASSERTE(x != 0);
	_ASSERTE(y != 0);

	if (Len > 0) {
		_KAF = new WMKante<KoOrdT>[1];   // Kantenfolge immer als Array anlegen !!
		_Size = 1;
		_KAF[0].AddPunkt (x, y, Len, -1);
	}
}

// mehrere Kanten
// Flaeche - Konturfeld der this-EFlaeche
// size    - Anzahl der Konturen dieser Fl�che
template <typename KoOrdT>
inline 
WMFlaeche<KoOrdT>::WMFlaeche (WMKante<KoOrdT> *Flaeche, int size) :
	_KAF(NULL), _Size(0), _OCont(NULL)
{
	if (size != 0 && Flaeche != 0) {
		_KAF = new WMKante<KoOrdT>[size];	// Konturfeld anfordern
		_Size = size;
		for (int i = 0; i < size; i++)		// Kopieren der einzelnen Konturen
			_KAF[i] = Flaeche[i];
	}
}

// Kontur - Feld von Pointern auf die Konturen der this-EFlaeche
// size   - Anzahl der Konturen dieser Fl�che
template <typename KoOrdT>
inline 
WMFlaeche<KoOrdT>::WMFlaeche (WMKante<KoOrdT> ** Kontur, int size) :
	_KAF(NULL), _Size(0), _OCont(NULL)
{
	if (size != 0 && Kontur != 0) {
		_KAF = new WMKante<KoOrdT>[size];	// Konturfeld anfordern
		_Size = size;
		for (int i = 0; i < size; i++)		// Kopieren der einzelnen Konturen
			_KAF[i] = *(Kontur[i]);
	}
}

// Copy-Konstruktor
template <typename KoOrdT>
inline 
WMFlaeche<KoOrdT>::WMFlaeche (const WMFlaeche &newFlaeche) :
	_KAF(NULL), _Size(0), _OCont(NULL)
{
	if (newFlaeche._Size != 0 || newFlaeche._KAF != 0) {
		_KAF = new WMKante<KoOrdT>[newFlaeche._Size];	// Konturenfeld anlegen
		_Size = newFlaeche._Size;

		for (int i = 0; i < newFlaeche._Size; i++)
			_KAF[i] = newFlaeche._KAF[i];
		if (newFlaeche._OCont) 
			_OCont = new WMObjRechteck<KoOrdT>(*newFlaeche._OCont);
	}
}

template <typename KoOrdT>
inline 
WMFlaeche<KoOrdT>::~WMFlaeche (void)
{
	_Size = 0;
	DELETE_VEC (_KAF);
	DELETE_OBJ (_OCont);
}

// Memberfunktionen
template <typename KoOrdT>
inline WMFlaeche<KoOrdT> &
WMFlaeche<KoOrdT>::operator= (const WMFlaeche &newFlaeche)
{
	if (this == &newFlaeche) 
		return;	 // Vorsicht nicht s=s !

	_Size = 0;
	DELETE_VEC (_KAF);
	DELETE_OBJ (_OCont);
	if (newFlaeche._Size == 0 || NULL == newFlaeche._KAF)
		return;

	_KAF = new WMKante<KoOrdT>[newFlaeche._Size];     // Konturenfeld anlegen
	_Size = newFlaeche._Size;
	for (int i = 0; i < newFlaeche._Size; i++)
		_KAF[i] = newFlaeche._KAF[i];

	if (newFlaeche._OCont) 
		_OCont = new WMObjRechteck<KoOrdT>(*newFlaeche._OCont);
}

// liefert Kantenanzahl
template <typename KoOrdT>
inline int 
WMFlaeche<KoOrdT>::KantenAnz (void) const 
{ 
	return _Size;
}

template <typename KoOrdT>
inline long
WMFlaeche<KoOrdT>::ASP() const       // liefert Gesamtanzahl der St�tzpunkte
{
long cnt = 0;

	for (int i = 0; i < KantenAnz(); i++)
		cnt += KA(i).ASP();
	return cnt;
}

template <typename KoOrdT>
inline WMObjRechteck<KoOrdT> 
WMFlaeche<KoOrdT>::GetCont() const
{
	if (_OCont) 
		return *_OCont;
	else {
	WMObjRechteck<KoOrdT> OC (std::numeric_limits<KoOrdT>::max(), 0, 
		std::numeric_limits<KoOrdT>::max(), 0);

		return maxCont(OC);
	}
}

// Berechnung des Fl�cheninhalt einer Fl�chen unter Ber�cksichtigung von 
// Innenkonturen, der bei einem Fehler gleich 0 ist
template <typename KoOrdT>
inline double 
WMFlaeche<KoOrdT>::AreaSize() const
{
// berechne Inhalt der �u�eren Fl�che
double dInhalt = fabs (_KAF[0].PolygonArea());

    if (0 == dInhalt)	// wenn Inhalt nicht berechnet werden konnte,
		return 0;		// mit 0 zur�ck

	if (_Size > 1) {	// Fl�che hat Inseln
		for (int i = 1; i < _Size; i++)					// subtrahiere den Inhalt
			dInhalt -= fabs (_KAF[i].PolygonArea());	// aller Inseln
	}
	return dInhalt;		// mit Differenz zur�ck
}
	
// berechnet den vorzeichenbehafteten Fl�cheninhalt und Schwerpunkt der �u�eren
// Kontur (ohne L�cher) einer Fl�che. Fehler wenn Fl�cheninhalt == 0.0.
template <typename KoOrdT>
inline double 
WMFlaeche<KoOrdT>::SchwerPunkt (WMPunkt<KoOrdT> &Pt) const        
{
// teste Parameter der Fl�che
WMKante<KoOrdT> &Ka = _KAF [0];	   // Referenz auf �u�ere Kante
long Size = Ka.ASP();	   // Anzahl St�tzpunkte

	if ((Ka.SP(0) != Ka.SP(Size - 1)) ||    // wenn AnfPkt versch. EnPkt
			(Size <= 3))	// oder zuwenig Punkte
	{
		return 0.0;			// mit ung�ltigem Wert zur�ck
	}

// kleinste X/Y-Koordinate bestimmen
WMObjRechteck<KoOrdT> OC (Ka.GetCont()); // Koordinaten bestimmen und
KoOrdT Xmin = OC.XMin();	 // lesen
KoOrdT Ymin = OC.YMin();

// Schwerpunkt u. Fl�cheninhalt berechnen
double Xs, Ys, Xsi, Ysi, Inh;   // Schwerpunkt-Koordinaten, Fl�cheninhalt
double FlI;						// Fl�cheninhalt

	Xs = Ys = FlI = 0.0;	    // Werte definiert initialisieren
	for (long i = 0; i < (Size - 1); i++) { // f�r alle Punkte der Folge
	// akt. Koordinaten lesen
	double X1 = double (Ka.SP(i).X()   - Xmin),
	       Y1 = double (Ka.SP(i).Y()   - Ymin),
	       X2 = double (Ka.SP(i+1).X() - Xmin),
	       Y2 = double (Ka.SP(i+1).Y() - Ymin);

	// Zwischenwerte berechnen
		if ((Y1 + Y2) != 0) {      // wenn Berechnung m�glich
			Xsi = X1 + ((X2 - X1) * ((2.0 * Y2) + Y1)) / (3.0 * (Y1 + Y2));
			Ysi = ((Y1 * Y1) + (Y1 * Y2) + (Y2 * Y2)) / (3.0 * (Y1 + Y2));
			Inh = (X1 - X2) * (Y1 + Y2) * 0.5;

		} else 
			Xsi = Ysi = Inh = 0.0;      // alle Werte 0 setzen

	// Zwischenwerte aktualisieren
		Xs += Xsi * Inh;	// Schwerpunkt
		Ys += Ysi * Inh;
		FlI += Inh;			// Inhalt der Fl�che
	}

// Endkoordinaten berechnen
	if (FlI == 0.0) {	     // wenn Fl.-Inhalt ung�ltig
//		DEX_Error (RC_SchwPktMasche, EC_NOSCHWERPUNKT);	// Fehlermeldung ausg.
		_ASSERTE(FlI != 0.0);
		return 0.0;
	} 
	else {
		Pt = WMPunkt<KoOrdT> (KoOrdT((Xs / FlI) + Xmin + 0.5),	// Koordinaten
					 KoOrdT((Ys / FlI) + Ymin + 0.5));	// runden u. zur�ck
		return FlI;
	}
}

// umschlie�endes Rechteck
template <typename KoOrdT>
inline WMObjRechteck<KoOrdT> &
WMFlaeche<KoOrdT>::maxCont (WMObjRechteck<KoOrdT> &OC) const 
{
	for (int i = 0; i < _Size; i++)
		_KAF[i].maxCont(OC);

	return OC;
}

// k.g. Rechteck (Schnitt)
template <typename KoOrdT>
inline WMObjRechteck<KoOrdT> &
WMFlaeche<KoOrdT>::minCont (WMObjRechteck<KoOrdT> &OC) const 
{
	for (int i = 0; i < _Size; i++)
		_KAF[i].minCont(OC);

	return OC;
}

// WMKante n liefern
template <typename KoOrdT>
inline WMKante<KoOrdT> &
WMFlaeche<KoOrdT>::KA (int n) const 
{  
	_ASSERTE(n >= 0 && n < _Size); 
	return _KAF[n];
}

// interne Werte modifizieren

// Hinzuf�gen einer EFlaeche (z.B. inneres Loch in Fl�che)
// Flaeche - Kantenfeld der this-EFlaeche
template <typename KoOrdT>
inline void 
WMFlaeche<KoOrdT>::AddKante (WMFlaeche const &Flaeche, int Anzahl, int Index)
{
	if (Index == -1)	// ans Ende anh�ngen
		Index = _Size;

	_ASSERTE(!(Anzahl == 0 || Flaeche._KAF == 0 || Index < 0 || Index > _Size));

int i, j;
WMKante<KoOrdT> *newKAF = new WMKante<KoOrdT>[_Size + Anzahl];

	--Index;	// besser zu verwenden
	for (i = 0; i <= Index; i++)
		newKAF[i] = _KAF[i];			// Beginn kopieren
	for (j = 0; j < Anzahl; i++, j++)
		newKAF[i] = Flaeche._KAF[j];    // Einf�gen
	for (j = Index +1; i < _Size + Anzahl; i++, j++)
		newKAF[i] = _KAF[j];			// Rest kopieren

	DELETE_VEC(_KAF);
	_Size += Anzahl;
	_KAF = newKAF;
}

// nur eine Kante in EFlaeche einf�gen
template <typename KoOrdT>
inline void 
WMFlaeche<KoOrdT>::AddKante (KoOrdT x[], KoOrdT y[], long Len, int Index)
{
	if (Index == -1)	// ans Ende anh�ngen
		Index = _Size;

	_ASSERTE(!(Len == 0 || Index < 0 || Index > _Size));

int i, j;
WMKante<KoOrdT> *newKAF = new WMKante<KoOrdT>[_Size + 1];

	--Index;	// besser zu verwenden
	for (i = 0; i <= Index; i++)
		newKAF[i] = _KAF[i];	  				// Beginn kopieren
	newKAF[i++] = WMKante<KoOrdT>(x, y, Len);	// Einf�gen
	for (j = Index +1; i <= _Size; i++, j++)
		newKAF[i] = _KAF[j];					// Rest kopieren

	DELETE_VEC (_KAF);
	_Size++;
	_KAF = newKAF;
}

// Innenkontur(en) einer Fl�che l�schen
// 1 <= iAnzahl < _Size Innenkonturen werden ab Konturindex 1 <= iIndex < _Size 
// gel�scht; f�r iIndex == -1 wird letzte Innenkontur gel�scht sollen mehr 
// Innenkonturen gel�scht werden als vorhanden sind, werden die Innenkonturen 
// ab iIndex bis zur letzten gel�scht
template <typename KoOrdT>
inline void 
WMFlaeche<KoOrdT>::SubKante (int iAnzahl, int iIndex)
{
	if (iIndex == -1 && _Size > 1)   // letzte Innenkontur l�schen
		iIndex = _Size-1;

	if (_Size - iIndex < iAnzahl)		// es sollen mehr Innenkonturen gel�scht werden
		iAnzahl = _Size - iIndex;		// als ab iIndex noch vorhanden sind

	_ASSERTE(iAnzahl >= 1);
	_ASSERTE(iAnzahl < _Size);
	_ASSERTE(iIndex >= -1);
	_ASSERTE(iIndex != 0);
	_ASSERTE(iIndex < _Size);
	_ASSERTE(1 != _Size);				// mu� Innenkonturen haben

	for (int i = iIndex; i < _Size-iAnzahl; i++)
		_KAF[i] = _KAF[i+iAnzahl];

	_Size -= iAnzahl;
}

// Punkt(e) zu einer der Kanten hinzuf�gen
template <typename KoOrdT>
inline void 
WMFlaeche<KoOrdT>::AddPunkt (const WMKante<KoOrdT> &K, long KAnz, long KIndex, 
	int MIndex)
{
	if (MIndex == -1)	// ans Ende anh�ngen
		MIndex = _Size;
	_ASSERTE(!(MIndex < 1 || MIndex > _Size));
	_KAF[MIndex-1].AddPunkt (K, KAnz, KIndex);
}

// Len > 0 Punkte werden vor St�tzpunktnummer -1 <= KIndex <= Konturl�nge 
//eingef�gt
template <typename KoOrdT>
inline void 
WMFlaeche<KoOrdT>::AddPunkt (KoOrdT x[], KoOrdT y[], long Len, long KIndex, 
	int MIndex)
{
	if (MIndex == -1)	// ans Ende anh�ngen
		MIndex = _Size;

	_ASSERTE(!(MIndex < 1 || MIndex > _Size));
	_KAF[MIndex-1].AddPunkt (x, y, Len, KIndex);
}

// Punkt(e) in einer der Fl�chenkonturen l�schen
// Len > 0 Punkte werden ab St�tzpunktnummer 0 <= KIndex < _KAF[MIndex-1].ASP() 
// gel�scht; 1 <= MIndex <= _Size ist der Konturindex
template <typename KoOrdT>
inline void 
WMFlaeche<KoOrdT>::SubPunkt (long Len, long KIndex, int MIndex)
{
	_ASSERTE(Len > 0);
	_ASSERTE(KIndex >= 0);
	_ASSERTE(MIndex >= 1);
	_ASSERTE(MIndex <= _Size);

	if (MIndex == 1) {	// Au�enkontur
		_ASSERTE(!(_KAF[0].ASP() <= Len));		// es m��te die komplette Au�enkontur gel�scht werden
		_KAF[MIndex-1].SubPunkt (Len, KIndex);
	}
	else {
	// Innenkontur
		if (_KAF[MIndex-1].ASP() <= Len)		// es wird eine komplette Innenkontur gel�scht
			SubKante (1, MIndex-1);
		else
			_KAF[MIndex-1].SubPunkt (Len, KIndex);
	}
}

// Au�enkontur und i-te Innenkontur werden getauscht, d.h. die i-te Innenkontur 
// wird zur Au�enkontur; wenn der Tausch erfolgreich war, wird true 
// zur�ckgegeben, sonst false
template <typename KoOrdT>
inline bool 
WMFlaeche<KoOrdT>::TauschKante (int i)
{
	_ASSERTE(i >= 0);
	_ASSERTE(i < _Size);

WMFlaeche<KoOrdT> NewOut (&_KAF[i], 1);	// neue Au�enkontur
WMFlaeche<KoOrdT> NewIn (&_KAF[0], 1);	// neue Innenkontur

	SubKante (1, i);			// i-te Innenkontur l�schen
	AddKante (NewOut, 1, 0);	// neue Au�enkontur hinzuf�gen
	SubKante (1, 1);			// alte Au�enkontur l�schen
	AddKante (NewIn, 1, -1);	// neue Innenkontur hinzuf�gen

	return true;
}

// Container setzen
template <typename KoOrdT>
inline void 
WMFlaeche<KoOrdT>::SetCont (KoOrdT Cont[])
{
	_ASSERTE(Cont != 0);

WMObjRechteck<KoOrdT> newCont = new WMObjRechteck<KoOrdT>(Cont[0], Cont[1], 
	Cont[2], Cont[3]);

	DELETE_OBJ(_OCont);
	_OCont = newCont;
}

///////////////////////////////////////////////////////////////////////////////
// Test auf Geometriefehler

// Kontur einer Fl�che ist offen (true), d.h. 1. und letzter Punkt sind 
// verschieden, sonst false; 0 <= i < _Size ist Konturindex
template <typename KoOrdT>
inline bool 
WMFlaeche<KoOrdT>::isOffen (int i) const
{
	_ASSERTE(i >= 0);
	_ASSERTE(i < _Size);

long lKCnti = _KAF[i].ASP();  // L�nge der i-ten Kontur

	if (lKCnti <= 2)	// eine entartete Kontur wird an anderer Stelle angemeckert 
		return false;	// und ist durch Schlie�en nicht mehr zu retten (08.09.98)

double hw = AbstandPktPktE (_KAF[i].SP(0), _KAF[i].SP(lKCnti-1));

	return hw > 0;	// 08.09.98
}

// Umlaufsinn einer Kontur fehlerhaft (true), sonst false;
// Au�enkontur mu� mathematisch positiv, Innenkonturen m�ssen mathematisch 
// negativ orientiert sein (durch Berechnung des vorzeichenbehafteten 
// Fl�cheninhaltes FlInh eines geschlossenen Polygonzuges); 
// 0 <= i < _Size ist der Konturindex
template <typename KoOrdT>
inline bool 
WMFlaeche<KoOrdT>::isWrongTurning (int i) const
{
	_ASSERTE(i >= 0);
	_ASSERTE(i < _Size);

double dFlInh = _KAF[i].PolygonArea();

	return ((i == 0 && dFlInh <= 0.0) ||	// Au�enkontur
			(i > 0 && dFlInh >= 0.0));		// Innenkontur(en)
}

// Umlaufsinn einer Kontur umorientieren (0 <= i < _Size ist der Konturindex)
template <typename KoOrdT>
inline void 
WMFlaeche<KoOrdT>::OrientDreh (int i)
{
	_ASSERTE(i >= 0);
	_ASSERTE(i < _Size);

long lKCnti = _KAF[i].ASP();

	for (long k = 0; k < lKCnti/2; k++)	{
	KoOrdT x = _KAF[i].SP(lKCnti-k-1).X();
	KoOrdT y = _KAF[i].SP(lKCnti-k-1).Y();

		_KAF[i].SPV(lKCnti-k-1).X() = _KAF[i].SP(k).X();
		_KAF[i].SPV(lKCnti-k-1).Y() = _KAF[i].SP(k).Y();
		_KAF[i].SPV(k).X() = x;
		_KAF[i].SPV(k).Y() = y;
	}
}

// Umlaufsinn aller Konturen einer Fl�che pr�fen und ggf. richtig drehen,
// falls der Fl�cheninhalt der Fl�che bzw. einer Insel 0 ist, R�ckgabe von 
// false 
template <typename KoOrdT>
inline bool 
WMFlaeche<KoOrdT>::Umlaufsinn()
{
	for (int i = 0; i < _Size; i++) {
	double dFlInh = _KAF[i].PolygonArea();	// vorzeichenbehafteter Fl�cheninhalt

		if (0 == dFlInh)   // entartete oder fehlerhafte Fl�che
			return false;

		if ((i == 0 && dFlInh < 0) ||	// Au�enkontur math. negativ bzw.
			(i > 0 && dFlInh > 0))		// Innenkontur math. positiv orientiert
		{
			OrientDreh (i);				// Konturumlaufsinn umdrehen
		}
	}
	return true;

}
	
// Test auf �berschneidung zwischen den Konturen (return-Wert: true), sonst 
// false mit R�ckgabewert Fo
//   KEINE      keine �berschneidung, GP1 und GP2 unbestimmt
//   ECHT       �berschneidung, so da� Schnittpunkt GP1 jeweils im "Inneren" 
//              der beiden betr. Konturstrecken liegt, GP2 unbestimmt
//   RAND_MIT   �berschneidung, so da� Schnittpunkt GP1 bei beiden betr. 
//              Konturen ein St�tzpunkt ist (St�tzpunktgleichheit mit 
//				Seitenwechsel), GP2 unbestimmt
//   INNEN_MIT  �berschneidung, so da� Schnittpunkt GP1 bei einer Kontur ein 
//              St�tzpunkt, bei der anderen im "Inneren" einer Konturstrecke 
//              liegt (Ber�hrungspunkt mit Seitenwechsel), GP2 unbestimmt
//   UEBERLAPP  �berlappung von Strecken beider Konturen, GP1 und GP2 sind die 
//              beiden Endpunkte des gemeinsamen Bereiches
//   BERUE_OHNE Konturinzidenz (St�tzpunktgleichheit bzw. Ber�hrung) ohne 
//              Seitenwechsel, betreffender Punkt in GP1, GP2 ist unbestimmt
// i, ii sind Indizes der zu vergleichenden Konturen, j, jj die Indizes der
// St�tzpunkte, KonInzOS ist Z�hler f�r St�tzpunktwiederholung bzw. Ber�hrung 
// ohne Seitenwechsel
template <typename KoOrdT>
inline bool 
WMFlaeche<KoOrdT>::isKontInz (WMPunkt<KoOrdT>& AP1, WMPunkt<KoOrdT>& EP1, 
		WMPunkt<KoOrdT>& AP2, WMPunkt<KoOrdT>& EP2, int i, int ii, 
		long j, long jj, long& KonInzOS, 
		WMPunkt<KoOrdT>& GP1, WMPunkt<KoOrdT>& GP2, WMSchnittErg& Fo) const
{
	_ASSERTE(i >= 0);
	_ASSERTE(ii >= 0);
	_ASSERTE(j >= 0);
	_ASSERTE(jj >= 0);

// warum ich am 02.10.98 nachfolgende Routine nehmen wollte, wei� ich nicht 
// mehr; aber heute am 17.11.98 merke ich, da� dies nicht geht; wenn ich bei 
// der Erzeugung von Objekten (z. B. in ObjOper.ext) und den dazugeh�rigen 
// Tests mit Aufbereitung2 / Aufbereitung / KantenSchnitt / GemeinsamePunkte 
// (...,DoublePair,DoublePair) arbeite, mu� ich es hier auch tun, d. h. auch 
// Epsilon-Toleranzen zulassen

//	Fo = GemeinsamePunkte (AP1, EP1, AP2, EP2, GP1, GP2);

DoublePair DP1, DP2;

	Fo = GemeinsamePunkte (AP1, EP1, AP2, EP2, DP1, DP2);     // Fo == KEINE ... UEBERLAPP

	GP1.X() = DtoL(DP1.X());
	GP1.Y() = DtoL(DP1.Y());
	GP2.X() = DtoL(DP2.X());
	GP2.Y() = DtoL(DP2.Y());

// St�tzpunktwiederholungen werden immer 4-mal, Ber�hrungspunkte immer doppelt 
// erkannt, wobei nur der Fall GP1 == EP1 && GP1 == EP2 als der einzig 
// relevante angesehen wird
	if ((Fo == RAND || Fo == INNEN) && (GP1 == AP1 || GP1 == AP2)) {
	// nun wohl doch wieder (02.10.98)
		Fo = KEINE;
		return false;
	}

bool ksw = false;	// kein Seitenwechsel (true), sonst false

// Vorarbeiten f�r Test auf St�tzpunktwiederholung bzw. Ber�hrungspunkt
	if (Fo == RAND || Fo == INNEN) {
	WMPunkt<KoOrdT> Pj2, Pjj2;
	double qwj1, qwj2, qwjj1, qwjj2;	// Quasi-Winkel von Strecken mit der Waagrechten

		if (j < _KAF[i].ASP()-2)
			Pj2 = _KAF[i].SP(j+2);
		else
			Pj2 = _KAF[i].SP(1);
		if (jj < _KAF[ii].ASP()-2)
			Pjj2 = _KAF[ii].SP(jj+2);
		else
			Pjj2 = _KAF[ii].SP(1);
			
		qwj1 = QuasiWinkel (GP1.X(), GP1.Y(), AP1.X(), AP1.Y());
		qwjj1 = QuasiWinkel (GP1.X(), GP1.Y(), AP2.X(), AP2.Y());

		if (Fo == RAND) {
		// St�tzpunktwiederholung
			qwj2 = QuasiWinkel (GP1.X(), GP1.Y(), Pj2.X(), Pj2.Y());
			qwjj2 = QuasiWinkel (GP1.X(), GP1.Y(), Pjj2.X(), Pjj2.Y());
		}
		else {
		// Bei Ber�hrung mu� unterschieden werden, ob Endpunkt von i-Strecke 
		// innerhalb der ii-Strecke liegt (GP1 == SP(j+1) oder Endpunkt von 
		// ii-Strecke innerhalb der i-Strecke (GP1 == SP(jj+1)
			if (EP1.EpsGleich(DP1))	{
				qwj2 = QuasiWinkel (GP1.X(), GP1.Y(), Pj2.X(), Pj2.Y());
				qwjj2 = QuasiWinkel (GP1.X(), GP1.Y(), EP2.X(), EP2.Y());
			}
			else {
				qwj2 = QuasiWinkel (GP1.X(), GP1.Y(), EP1.X(), EP1.Y());
				qwjj2 = QuasiWinkel (GP1.X(), GP1.Y(), Pjj2.X(), Pjj2.Y());
			}
		}

	// Sind zwei Quasi-Winkel gleich, dann ist die diagnostizierte St�tzpunkt-
	// wiederholung bzw. Ber�hrung nicht echt, sondern nur ein Endpunkt einer 
	// Kontur�berlappung
		if (qwj1 == qwjj1 || qwj1 == qwjj2 || qwj2 == qwjj1 || qwj2 == qwjj2) {
			Fo = KEINE;
			return false;
		}

	double kj, kjj, gj, gjj;	// die kleineren bzw. gr��eren der beiden j- bzw. jj-Winkel

	// Ermittlung der jeweils kleineren bzw. gr��eren der beiden j- bzw. jj-Winkel
		if (qwj1 < qwj2) { 
			kj = qwj1; 
			gj = qwj2; 
		}
		else { 
			kj = qwj2; 
			gj =qwj1; 
		}
		if (qwjj1 < qwjj2) { 
			kjj = qwjj1; 
			gjj = qwjj2; 
		}
		else { 
			kjj = qwjj2; 
			gjj =qwjj1; 
		}

	// kein Seitenwechsel (true)
		ksw = (gj < kjj || (kj < kjj && gjj < gj) ||
		       gjj < kj || (kjj < kj && gj < gjj));
	}

// St�tzpunktwiederholungen (Fo == RAND) bzw. Ber�hrung (Fo == INNEN) mit 
// Seitenwechsel werden immer als Fehler gemeldet (bleibt Fo = RAND bzw. 
// Fo = INNEN), ohne Seitenwechsel erst dann, wenn dieser Fall wenigstens 
// zweimal aufgetreten ist; dabei wird nicht mehr zwischen St�tzpunkt-
// wiederholung und Ber�hrung unterschieden (Fo == BERUE_OHNE). Ist die
// geordnete Folge der Quasi-Winkel zwischen j und jj nicht alternierend, 
// dann liegt Seitenwechsel vor
	if ((Fo == RAND || Fo == INNEN) && ksw) {
		KonInzOS++;
		Fo = BERUE_OHNE;
	}

// eine einzige Konturinzidenz (St�tzpunktwiederholung bzw. Ber�hrung ohne 
// Seitenwechsel) ist noch kein Fehler, erst das mehrmalige Auftreten
	if (Fo == KEINE || (Fo == BERUE_OHNE && KonInzOS == 1))
		return false;
	return true;
}

// Test, ob Innenkontur i, die die Au�enkontur nicht echt schneidet, au�erhalb 
// der Au�enkontur liegt (true), sonst false
template <typename KoOrdT>
inline bool 
WMFlaeche<KoOrdT>::isAussen (int i) const
{
	_ASSERTE(i >= 1);			// Index einer Innenkontur
	_ASSERTE(i < _Size);

	if (_KAF[0].ASP() < 4)		// Au�enkontur hat zu wenig St�tzpunkte
		return false;

long lCntKi = _KAF[i].ASP();	// L�nge der i-ten Kontur

	for (long j = 0; j < lCntKi; j++) {
	WMPosit posLage = _KAF[i].SP(j).Position (&_KAF[0], dGlEps);

		if (INNERH == posLage)
			return false;
		if (AUSSERH == posLage)
			return true;
		if (OFFEN == posLage)	// Au�enkontur nicht geschlossen
			return false;
	}

// dieser Progammteil d�rfte nur erreicht werden, wenn alle _KAF[i]-St�tzpunkte 
// auf der _KAF[0]-Au�enkontur liegen; diese Konturinzidenz wurde aber von 
// vornherein ausgeschlossen; mit der Assertion wird der Fall abgefangen, da� 
// die _KAF[i]-Kontur nur aus einem St�tzpunkt besteht (entartete Kontur), 
// der genau auf der _KAF[0]-Au�enkontur liegt
	_ASSERTE(lCntKi <= 1);
	return false;
}

// Test, ob Kontur i1 (kann auch die Au�enkontur sein), die die Innenkontur i2 
// nicht echt schneidet, innerhalb von i2 liegt (true), sonst false
template <typename KoOrdT>
inline bool 
WMFlaeche<KoOrdT>::isInnen (int i1, int i2) const
{
	_ASSERTE(i1 >= 0);		// Index einer Kontur
	_ASSERTE(i1 < _Size);
	_ASSERTE(i2 >= 1);		// Index einer Innenkontur
	_ASSERTE(i2 < _Size);

	if (_KAF[i2].ASP() < 4)		// i2-Innenkontur hat zu wenig St�tzpunkte
		return false;

long lCntKi1 = _KAF[i1].ASP();	// L�nge der i1-ten Kontur

	for (long j = 0; j < lCntKi1; j++) {
	WMPosit posLage = _KAF[i1].SP(j).Position (&_KAF[i2]);

		if (INNERH == posLage)
			return true;
		if (AUSSERH == posLage)
			return false;
		if (OFFEN == posLage)	// i2-Innenkontur nicht geschlossen
			return false;
	}

// dieser Progammteil d�rfte nur erreicht werden, wenn alle _KAF[i1]-St�tzpunkte 
// auf der _KAF[i2]-Kontur liegen; diese Konturinzidenz wurde aber von 
// vornherein ausgeschlossen; mit der Assertion wird der Fall abgefangen, da� 
// die _KAF[i1]-Kontur nur aus einem St�tzpunkt besteht (entartete Kontur), 
// der genau auf der _KAF[i2]-Au�enkontur liegt
	_ASSERTE(lCntKi1 <= 1);
	return false;
}

// Vereinigung zweier Fl�chen (this- und pFl-Fl�che) mit (bInsel == true) bzw. 
// ohne (bInsel == false) Ber�cksichtigung der Innenkonturen; wenn
// - beide Fl�chen keinen oder nur endlich viele Punkte gemeinsam haben
// - sich kein Anfangspunkt f�r die Au�enkontur der vereinigten Fl�che finden 
//	 l��t
// - nicht gen�gend dynamischer Speicher verf�gbar ist,
// dann keine Vereinigung m�glich (R�ckgabe von 0)
template <typename KoOrdT>
inline WMFlaeche<KoOrdT> * 
WMFlaeche<KoOrdT>::FlaechenVereinigung (WMFlaeche* pFl, bool& bAbbr, void* pPSt, 
		bool bInsel)
{
	_ASSERTE(pFl != 0);	// pPSt wird weiter unten getestet

WMObjRechteck<KoOrdT> OC1 (GetCont());		// Container der this-Fl�che
WMObjRechteck<KoOrdT> OC2 (pFl->GetCont());	// Container von pFl

// Test, ob beide Container genau 1 Punkt gemeinsam haben. (Der Fall, da� 
// Container v�llig durchschnittsleer sind, wird in Aufbereitung2() abgefangen.)
	if (WMPunkt<KoOrdT>(OC1.XMin(), OC1.YMin()) == 
			WMPunkt<KoOrdT>(OC2.XMax(), OC2.YMax()) ||
		WMPunkt<KoOrdT>(OC1.XMax(), OC1.YMin()) == 
			WMPunkt<KoOrdT>(OC2.XMin(), OC2.YMax()) ||
	    WMPunkt<KoOrdT>(OC1.XMin(), OC1.YMax()) == 
			WMPunkt<KoOrdT>(OC2.XMax(), OC2.YMin()) ||
		WMPunkt<KoOrdT>(OC1.XMax(), OC1.YMax()) == 
			WMPunkt<KoOrdT>(OC2.XMin(), OC2.YMin()))
	{
		return 0;
	}

// aus St�tzpunktfolge der this-Au�enkontur wird Vektor pML1, aus Au�enkontur 
// der pFl-Fl�che wird Vektor pML2 mit markierten Punkten erzeugt; diese 
// Vektoren werden in Aufbereitung2() evtl. noch erweitert
WMMarkLine<KoOrdT> ML1 (_KAF[0].ASP(), 0);
WMMarkLine<KoOrdT> ML2 (pFl->KA(0).ASP(), 0);

	_ASSERTE(!(!ML1.Vektor() || !ML2.Vektor()));

// Die beiden nachfolgenden Zeilen k�nnten an vielen Stellen anstatt der 
// new-Definition geschrieben werden. Dann mu� aber nach Aufbereitung() noch 
// als Parameter durchgereicht werden, ob es sich um eine echte Kante 
// (pML2 bleibt 0) oder eine Fl�chenkontur (pML2 wird gesetzt) handelt.
//MarkLine* pML1 = 0;
//MarkLine* pML2 = 0;

bool bLeer;		// Parameter von Aufbereitung2(); wird hier nicht ausgewertet

	if (!_KAF[0].Aufbereitung2 (&pFl->KA(0), &ML1, &ML2, bLeer, bAbbr, pPSt))
		return 0;

// KantenPosit() ermittelt die Position "posLage" der beiden Au�enkonturen der 
// this-Fl�che und pFl zueinander
bool bOverlap;	// this-Fl�che hat mit pFl-Au�enkontur einen �berlappungsbereich
int iTouchOut;	// Parameter von KantenPosit(); wird hier nicht ausgewertet
WMPosit posLage = KantenPosit (&pFl->KA(0), &ML1, bOverlap, iTouchOut);
WMFlaeche<KoOrdT> *pVFl = 0;		// Vereinigungsfl�che
bool bNew = false;		// pVFl wurde (noch nicht) mit new dynamisch angelegt

	switch (posLage) {
	case INNERH:	// this-Fl�che innerhalb von pFl
	case INNERHB:
		if (bInsel)	{	
		// mit Inseln
		WMFlaeche<KoOrdT> *pHF = pFl->FlaechenVereinigung1 (this);

			if (pHF) {
			// FlaechenVereinigung1() hat nicht 0 zur�ckgeliefert
				pVFl = new WMFlaeche<KoOrdT>(*pHF);
				bNew = true;
			}
		} else		// ohne Inseln
			pVFl = new WMFlaeche<KoOrdT>(*pFl);
		break;

	case UMSCHL:	// pFl innerhalb der this-Fl�che
	case UMSCHLB:
	case KONTUR:	// Au�enkonturen der this-Fl�che und pFl liegen genau �bereinander
	case GLEICH:	// Au�enkonturen der this-Fl�che und pFl liegen genau �bereinander
		if (bInsel)	{
		WMFlaeche<KoOrdT> *pHF = FlaechenVereinigung1 (pFl);

			if (pHF) {
			// FlaechenVereinigung1() hat nicht 0 zur�ckgeliefert
				pVFl = new WMFlaeche<KoOrdT>(*pHF);
				bNew = true;
			}
		} else
			pVFl = new WMFlaeche<KoOrdT>(*this);
		break;

	case AUSSERHB:	// pFl au�erhalb der this-Fl�che mit Ber�hrung
		if (bOverlap) {
			pVFl = new WMFlaeche<KoOrdT>();
			bNew = true;

			if (!ContourUnion (pML1, pML2, pVFl, bInsel) &&	
				0 == pVFl->KantenAnz())
			{
				DELETE_OBJ (pVFl);
				break;
			}
			if (bInsel)			// blankes Hinzuf�gen der Innenkonturen
				pVFl->AddInseln1 (this, pFl);
		}
		break;	// anderenfalls ist keine Vereinigung m�glich, d. h. pVFl == 0

	case INNAUSS:
	// Aufbau der Au�enkontur (und evtl. einiger Innenkonturen) der 
	// Vereinigungsfl�che
		pVFl = new WMFlaeche<KoOrdT>();

		if (!ContourUnion (pML1, pML2, pVFl, bInsel) &&
			0 == pVFl->KantenAnz())
		{
			DELETE_OBJ (pVFl);
			break;
		}
		if (bInsel &&		// Inseln (verschnitten) hinzuf�gen
			(KantenAnz() > 1 || pFl->KantenAnz() > 1))
		{
			pVFl->AddInseln2 (this, pFl);
		}
		break;
	} // switch

// f�r posLage == AUSSERH bzw. UNKLAR ist keine Vereinigung m�glich, d. h. 
// pVFl == 0
	_ASSERTE(!(bNew && !pVFl));
	return pVFl;
}
	
///////////////////////////////////////////////////////////////////////////////
// Definition der virtuellen Funktionen der Basisklasse WMObjekt

// liefert ObjektTyp
template <typename KoOrdT>
inline WMObjTyp 
WMFlaeche<KoOrdT>::isA (void) const
{ 
	return OT_FLAECHE; 
}

// Lage der this-Fl�che bez�glich der Fl�che pFl; es werden sowohl von der 
// this-Fl�che als auch von pFl Inseln mit ber�cksichtigt, d.h. liegt this-
// Fl�che innerhalb einer pFl-Insel, dann liegt this-Fl�che au�erhalb von pFl 
// sowie umgekehrt
template <typename KoOrdT>
inline WMPosit 
WMFlaeche<KoOrdT>::EnthaltenIn (WMFlaeche* pFl, void* pPSt)
{
	_ASSERTE(pFl != 0);	// pPSt kann 0 sein
	if (!pFl) 
		return UNKLAR;

WMObjRechteck<KoOrdT> OC1 (GetCont());
WMObjRechteck<KoOrdT> OC2 (pFl->GetCont());

	if (!OC1.Durchschnitt (OC2))
		return AUSSERH;		// Container haben keinen Punkt gemeinsam

int iKAnz = pFl->KantenAnz();		// Anzahl der Konturen von pFl
bool bOverlap;		// Parameter von KantenPosit(); werden
int iTouchOut;		// hier nicht ausgewertet
WMPosit posLage;	// Ergebnis der Routine KantenPosit
bool bInnenB = false;	// this-Fl�che liegt zur pFl-Au�enkontur INNERHB (true) oder nicht
						// (false)
bool bAussenB = false;	// this-Fl�che liegt zu mindestens einer pFl-Innenkontur AUSSERHB
						// (true)
bool bLeer;				// Container der beiden in Aufbereitung2() verglichenen Objekte sind
						// durchschnittsleer (true)
bool bAbbr;				// Parameter von Routine Aufbereitung2(); wird hier nicht ausgewertet

// Feld f�r die Indizes der pFl-Inseln, die noch mit den this-Inseln zu vergleichen sind
int k = 0;	// Laufindex f�r piInsel
vector<int> piInsel(iKAnz, 0);	

   	for (int i = 0; i < iKAnz; i++)	{	// Test mit allen pFl-Konturen
										// (Au�en- und Innenkontur)
	// pML1 mu� in die for-Schleife, da dieses Variable in Aufbereitung2() ver�ndert wird
	WMMarkLine ML1 (_KAF[0].ASP(), 0);
	WMMarkLine ML2 (pFl->KA(i).ASP(), i, true);

		_ASSERTE(!(!ML1.Vektor() || !ML2.Vektor()));

		if (!_KAF[0].Aufbereitung2 (&pFl->KA(i), &ML1, &ML2, bLeer, bAbbr, pPSt)) {
		// bLeer == true bedeutet, da� der Container der i-ten pFl-Kontur und 
		// Container der Au�enkontur der this-Fl�che durchschnittsleer sind. 
		// F�r Au�enkontur (i == 0) wurde dies schon oben abgefangen. Hier kann 
		// der Fall nur noch bei Innenkonturen auftreten (i > 0). Dabei ist die 
		// Lage noch nicht kl�rbar.
			if (bLeer) 
				continue;

		// false-R�ckgabe von Aufbereitung2() bedeutet Abbruch durch den 
		// Anwender, falsche Parameter oder unzureichender dynamischer Speicher
			return UNKLAR;
		}

		posLage = KantenPosit (&pFl->KA(i), &ML1, bOverlap, iTouchOut);
		if (0 == i) {			// pFl-Au�enkontur
		// wird pFl-Au�enkontur von this-Au�enkontur umschlossen bzw. wenn beide
		// Au�enkonturen identisch sind, mu� (wenn vorhanden) noch Test mit
		// this-Innenkonturen durchgef�hrt werden
			if (UMSCHL == posLage || UMSCHLB == posLage ||
				KONTUR == posLage ||		// 16.06.98
				GLEICH == posLage)			// 15.04.99
			{
				break;
			}	

		// Test mit pFl-Innenkonturen (i > 0) nur erforderlich, wenn der Test 
		// mit der pFl-Au�enkontur posLage == INNERH oder posLage == INNERHB 
		// ergeben hat
			if (INNERH != posLage && INNERHB != posLage) 
				return posLage;

			if (INNERHB == posLage)
				bInnenB = true;
		}
			
		if (i > 0) {		// pFl-Innenkonturen wurden noch mit herangezogen
		// f�r INNERH, INNERHB, INNAUSS, KONTUR, GLEICH und UNKLAR ist alles klar
			if (INNERH == posLage || INNERHB == posLage || INNAUSS == posLage ||
				KONTUR == posLage || GLEICH == posLage || UNKLAR == posLage)
			{
				if (INNERH == posLage)	// vollst�ndig innerhalb einer pFl-Insel 
					return AUSSERH;		//  hei�t au�erhalb der pFl-Fl�che
				if (INNERHB == posLage)	// innerhalb der pFl-Au�enkontur, aber bez. einer
					return AUSSERHB;	//  pFl-Insel INNERHB bedeutet AUSSERHB
				if (KONTUR == posLage)	// vollst�ndig auf einer pFl-Insel hei�t 
					return AUSSERHB;	//  AUSSERHB bez. der pFl-Fl�che (16.07.98)
				return posLage;
			}
				
		// f�r AUSSERH, AUSSERHB, UMSCHL bzw. UMSCHLB der this-Au�enkontur bez. 
		// einer pFl-Insel ist posLage noch nicht eindeutig kl�rbar
			if (AUSSERHB == posLage)
				bAussenB = true;

			if (UMSCHL == posLage || UMSCHLB == posLage) {	// 16.10.98
				piInsel[k] = i;
				k++;
			}
		}
	} // for
	
// dieser Programmteil wird nur erreicht, wenn
// 1. this- und pFl-Au�enkontur identisch sind
// 2. this-Fl�che innerhalb der pFl-Au�enkontur liegt
//    a) und bez. aller pFl-Innenkonturen AUSSERH bzw. AUSSERHB gilt;
//       dann gilt bez. der pFl-Au�enkontur INNERHB (bInnenB == true) oder bez. 
//       der pFl-Innenkonturen mindestens einmal AUSSERHB (bAussenB == true), 
//       dann gilt bez. der gesamten pFl-Fl�che INNERHB, sonst INNERH
//    b) und bez. der pFl-Innenkonturen mindestens einmal UMSCHL bzw. UMSCHLB 
//       gilt; dann gilt
//       INNERH,  wenn zu allen diesen pFl-Innenkonturen mit UMSCHL auch this-
//                Innenkonturen mit UMSCHL existieren
//       INNERHB, wenn UMSCHLB bzw. KONTUR
//       INNAUSS  in allen �brigen F�llen
// 3. pFl-Fl�che innerhalb der this-Au�enkontur liegt (i == 0 und posLage == 
//    UMSCHL oder UMSCHLB); dann ist die gleiche Prozedur zwischen pFl->KA(0) 
//    und allen Innenkonturen der this-Fl�che durchzuf�hren (so die this-Fl�che 
//    �berhaupt Innenkonturen besitzt), innerhalb derer ja die pFl-Fl�che 
//	  liegen k�nnte
	
// >>>>> 1. Fall: this- und pFl-Au�enkontur sind identisch
	if (0 == i && (KONTUR == posLage || GLEICH == posLage))	
		return BeideAussenkonturenIdentisch (pFl, iKAnz);
	
// >>>>> 2. Fall: this-Fl�che innerhalb der pFl-Au�enkontur
	if (i > 0 || (UMSCHL != posLage && UMSCHLB != posLage)) {
		if (0 == piInsel[0]) {	// 19.10.98
			if (bAussenB || bInnenB)
				return INNERHB;
			return INNERH;
		}

	// noch weitere Tests mit den this-Innenkonturen (so sie vorhanden sind)
		if (_Size > 1)
			posLage = EnthaltenInWeiter (pFl, piInsel.begin());
		return posLage;
	}

// >>>>> 3. Fall: pFl-Fl�che innerhalb der this-Au�enkontur
	if (1 == _Size)		// this-Fl�che hat keine Innenkonturen
		return posLage;
		
	if (UMSCHL == posLage)
		bInnenB = false;
	else	// posLage == UMSCHLB
		bInnenB = true;

// da die this-Au�enkontur die pFl-Fl�che umschlie�t, gibt es f�r die Lage der 
// this-Fl�che bez�glich der pFl-Fl�che nur noch die beiden M�glichkeiten:
// - AUSSERH bzw. AUSSERHB, wenn die pFl-Fl�che vollst�ndig innerhalb einer 
//	 this-Insel liegt
// - INNAUSS ansonsten
   	for (i = 1; i < _Size; i++)	{	// Test mit allen this-Innenkonturen reicht 
									// aus, da schon klar ist, da� pFl-Fl�che 
									// innerhalb der this-Au�enkontur liegt
	WMMarkLine ML1 (pFl->KA(0).ASP(), 0);
	WMMarkLine ML2 (_KAF[i].ASP(), i, true);

		_ASSERTE(!(!ML1.Vektor() || !ML2.Vektor()));
		if (!pFl->KA(0).Aufbereitung2 (&_KAF[i], &ML1, &ML2, bLeer, bAbbr, 0)) {
		// bLeer == true bedeutet, da� der Container der i-ten this-Kontur und 
		// Container der pFl-Au�enkontur durchschnittsleer sind. Bei den hier 
		// nur noch herangezogenen Innenkonturen (i > 0) ist die Lage noch 
		// nicht kl�rbar.
			if (bLeer) 
				continue;

		// false-R�ckgabe von Aufbereitung2() bedeutet Abbruch durch den 
		// Anwender, falsche Parameter oder unzureichender dynamischer Speicher
			return UNKLAR;
		}

		posLage = KantenPosit (&_KAF[i], &ML1, bOverlap, iTouchOut);

	// f�r INNERH, INNERHB, INNAUSS, KONTUR, GLEICH, UMSCHL, UMSCHLB und UNKLAR 
	// ist alles klar
		if (INNERH == posLage || INNERHB == posLage || INNAUSS == posLage || 
			KONTUR == posLage || GLEICH == posLage || UMSCHL == posLage || 
			UMSCHLB == posLage || UNKLAR == posLage)
		{
		// vollst�ndig innerhalb einer this-Insel hei�t au�erhalb der this-Fl�che
			if (INNERH == posLage)
				return AUSSERH;

		// innerhalb der this-Au�enkontur, aber bez. einer this-Innenkontur INNERHB bzw.
		// mit dieser vollst�ndig deckungsgleich (KONTUR oder GLEICH) bedeutet AUSSERHB
			if (INNERHB == posLage ||
				KONTUR == posLage ||		// 16.06.98
				GLEICH == posLage)			// 15.04.99
			{
				return AUSSERHB;
			}

		// eine this-Innenkontur umschlie�en hei�t INNAUSS bez. der this-Fl�che
			if (UMSCHL == posLage || UMSCHLB == posLage)
				return INNAUSS;
			return posLage;
		}
	}
	return INNAUSS;
}

// Inseln bei Schnittoperationen der this-Fl�che mit pSFl-Schnittfl�che 
// ber�cksichtigen 
template <typename KoOrdT>
inline bool 
WMFlaeche<KoOrdT>::InselnBeiSchnittMitFlaeche (WMFlaeche* pSFl, 
	WMClipListe<KoOrdT>& CL, int iSkip)
{
	_ASSERTE(pSFl != 0);

bool bRet;
int iKAnz = pSFl->KantenAnz();	// Anzahl der pSFl-Konturen

	if (_Size > 1) {			// this-Fl�che hat Inseln
		if (iKAnz == 1)			// nur this-Fl�che hat Inseln
			bRet = InselnBeiSchnittMitKante (CL, iSkip);	// this-Inseln ber�cksichtigen
		else {				// beide Fl�chen mit Inseln
		bool bModify1 = true;	// an mindestens einer CL-Fl�che wurden durch die this-Inseln
		bool bModify2 = true;	//  bzw. die pSFl-Inseln Ver�nderungen vorgenommen (true)
		bool bRet1 = true;
		bool bRet2 = true;

		// Felder f�r die Indizes der Inseln, die schon "verbraucht" wurden
		int iKAnz2 = pSFl->KantenAnz();
		vector<int> piVbInsel1(_Size, 0);
		vector<int> piVbInsel2(iKAnz2, 0);

			if (!InselnAmRand (CL, iSkip, piVbInsel1.begin(), bModify1))
				bRet1 = false;
			if (!pSFl->InselnAmRand (CL, iSkip, piVbInsel2.begin(), bModify2))
				bRet2 = false;

		// durch das "Ankabbern" mit den pSFl-Inseln k�nnen wieder this-Inseln 
		// die Au�enkontur der CL-Fl�che "anknabbern" wollen, usw.
			while (bModify2) {
				if (!InselnAmRand (CL, iSkip, piVbInsel1.begin(), bModify1))
					bRet1 = false;
				if (bModify1) {
					if (!pSFl->InselnAmRand (CL, iSkip, piVbInsel2.begin(), bModify2))
						bRet2 = false;
				} else
					bModify2 = false;
			}

		bool bRet3 = InselnInnerhalb (CL, iSkip, piVbInsel1.begin());
		bool bRet4 = pSFl->InselnInnerhalb (CL, iSkip, piVbInsel2.begin());

			bRet = bRet1 && bRet2 && bRet3 && bRet4;
		}
	}
	else {	// this-Fl�che hat keine Inseln
		if (iKAnz == 1) 
			return true;	// beide Fl�chen ohne Inseln

		bRet = pSFl->InselnBeiSchnittMitKante (CL, iSkip);	// pSFl-Inseln ber�cksichtigen
	}
	return bRet;
}

// Inseln der this-Fl�che, die innerhalb EINER (!) in CL enthaltenen 
// Schnittfl�che liegen, bei Schnittoperationen mit Schnittkante ber�cksichtigen; 
// die ersten iSkip Eintr�ge in CL sind dabei zu �bergehen
template <typename KoOrdT>
inline bool 
WMFlaeche<KoOrdT>::InselnInnerhalb (WMClipListe<KoOrdT>& CL, int iSkip, 
	int* piVbInsel)
{
// piVbInsel kann 0 sein (bei Schnittergebnis "au�erhalb")
	if (1 == _Size) 
		return true;	// keine Inseln vorhanden

// in CL sind jetzt die durch am Rand liegende Inseln "angeknabberten" 
// Teilfl�chen enthalten; diese sind noch mit den echten Inseln zu 
// komplettieren (die ersten iSkip Eintr�ge aus CL wieder �bergehen)
WMClipListe<KoOrdT>::iterator ri = CL.begin();

	_ASSERTE(iSkip >= 0 && iSkip < CL.size());	// wenigstens einer mu� noch da sein
	advance(ri, iSkip);

bool bOverlap;	// Teilfl�che hat mit dem Rand einer this-Insel einen �berlappungsbereich bzw.
int iTouchOut;	// iTouchOut Ber�hrungspunkte mit "Zuf�hrung" aus der _KAF[i]-Umgebung gemeinsam
WMClipListe<KoOrdT>::iterator end = CL.end();

	for (/**/; ri != end; ++ri) {
	// alle Teilfl�chen aus CL
		if (OT_KANTE == (*ri)->isA())
			continue;

	WMFlaeche<KoOrdT> *pTF = (WMFlaeche<KoOrdT> *)(*ri);

		PartialCleaningForLines (&pTF->KA(0), -1);	// 09.02.99
		for (int i = 1; i < _Size; i++)	{
		// alle Inseln, die noch nicht verbraucht sind 
		bool bVerbr = false;	// Insel noch nicht verbraucht

			if (piVbInsel) {	// piVbInsel == 0 bei Schnittergebnis "au�erhalb"
				for (int j = 0; j < _Size-1; j++) {
					if (piVbInsel[j] == i) {
						bVerbr = true;	// diese Insel wurde schon verarbeitet
						break;
					}
					if (piVbInsel[j] == 0) 
						break;
				}
				if (bVerbr) 
					continue;
			}

		// aus St�tzpunktfolge der Au�enkontur der ml-Teilfl�che wird Vektor 
		// pML1, aus _KAF[i]-Insel wird Vektor pML2 mit markierten Punkten 
		// erzeugt; diese Vektoren werden in LageKonturZuKontur() durch 
		// Aufbereitung2() evtl. noch erweitert
		WMMarkLine ML1 (pTF->KA(0).ASP(), 0);
		WMMarkLine ML2 (_KAF[i].ASP(), i, true);

			_ASSERTE(!(!ML1.Vektor() || !ML2.Vektor()));

		// Lage der this-Inseln bez. der Au�enkontur der Teilfl�chen aus CL bestimmen
		WMPosit posLage = pTF->KA(0).LageKonturZuKontur (&_KAF[i], &ML1, &ML2, 
			bOverlap, iTouchOut);

			if (UMSCHL == posLage ||	// UMSCHL statt INNERH, da Inseln math.neg. orientiert sind
				(UMSCHLB == posLage && !bOverlap && iTouchOut <= 1))
			{
				if (1 == pTF->KantenAnz())	// 1. Insel hinzuf�gen (08.02.99)
					pTF->AddKante (WMFlaeche<KoOrdT>(&_KAF[i], 1), 1, -1);
				else				// weitere Inseln mit den schon vorhandenen Inseln abtesten
					pTF->InselZweiteFlaeche (CL, &_KAF[i], i);
			}
		}
	} // for
	return true;
}

// Aufbau der Au�enkontur der Vereinigungsfl�che pVFl (und f�r bInsel == true 
// Innenkonturen, die durch konkave Stellen bei pML1 bzw. pML2 enstehen k�nnen) 
// bei Vereinigung zweier geschlossener Konturen, die durch die Vektoren pML1 
// und pML2 gegeben sind; schon vorhandene Innenkonturen der Ausgangsfl�chen 
// werden hier nicht ber�cksichtigt
template <typename KoOrdT>
inline bool 
WMFlaeche<KoOrdT>::ContourUnion (WMMarkLine* pML1, WMMarkLine* pML2, 
	WMFlaeche* pVFl, bool bInsel)
{
	_ASSERTE(pML1 != 0);
	_ASSERTE(pML2 != 0);
	_ASSERTE(pVFl != 0);

//double dUmlauf;		// Umlaufsinn einer Kontur der vereinigten Fl�che
long lAI = 0;			// Anfangsindex f�r Suche nach Anfangspunkt einer Kontur
WMMar1 mark;			// Markierung
long lNewSize1 = pML1->ADP();
long lNewSize2 = pML2->ADP();
bool bRest;				// nach Verlassen der do-Schleife ist die soeben aufgebaute Kontur noch
						//  durch einen restlichen Teil zu erg�nzen

int iKInd1 = pML1->GetKInd();		_ASSERTE(iKInd1 >= 0);
int iKInd2 = pML2->GetKInd();		_ASSERTE(iKInd2 >= 0);
bool bMax;		// SEHR wichtiger Parameter von EckeMitBeruehrung()

	if (0 == iKInd1 && 0 == iKInd2)
		bMax = false;
	else if (0 == iKInd1 && iKInd2 > 0)
		bMax = true;
	else if (iKInd1 > 0 && 0 == iKInd2) {
		_ASSERTE(false);	// nur zu Testzwecken, da
		bMax = false;	// diesen Fall hatte ich noch nicht
	} else	// if (iKInd1 > 0 && iKInd2 > 0)
		bMax = true;	// 29.10.98

bool bWechsel;	// bei BERUE_UMG ist bei pML2 fortzusetzen (true); wird durch
				// EckeMitBeruehrung() gesetzt
bool bAussen;	// pML1 und pML2 sind beide aus Au�en- (true) bzw. Innenkonturen (false)
				// entstanden

	if (0 == iKInd1 && 0 == iKInd2)
		bAussen = true;
	else if (iKInd1 > 0 && iKInd2 > 0) {
		bAussen = false;
		_ASSERTE(!bInsel);	// sonst k�nnte "Insel in Insel" entstehen (28.05.99)
	} else {
		_ASSERTE(false);
	}

// for-Schleife wird mehrfach durchlaufen, wenn bei der Vereinigung durch 
// konkave Stellen auch Innenkonturen entstehen
	for (;;) {
	// Suche nach einem Punkt der pML1-Kontur, so da� die folgende Strecke noch
	// "unverbraucht" ist und der anschlie�ende Teil der pML1-Kontur au�erhalb 
	// der pML2-Kontur liegt, um dort mit dem Aufbau einer Kontur der 
	// vereinigten Fl�che zu beginnen, da es sein kann, da� der bisherige 
	// Anfangspunkt der pML1-Kontur durch die Vereinigung innerhalb der 
	// vereinigten Fl�che liegt und somit nicht mehr verwendbar ist; dazu wird 
	// getestet, wo der Mittelpunkt (!) der einzelnen Strecken der pML1-Kontur 
	// bez. der um die Schnittpunkte erweiterten pML2-Kontur liegt.
		for (long i = lAI; i < lNewSize1-1; i++) {
			if (UNVERBR == pML1->GetMk2(i) &&		// noch "unverbrauchte" Strecke
				AUSSERH == pML2->Position (pML1, i))
				break;  // geeigneter Punkt gefunden
		}

		if (i == lNewSize1-1) {	
		// alle this-Strecken abgearbeitet
			_ASSERTE(0 != pVFl->KantenAnz());	// kein geeigneter Anfangspunkt gefunden
			return false;
		}

		lAI = (i < lNewSize1-2) ? i + 1 : 0;

	// punktweiser Aufbau einer Kontur pKVFl der vereinigten Fl�che, zuerst mit 
	// Punkten der this-Au�enkontur
	KoOrdT x = DtoL (pML1->x(i));
	KoOrdT y = DtoL (pML1->y(i));
	WMFlaeche<KoOrdT> KVFl (&x, &y, 1); // Anfang einer Kontur der Vereinigungsfl�che
	WMPunkt<KoOrdT> PA (x, y);			// Anfangspunkt einer Kontur der Vereinigungsfl�che
	long lAnfId1 = lAI;	// Anfangsindex f�r den Teil der Kontur, der aus pML1 �bernommen wird

		do {      // weiterer Aufbau einer Kontur der vereinigten Fl�che
			bRest = true;
			pML1->ModMark2 (i, VERBR);       // Strecke (pML1[i], pML1[i+1] "verbraucht"
			i = (i < lNewSize1-2) ? i + 1 : 0;

		// aktueller Punkt pML1[i] ist Schnittpunkt (SCHNITT) oder Endpunkt mit
		// "Zuf�hrung" aus der Umgebung der pML2-Fl�che (RAND_UMG), dann pKVFl 
		// mit Punkten von pFl erg�nzen
			mark = pML1->GetMk1(i);
			if (BERUE_UMG == mark)
				pML1->EckeMitBeruehrung (pML2, i, MOVEDIR_UP, MOVEDIR_UP, 
					bMax, bWechsel);

			if (PA != pML1->DP(i) &&
				(SCHNITT == mark || RAND_UMG == mark ||
				 (BERUE_UMG == mark && bWechsel)))
			{
			// Teil der Kontur von pML1 an pKVFl anh�ngen
				KVFl.KA(0).AddKonturTeil (pML1, lAnfId1, i, -1);
				if (PA == pML1->DP(i))
					break;	// 13.10.98
				KVFl.ZweiteFlaeche (pML1, pML2, i);	// pKVFl mit Punkten von pML2 erg�nzen

				lAnfId1 = (i < lNewSize1-2) ? i + 1 : 0;
				bRest = false;
			}
		} while (PA != pML1->DP(i));		// Abbruch, wenn Kontur geschlossen

	// restlichen Teil an pKVFl anh�ngen, wenn in der do-Schleife noch 
	// St�tzpunkte gesammelt wurden, die jedoch mit AddKonturTeil noch nicht 
	// an die Kontur angef�gt wurden; bRest == false, wenn unmittelbar nach 
	// dem Aufruf der Routine SpezAddPunkt() die do-Schleife mit geschlossener 
	// Kontur beendet wurde
		if (bRest)
			KVFl.KA(0).AddKonturTeil (pML1, lAnfId1, i, -1);

	// Da es m�glich ist, da� durch die Eps-Arithmetik der Anfangs- und 
	// Endpunkt nur eps-gleich sind, werden beide Punkte vorsichtshalber v�llig 
	// identisch gemacht.
	long lSPAnz = KVFl.KA(0).ASP();
		
		KVFl.KA(0).SPV(lSPAnz-1) = PA;

	// 28.05.99
	// Vereinigung zweier Au�enkonturen
		if (bAussen) {
		// Ermittlung des Umlaufsinns der neu erzeugten Kontur
		double dUmlauf = KVFl.KA(0).PolygonArea();

		// es wurde eine Au�enkontur erzeugt, die "vorn" anzuf�gen ist
			if (dUmlauf > 0.) {
				pVFl->AddKante (KVFl, 1, 0);

			// wenn keine Inseln gefordert sind, kann nach Aufbau der 
			// Au�enkontur die Suche nach weiteren "unverbrauchten" Strecken 
			// abgebrochen werden
				if (!bInsel)	
					lAI = lNewSize1-1;
			}
			else if (dUmlauf < 0.) {
			// es wurde eine Innenkontur erzeugt, die "hinten" anzuf�gen ist
				pVFl->AddKante (KVFl, 1, -1);
			}
			_ASSERTE(dUmlauf != 0.);	// es wurde "etwas" erzeugt
		}
		else {
		// Vereinigung zweier Innenkonturen (hier kann das Ergebnis nur die 
		// Au�enkontur von pKVFl sein
			pVFl->AddKante (KVFl, 1, 0);
		}
	} // for
	return true;
}

// Es wird ein Punkt zur�ckgegeben, der garantiert innerhalb der this-EFlaeche 
// liegt.
template <typename KoOrdT>
inline bool 
WMFlaeche<KoOrdT>::InneliegenderPunkt (double& dInX, double& dInY)
{
// zuerst wird getestet, ob der Mittelpunkt des umschlie�enden Rechtecks innerhalb der
// this-EFlaeche liegt
WMObjRechteck<KoOrdT> OC (GetCont());

	dInX = (OC.XMax() + OC.XMin()) / 2.;	// Mittelpunkt des umschlie�enden
	dInY = (OC.YMax() + OC.YMin()) / 2.;	// Rechtecks

WMPunkt<KoOrdT> MP (DtoL(dInX), DtoL(dInY));

	if (INNERH == MP.EnthaltenIn (this))
		return true;	// liegt innerhalb

// klappt das noch nicht, wird durch den Mittelpunkt (dInX, dInY) eine 
// waagerechte Testkante TKt gelegt, welche mit den Fl�chenkonturen geschnitten 
// wird; von den ECHTEN Schnittpunkten werden die beiden mit den kleinsten 
// x-Koordinaten gesucht; der Mittelpunkt zwischen diesen beiden Schnittpunkten 
// mu� mit Wahrscheinlichkeit 1 innerhalb der this-EFlaeche liegen
double dTestY = dInY;
double dSchrittY = OC.YMax() - OC.YMin();
KoOrdT x[2] = { -std::numeric_limits<double>::max, std::numeric_limits<double>::max };
KoOrdT y[2] = { DtoL(dTestY), DtoL(dTestY) };
WMKante<KoOrdT> TKt (x, y, 2);	// waagrechte Testkante (aus 1 Strecke bestehend) durch den
						// Mittelpunkt des umschlie�enden Rechtecks
DoublePair ZPA, ZPE;	// evtl. gemeinsame Punkte der Testkante mit den Strecken der
						// Fl�chenkonturen
double xs1 = std::numeric_limits<double>::max,	// die beiden kleinsten x-Koordinaten von allen
	   xs2 = std::numeric_limits<double>::max;	// Schnittpunkten der Fl�chenkonturen mit der waagrechten Testkante

int iKAnz = KantenAnz();
int i = 0;
long j = -1;

	do {
	long lCSize = _KAF[i].ASP();

		do {
			j++;

			if (!Intersection (_KAF[i].SP(j).X(), _KAF[i].SP(j).Y(),
					_KAF[i].SP(j+1).X(), _KAF[i].SP(j+1).Y(), TKt.SP(0).X(),
					TKt.SP(0).Y(), TKt.SP(1).X(), TKt.SP(1).Y()))
			{
				continue;       // die beiden Strecken haben keinen Punkt gemeinsam
			}

		WMSchnittErg Fo = _KAF[i].KantenSchnitt (&TKt, j, 0, ZPA, ZPE);

		// �berlappungen und die Ber�hrung einer Innenkontur mit der Au�enkontur 
		// machen an dieser Stelle Probleme, deshalb wird die waagrechte 
		// Testkante etwas parallel verschoben
			if (UEBERLAPP == Fo ||
				((ECHT == Fo || INNEN_MIT == Fo || RAND_MIT == Fo) && i > 0 && 
				xs1 == ZPA.X()))
			{
				if (dTestY + dSchrittY < OC.YMax())
					dTestY += dSchrittY;
				else {
					dTestY = (dTestY + OC.YMin()) / 2.;
					dSchrittY /= 2.;
				}

				TKt.SP(0).Y() = TKt.SP(1).Y() = DtoL(dTestY);
				xs1 = xs2 = std::numeric_limits<double>::max;
				i = -1;
				break;
			}
			else if (ECHT == Fo || INNEN_MIT == Fo || RAND_MIT == Fo) {
				if (ZPA.X() < xs1) {
					xs2 = xs1;
					xs1 = ZPA.X();
				}
				else if (ZPA.X() < xs2) 
					xs2 = ZPA.X();
			}
		} while (j < lCSize - 2);
		i++;
		j = -1;
	} while (i < iKAnz);

	_ASSERTE(xs1 < std::numeric_limits<double>::max);
	_ASSERTE(xs2 < std::numeric_limits<double>::max);

	dInX = (xs2 + xs1) / 2.;
	dInY = dTestY;

	MP.X() = DtoL (dInX);
	MP.Y() = DtoL (dInY);

	if (INNERH == MP.EnthaltenIn (this))
		return true;

	_ASSERTE(false);
	return false;
}

// Memberfunktionen von GeoFlaeche

// Clipping f�r Fl�che: pSO schneidet this-Fl�che und erzeugt dabei evtl. 
// mehrere Teilfl�chen, die in CL eingetragen werden;
// Wird this-Fl�che geschnitten, wird true zur�ckgegeben, sonst false;
// bAbbr = true, wenn Schnittoperation abgebrochen wurde, sonst false
template <typename KoOrdT>
inline bool 
WMFlaeche<KoOrdT>::Clipping (WMObjekt<KoOrdT> *pSO, int iOT, 
	unsigned long ulLageAusw, WMClipListe<KoOrdT>& CL, int iSkip, 
	WMPosit& posLage, bool& bAbbr, void* pPSt)
{
	_ASSERTE(pSO != 0);	// pPSt kann 0 sein

	bAbbr = false;
	if (!pSO) 
		return false;

	switch (iOT) {
	case OT_KANTE:
		return ClippingMitKante ((WMKante<KoOrdT> *)pSO, CL, iSkip, bAbbr, pPSt);

	case OT_FLAECHE:
		return ClippingMitFlaeche ((WMFlaeche<KoOrdT> *)pSO, ulLageAusw, CL, 
			iSkip, posLage, bAbbr, pPSt);

	default:
		_ASSERTE(false);
		return false;	// kein zul�ssiger Objekttyp
	}
}

// Eintrag einer (Teil)Fl�che in die ClipListe; liefert true zur�ck, wenn 
// Eintrag m�glich war, sonst false
template <typename KoOrdT>
inline bool 
WMFlaeche<KoOrdT>::AddClipObjekt (WMClipListe<KoOrdT>& CL)
{
#if defined(_DEBUG)
	for (int i = 0; i < _Size; i++) {
		_ASSERTE(_KAF[i].ASP() >= 4);
	}
#endif // defined(_DEBUG)

	_ASSERTE(_Size >= 2);
	CL.insert(*this);
	return true;
}

// Inseln bei Schnittoperationen der zu schneidenden this-Fl�che mit der 
// schneidenden pSFl-Fl�che ber�cksichtigen, f�r den Fall, da� f�r 
// Schnittergebnis "au�erhalb" gew�hlt wurde
template <typename KoOrdT>
inline bool 
WMFlaeche<KoOrdT>::InselnBeiSchnittMitFlaecheAUSS (WMFlaeche* pSFl, 
	WMClipListe<KoOrdT>& CL, int iSkip)
{
	_ASSERTE(pSFl != 0);

bool bRet1 = true;
bool bRet2 = true;

	if (_Size > 1) {		// zu schneidende this-Fl�che hat Inseln
	bool bModify1 = false;	// an mindestens einer CL-Fl�che wurden durch die this-Inseln
							// Ver�nderungen vorgenommen (true)
	vector<int> piVbInsel1(_Size, 0);

		if (!InselnAmRand (CL, iSkip, piVbInsel1.begin(), bModify1))
			bRet1 = false;

	// letzter Parameter "false", da schon Inseln vorhanden sein k�nnen (f�r 
	// den Fall, da� schneidende Fl�che innerhalb der zu schneidenden liegt)
		if (!InselnInnerhalb (CL, iSkip))
			bRet1 = false;
	}

	if (pSFl->KantenAnz() > 1) {	// schneidende pSFl-Fl�che hat Inseln
	// Test, wie die pSFl-Inseln zu der zu this-Fl�che liegen
		bRet2 = InselZweiteFlaecheAUSS (pSFl, CL);
	}
	return bRet1 && bRet2;
}

// gemeinsame Konturabschnitte zweier Fl�chen werden in CL als Kanten 
// bereitgestellt (true); in posLage wird die Lage der beiden Fl�chen 
// zueinander angezeigt; gibt es keine gemeinsamen Konturabschnitte bzw. bei 
// unzureichendem dynamischen Speicher, wird false zur�ckgegeben
template <typename KoOrdT>
inline bool 
WMFlaeche<KoOrdT>::KonturGemeinsamkeiten (WMFlaeche* pFl, 
	unsigned long ulLageAusw, WMClipListe<KoOrdT>& CL, bool& bAbbr, void* pPSt)
{
	_ASSERTE(pFl != 0);	// pPSt kann 0 sein

WMPosit posLage = EnthaltenIn (pFl);

// keine Ber�hrung bzw. nicht erf�llte Auswahlbedingung
bool b1 = (INNERHB == posLage || KONTUR == posLage || GLEICH == posLage) && (ulLageAusw & LINN);
bool b2 = (AUSSERHB == posLage) && (ulLageAusw & LAUSS);
bool b3 = (UMSCHLB == posLage || INNAUSS == posLage) && (ulLageAusw & LINAU);

	if (!b1 && !b2 && !b3)
		return false;

bool bRet = false;		// return-Wert dieser Routine
int iKontAnz = pFl->KantenAnz();
bool bOverlap;	// this-Fl�che hat mit einer pFl-Kontur einen �berlappungsbereich bzw.
int iTouchOut;	// Parameter von KantenPosit(); wird hier nicht ausgewertet
bool bLeer;		// Parameter von Aufbereitung2(); wird hier nicht ausgewertet
long lNInd;		// der auf einen Anfangsindex folgende Index eines Konturabschnittes

	for (int i = 0; i < _Size; i++) {				// jede Kontur der this-Fl�che mit
		for (int ii = 0; ii < iKontAnz; ii++) {	//  jeder Kontur der pFl-Fl�che vergleichen
		// aus St�tzpunktfolge einer this-Kontur wird Vektor pML1 mit markierten Punkten
		// erzeugt; dieser Vektor wird in Routine Aufbereitung2() evtl. noch erweitert
		WMMarkLine ML1 (_KAF[i].ASP(), i);
		WMMarkLine ML2 (pFl->KA(ii).ASP(), ii);

			_ASSERTE(!(!ML1.Vektor() || !ML2.Vektor()));
			if (!_KAF[i].Aufbereitung2 (&pFl->KA(ii), &ML1, &ML2, bLeer, bAbbr, pPSt))
				continue;

		// Routine KantenPosit() ermittelt, ob die beiden Konturen einen
		// �berlappungsbereich haben
			posLage = KantenPosit (&pFl->KA(ii), &ML1, bOverlap, iTouchOut);
			if (!bOverlap) 
				continue;	// kein �berlappungsbereich
														  
		// Bilden der gemeinsamen Konturabschnitte														  
		long lVekL1 = ML1.ADP();

			// zuerst wird der Spezialfall getestet, ob es nur INNERHALB-Punkte gibt
			for (long j = 0; j < lVekL1; j++) {
				if (ML1.GetMk1(j) != INNERHALB) 
					break;
			}

			if (j == lVekL1) {	// alle Punkte tragen Markierung INNERHALB
			KoOrdT x = DtoL (ML1.x(0));
			KoOrdT y = DtoL (ML1.y(0));
			WMKante<KoOrdT> GK (&x, &y, 1);	// gemeinsamer Konturabschnitt
			
				GK.AddKonturTeil (&ML1, 1, lVekL1-1, -1);	// Rest von pML1 an pGK anh�ngen
				GK.AddClipObjekt (CL);					// Konturabschnitt in CL speichern
				continue;
			}

		// sonst den Normalfall abhandeln
		long lAInd1 = -1;		// 1. Anfangsindex eines Konturabschnittes
		bool bAufbau = false;	// Konturabschnitt ist aktuell (nicht) im Aufbau (true/false)
		WMKante<KoOrdT> GK;		// gemeinsamer Konturabschnitt

			j = 0;	// Laufindex von pML1
			do {
			WMMar1 mark11 = ML1.GetMk1(j);
		
				if (!bAufbau) {	// kein Konturabschnitt aktuell im Aufbau
					if (mark11 == RAND_INN || mark11 == RAND_UMG) {
					long k;			// der auf j folgende Index

						if (j < lVekL1-2) 
							k = j + 1;
						else 
							k = 0;
						mark11 = ML1.GetMk1(k);

					// bei nachfolgender Bedingung wurde das Ende eines Konturabschnitts erwischt
						if (mark11 != INNERHALB && mark11 != RAND_INN && mark11 != RAND_UMG) {
							do {
								j = (j > 0) ? j - 1 : lVekL1-2;	// 31.12.98
								mark11 = ML1.GetMk1(j);
							} while (mark11 != RAND_INN && mark11 != RAND_UMG);
						}

					// Anfang eines Konturabschnitts
					KoOrdT x = DtoL (ML1.x(j));
					KoOrdT y = DtoL (ML1.y(j));

						GK = WMKante<KoOrdT>(&x, &y, 1);
						lNInd = (j < lVekL1-2) ? j + 1 : 0;
						if (lAInd1 == -1) 
							lAInd1 = j;				// 1. Anfangsindex merken
						bAufbau = true;
					}
				}
				else {
				// Konturabschnitt aktuell im Aufbau
					if (mark11 == RAND_INN || mark11 == RAND_UMG) {
						GK.AddKonturTeil (&ML1, lNInd, j, -1);	// Teil von pML1 an pGK anh�ngen
						GK.AddClipObjekt (CL);					// Konturabschnitt in CL speichern
						bAufbau = false;
					}
				}
				j = (j < lVekL1-2) ? j + 1 : 0;
			} while (j != lAInd1);
		} // for/for
	}
	return true;
}

// Hilfsroutine f�r InselnInnerhalb(); zu der this-Fl�che mit Inseln wird als 
// zus�tzliche Insel pKont hinzugenommen, dabei sind evtl. �berschneidungen mit 
// den this-Inseln zu ber�cksichtigen
template <typename KoOrdT>
inline bool 
WMFlaeche<KoOrdT>::InselZweiteFlaeche (WMClipListe<KoOrdT>& CL, 
	WMKante<KoOrdT> * pKont, int iKInd)
{
	_ASSERTE(pKont != 0);

// Insel nach m�glicherweise mehreren Vereinigungen
WMFlaeche<KoOrdT> *pNewIsland = new WMFlaeche<KoOrdT>(pKont, 1);

	if (1 == _Size)	{
	// this-Fl�che hat keine Inseln
		AddKante (*pNewIsland, 1, -1);	// neue Insel einfach so hinzuf�gen
		DELETE_OBJ (pNewIsland);
		return true;
	}

// Abarbeitung aller this-Inseln, d.h. aller Inseln der 1. Fl�che, die 
// innerhalb der Teilfl�che liegen und dieser schon zugeordnet sind
bool bOverlap;	// pNewIsland hat mit dem Rand einer this-Insel einen 
				// �berlappungsbereich
int iTouchOut;	// Parameter von LageKonturZuKontur(); wird hier nicht 
				// ausgewertet

	for (int i = 1; i < _Size; i++) {
	WMMarkLine ML1 (pNewIsland->KA(0).ASP(), iKInd, true);	// 16.03.99
	WMMarkLine ML2 (_KAF[i].ASP(), i, true);

		_ASSERTE(!(!ML1.Vektor() || !ML2.Vektor()));

	// Lage der (vereinigten) Insel pNewIsland zur this-Insel _KAF[i]
	WMPosit posLage = pNewIsland->KA(0).LageKonturZuKontur (&_KAF[i], &ML1, 
		&ML2, bOverlap, iTouchOut);	// 16.03.99

//		if (INNAUSS != posLage && AUSSERHB != posLage) {
//			DELETE_OBJ (pML1); DELETE_OBJ (pML2);
//		}

		switch (posLage) {
		case INNERH:
		case INNERHB:
		case KONTUR:
		case GLEICH:
			DELETE_OBJ (pNewIsland);
			return true;	// hier brauche ich nichts zu machen

		case INNAUSS:	// beide Inseln vereinigen
			ZweiInselnVereinigen (CL, pNewIsland, &ML1, &ML2);	// 29.10.98
			SubKante (1, i);	// alte _KAF[i]-Insel herausnehmen

		// da jetzt eine Insel gel�scht wurde, hat jetzt die n�chste den gleichen
		// Index, wie die soeben gel�schte; deshalb mu� das "i++" in der for-Anweisung
		// neutralisiert werden
			i--;
			break;

// �berfl�ssig (28.10.98)
//			case AUSSERH:		// hier kann ich noch nichts endg�ltiges entscheiden
//				break;

		case AUSSERHB:
		// wenn pNewIsland mit dem Rand der this-Insel keinen �berlappungsbereich hat,
		// kann ich noch nichts endg�ltiges entscheiden, ansonsten beide Inseln
		// vereinigen
			if (bOverlap) {
				ZweiInselnVereinigen (CL, pNewIsland, &ML1, &ML2);	// 29.10.98
				SubKante (1, i);	// alte _KAF[i]-Insel herausnehmen
				i--;
			}
			break;

		case UMSCHL:		// hier kann ich noch nichts endg�ltiges entscheiden
		case UMSCHLB:
			SubKante (1, i);	// alte _KAF[i]-Insel herausnehmen
			i--;
			break;

		case OFFEN:			// hier kann ich nichts machen
		case UNKLAR:
			DELETE_OBJ (pNewIsland);
			return false;
		} // switch
	} // for

	AddKante (*pNewIsland, 1, -1);	// neue (vereinigte) Insel hinzuf�gen
	DELETE_OBJ (pNewIsland);
	return true;
}

} // namespace trias_wmgeometry

#endif // !defined(_FLAECHE_INL__3F1018D6_D59D_4202_8F7F_B18CBC8AF418__INCLUDED_)
