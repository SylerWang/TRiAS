// TRiAS Objektklassenschl�ssel 
// File: OksTree.cpp

#include "StdAfx.h"
#include <ctype.h>

#if !defined(OS_NO_STREAM_SUPPORT)
#include <ospace/source.h>
#endif // OS_NO_STREAM_SUPPORT

#include "OksTree.h"

using namespace ospace::std::rel_ops;

#if !defined(OS_NO_STREAM_SUPPORT)
OS_STREAMABLE_0((COksElement *), os_user_start_id+1)
OS_STREAMABLE_0((vtree<COksElement> *), os_user_start_id+2)
OS_STREAMABLE_0((tree_node<COksElement> *), os_user_start_id+3)
OS_STREAMABLE_0((list<tree_node<COksElement> *> *), os_user_start_id+4)

///////////////////////////////////////////////////////////////////////////////
// Streaming der definierten Klassen
void os_write (os_bstream& stream, const COksElement& l)
{
	stream << l.m_iCode;
	stream << l.m_strText;
	stream << (LONG)l.m_rgType;
	stream << l.m_iDigits;
}

void os_read (os_bstream& stream, COksElement& l)
{
	stream >> l.m_iCode;
	stream >> l.m_strText;

LONG lDummy = 0;

	stream >> lDummy;
	l.m_rgType = (COksElement::NODETYPE)lDummy;
	stream >> l.m_iDigits;
}
#endif // OS_NO_STREAM_SUPPORT

///////////////////////////////////////////////////////////////////////////////
// Stringkonstanten
const char OKS_ROOT_NAME[] = "OKS";		// Name des WurzelKnotens
const char OKS_ART_SUBSTR[] = "art";

///////////////////////////////////////////////////////////////////////////////
// Ein Digit in den entsprechenden Zahlenwert konvertieren
inline 
int FromHex (const char *pcOKS, const char **ppcOKS)
{
	if ('(' == *pcOKS) {
	int iValue = strtol (pcOKS, (char **)&pcOKS, 16);

		if (')' == *pcOKS)
			pcOKS++;

		*ppcOKS = pcOKS;
		return iValue;
	} else {
	int c = *pcOKS++;

		*ppcOKS = pcOKS;
		ASSERT(isascii(c) && isxdigit(c));

		if (c >= '0' && c <= '9')
			return c - '0';
		if (c >= 'a' && c <= 'f')
			return c - 'a' + 10;
		if (c >= 'A' && c <= 'F')
			return c - 'A' + 10;
	}	
	ASSERT(false);
	return 0;
}

///////////////////////////////////////////////////////////////////////////////
// beseitigt von hinten alle gesuchten Zeichen, liefert true, wenn wenigstens 
// ein Zeichen in der Zeichenkette �brig bleibt
bool trim_right (os_string &rStr, int c)
{
os_string::size_type pos = rStr.find_last_not_of (c);

	if (os_npos == pos) {
		rStr = "";
		return false;
	}

	rStr = rStr.substr (0, pos+1);
	return true;
}

///////////////////////////////////////////////////////////////////////////////
// Stellt unabh�ngig von Gro�-/Kleinschreibung fest, ob eine Zeichenkette in
// einem os_string enthalten ist
inline
bool contains (const os_string &rStr, const char *pSrch)
{
	return os_npos != rStr.find (pSrch);	// %%TODO: Gro�-/Kleinschreibung ignorieren
}

///////////////////////////////////////////////////////////////////////////////
// Z�hlt die Anzahl der verbleibenden (logoschen) Digits
inline 
int TrailingDigits (const char *pcOKS)
{
int iCnt = 0;

	while ('\0' != *pcOKS) {
		if ('(' == *pcOKS) {
		// Gruppe von Digits z�hlt als ein logisches Digit
		bool fMatching = false;

			iCnt++;
			while ('\0' != *pcOKS) {
				if (')' == *pcOKS++) {
					fMatching = true;
					break;
				}
			}
			ASSERT(fMatching);
		} else {
			iCnt++;
			pcOKS++;
		}
	}
	return iCnt;
}

///////////////////////////////////////////////////////////////////////////////
// Einf�gen eines Eintrages in den Baum
oks_tree::oks_ch_iter oks_tree::insert (
	oks_node *pNode, const char *pcOKS, const char *pcText, 
	int iDigits, int iLeading)
{
	ASSERT(NULL != pcOKS && '\0' != *pcOKS);

int iCode = FromHex(pcOKS, &pcOKS);

	for (oks_ch_iter it = pNode -> ch_begin(); /**/; ++it)
	{
		if (it == pNode -> ch_end() || it -> value.GetCode() > iCode) {
		// evtl. ZwischenKnoten f�r parallel-Hierarchie einf�gen
			if (0 < iDigits && TrailingDigits(pcOKS)+1 == iDigits) {
				if (COksElement::NODETYPE_Special == pNode -> value.GetType()) 
					return pNode -> insert (it, COksElement (pcText, iCode));
				else
					return pNode -> insert (it, COksElement (pcText, iCode, iDigits));
			}

		// neues Element hier einf�gen
			if ('\0' == *pcOKS) 	// am Ende des OKS angelangt, mit Text einf�gen
				return pNode -> insert (it, COksElement (pcText, iCode));

		// ZwischenNode einf�gen, da selbiger ben�tigt wird
		oks_ch_iter itTmp = pNode -> insert (it, COksElement ("HelperNode", 0));

			if (itTmp == root().ch_end())
				return itTmp;

			return insert (&(*itTmp), pcOKS , pcText, iDigits, iLeading);

//			ASSERT('\0' == *pcOKS);		// ZwischenNode wird gebraucht
//			return root().ch_end();
		}

		if (COksElement::NODETYPE_Special == it -> value.GetType()) {
		// SubKnoten ist spezieller Zwschenknoten
		int iLeadDigits = it -> value.GetNumDigits();

			if (TrailingDigits(pcOKS)+1 == iLeadDigits)	// an Subknoten anh�ngen
				return insert (&(*it), pcOKS-1, pcText, iLeadDigits, iLeading);

			ASSERT((int)TrailingDigits(pcOKS)+1 > iLeadDigits);

			pcOKS += iLeadDigits-1;
			iCode = FromHex(pcOKS, &pcOKS);
			continue;
		}

		if (it -> value.GetCode() == iCode) {
			if ('\0' == *pcOKS) {
				ASSERT(it -> value.GetText().size() > 0);	// Text mu� existieren
				return it;		// existiert bereits
			}

		// eine Etage weiter runter
			return insert (&(*it), pcOKS, pcText, iDigits, iLeading);
		}
	}

	return root().ch_end();
}

///////////////////////////////////////////////////////////////////////////////
// Herausl�schen eines gegebenen Knotens aus dem oks_tree
bool oks_tree::erase (const char *pOKS)
{
	return false;
}

///////////////////////////////////////////////////////////////////////////////
// Generiert Beschreibungstext f�r einen vorgegebenen OKS
// 
// 1. Bei hierarchisch aufgebauten Schl�sselnummern findet der Text Verwendung, 
//    der bei der aktuell verwendeten Schl�sselnummer verzeichnet ist 
//    (die dazugeh�rigen Obergruppen spielen keine Bedeutung, bzw. wesentliche 
//    Merkmale der Obergruppen sind begrifflich in hierarchisch weiter unten 
//    eingeordneten Klassen mit enthalten).
//
// 2. F�r die Textgenerierung bei Objektklassen, die u.a. nach unabh�ngigen 
//    Kriterien (Sachgebieten) untergliedert sind, wird nach folgender 
//    Verfahrensweise vorgegangen:
//    Ausgangspunkt der begrifflichen Erl�uterung ist die Obergruppe, bis zu 
//    der eine reine hierarchische Untergliederung erfolgt ist, d.h. vor der 
//    ersten Untergliederung nach gleichrangigen, unabh�ngigen Kriterien.
//    Anschlie�end kommen zwei Varianten der Begriffsfortf�hrung in Betracht:
//
//    Ist das erste unabh�ngige Kriterium mit dem Begriff ...ART verbunden 
//    (z.B. Waldart, B�schungsart, Quellenart ...), und ist dieses Kriterium 
//    durch Ziffern belegt (keine Nullen), so wird der Ausgangstext (s.o.) 
//    durch den neuen Begriff unter diesem Kriterium ...ART ersetzt und steht 
//    jetzt als neuer Ausgangspunkt der Textgenerierung.
//
//    Liegt die oben genannte Bedingung nicht vor, d.h. das erste nachfolgende 
//    unabh�ngige Kriterium bezieht sich nicht auf die ...ART, so bleibt der 
//    urspr�ngliche Ausgangstext erhalten.
//
//    Die weiteren unabh�ngigen Kriterien werden (durch Kommata getrennt) an 
//    den Ausgangstext angeh�ngt (nur die Positionen, die belegt sind!).
//
//    (Zitat: Anwendung des Objektklassenschl�ssels im GIS TRiAS�)

bool oks_tree::generate_text (oks_node *pNode, const char *pcOKS, os_string &rStr)
{
	ASSERT(NULL != pcOKS && '\0' != *pcOKS);

int iCode = FromHex(pcOKS, &pcOKS);

	for (oks_ch_iter it = pNode -> ch_begin(); /**/; ++it)
	{
		if (it == pNode -> ch_end() || it -> value.GetCode() > iCode) 
			break;		// vorbeigerauscht, nicht gefunden

	// SubKnoten ist spezieller Zwschenknoten
		if (COksElement::NODETYPE_Special == it -> value.GetType()) {
		// Anzahl der Digits, die von diesem Spezialknoten behandelt werden
		int iLeadDigits = it -> value.GetNumDigits();

			ASSERT(0 < iLeadDigits);

		os_string strOKS (pcOKS-1, iLeadDigits);

			if (trim_right(strOKS, '0')) {	// abschlie�ende Nullen beseitigen
			// diese parallel-Hierarchie ist belegt, Teiltext generieren
			os_string str;

				if (!generate_text (&(*it), strOKS.c_str(), str))
					return false;

			// den Teiltext entsprechend Regeln (s.o.) verwenden
				if (it == pNode -> ch_begin() && contains (it -> value.GetText(), OKS_ART_SUBSTR)) {
				// 1. Spezialknoten einer Parallel-Hierarchie und enth�lt "...art"
					rStr = str;
				} else {
				// ansonsten hinten dran kopieren
					rStr += ", " + str;
				}
			}

			pcOKS += min((size_t)iLeadDigits, strlen(pcOKS)+1)-1;
			if ('\0' == *pcOKS)
				return true;		// erfolgreich abgearbeitet

			iCode = FromHex(pcOKS, &pcOKS);
			continue;
		}

	// Subknoten in direkter Hierarchie wiedergefunden
		if (it -> value.GetCode() == iCode) {
			rStr = it -> value.GetText();
			if ('\0' == *pcOKS)
				return true;		// erfolgreich wiedergefunden

		// eine Etage weiter runter, Text wird entsprechend Regeln (s.o.) 
		// vollst�ndig weiter unten erzeugt
			return generate_text (&(*it), pcOKS, rStr);
		}
	}

// nichts gefunden
	return false;
}

///////////////////////////////////////////////////////////////////////////////
// Stellt fest, wieviele Digits in dieses parallelen HierarchieGruppen existieren
int CountAllDigits (oks_tree::oks_ch_iter it)
{
// parent besorgen
oks_tree::oks_up_iter upit = it -> up_begin();
int iCnt = 0;

	for (oks_tree::oks_ch_iter ch = (++upit) -> ch_begin(); 
		 ch != upit -> ch_end(); ++ch)
	{
		ASSERT(COksElement::NODETYPE_Special == ch -> value.GetType());
		iCnt += ch -> value.GetNumDigits();
	}
	return iCnt;
}

///////////////////////////////////////////////////////////////////////////////
// Stellt fest, wieviele Digits vor dieser parallelen HierarchieGruppe existieren
int CountDigits (oks_tree::oks_ch_iter it)
{
// parent besorgen
oks_tree::oks_up_iter upit = it -> up_begin();
int iCnt = 0;

	for (oks_tree::oks_ch_iter ch = (++upit) -> ch_begin(); 
		 ch != upit -> ch_end(); ++ch)
	{
		if (&(*ch) == &(*it))
			break;

		ASSERT(COksElement::NODETYPE_Special == ch -> value.GetType());
		iCnt += ch -> value.GetNumDigits();
	}
	return iCnt;
}

///////////////////////////////////////////////////////////////////////////////
//
#if defined(_DEBUG)

#include <ospace/stlex/dbgstream.h>

///////////////////////////////////////////////////////////////////////////////
// Ausgabe des gesamten Inhaltes des Baumes
class CDumpPred :
	public oks_tree::oks_callback
{
private:
	ostream &m_rStm;

protected:
// Ausgeben einer definierten Anzahl von Tab's
	void Indent (int iLevel, bool fSpecial)
	{
	int iCnt = 4*(iLevel-1) + 2;

		for (int i = 0; i < iCnt; ++i) {
			if (fSpecial && 0 == i)
				m_rStm << "*";
			else
				m_rStm << " ";
		}
	}

public:
	CDumpPred (ostream &rostm) :
		m_rStm (rostm) {}

	bool operator() (int iLevel, oks_tree::oks_ch_iter it, const os_string str)
	{ 
		if (iLevel > 0) 
			Indent(iLevel, it -> value.GetType() == COksElement::NODETYPE_Special);

		m_rStm << str << endl;
		return true; 
	}
};

void oks_tree::DumpAll (void)
{
odbgstream dbg (256);
CDumpPred pred (dbg);

	dbg.flags (dbg.flags|(int)ios::hex);
	oks_traverse (begin(), end(), pred);
}

#endif // _DEBUG


