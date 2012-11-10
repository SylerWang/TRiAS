// Klassen f�r Abspeicherung von Objektnummern in einem Baum
// File: NumTree.hxx
// W. M�rtl


#ifndef _NUMTREE_HXX
#define _NUMTREE_HXX



#if !defined(NOOBJNRKNOTEN)

class ObjNrKnoten
{
friend void* ObjNrGetKey (void*);		// liefert den Schl�ssel des Knotens
friend int ObjNrCompare (long, long);	// vergleicht zwei Schl�ssel

protected:
	long m_lONr;
	long m_lFrequCnt;	// H�ufigkeitsz�hler
	
public:
		ObjNrKnoten (long lONr) { m_lONr = lONr; m_lFrequCnt = 1;}
		~ObjNrKnoten (void) {}

	long GetONr (void) const { return m_lONr; }
	void IncCounter (void) { m_lFrequCnt++; }
	long GetCounter (void) const { return m_lFrequCnt; }
};
#endif // NOOBJNRKNOTEN

                                              
                                              
#if !defined(NOOBJNRBAUM)

DefineCmpForTree (ObjNrBaum, ObjNrCompare, long);

class ObjNrBaum : public container_wrappers::CTreeOnStl<long,ObjNrKnoten*,ObjNrBaumCmp>
{
protected:
	void UserDelete (void* pObj);
	
public:
	typedef container_wrappers::CTreeOnStl<long,ObjNrKnoten*,ObjNrBaumCmp> BaseTree;

		ObjNrBaum (LONG lDelta = 1) : BaseTree(ObjNrGetKey) {}
		~ObjNrBaum (void) { EveryDelete(); }

	bool InsertK (long lONr, long lRefObjCount);
	bool MemberK (long lONr);
	long GetCounter (long lONr);
};

	// generiert zwei Klassen:
	// ObjNrKnotenCreator    f�r Neueintrag eines ObjNrKnoten in ObjNrBaum
	// ObjNrKnotenLock       f�r typsicheren Zugriff auf einen Knoten
	DeclareOptLockStl (ObjNrBaum, ObjNrKnoten);

#endif // NOOBJNRBAUM

#endif // _NUMTREE_HXX
