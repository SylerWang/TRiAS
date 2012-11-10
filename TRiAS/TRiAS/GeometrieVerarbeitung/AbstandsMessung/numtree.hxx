// Klassen f�r Abspeicherung von Objektnummern in einem Baum
// File: NUMTREE.HXX
// W. M�rtl


#ifndef _NUMTREE_HXX
#define _NUMTREE_HXX



#if !defined(NOOBJNRKNOTEN)
class ObjNrKnoten
{
friend void* ObjNrGetKey (void*);		// liefert den Schl�ssel des Knotens
friend int ObjNrCompare (void*, void*);	// vergleicht zwei Schl�ssel

protected:
	long m_lONr;
	
public:
		ObjNrKnoten (long lONr) { m_lONr = lONr; }
		~ObjNrKnoten (void) {}

	long GetONr (void) const { return m_lONr; }
};
#endif // NOOBJNRKNOTEN

                                              
                                              
#if !defined(NOOBJNRBAUM)
class ObjNrBaum : public COptTree
{
protected:
	void UserDelete (void* pObj);
	
public:
//		ObjNrBaum (void) : COptTree (ObjNrGetKey, ObjNrCompare) {}
		ObjNrBaum (LONG lDelta = 1) : COptTree (ObjNrGetKey, ObjNrCompare, CFDefault, lDelta) {}
		~ObjNrBaum (void) { EveryDelete(); }

	bool InsertK (long lONr);
	bool MemberK (long lONr);
	bool DeleteK (long lONr);
};


	// generiert zwei Klassen:
	// ObjNrKnotenOptCreator    f�r Neueintrag eines ObjNrKnoten in ObjNrBaum
	// ObjNrKnotenLock          f�r typsicheren Zugriff auf einen Knoten
	DeclareOptLock (ObjNrBaum, ObjNrKnoten);

#endif // NOOBJNRBAUM

#endif // _NUMTREE_HXX
