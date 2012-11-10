// Klassen f�r Abspeicherung von Objektgeometrien in einem Baum
// File: GEOMTREE.HXX
// H. Kaiser, W. M�rtl


#ifndef _GEOMTREE_HXX
#define _GEOMTREE_HXX


#if !defined(NOGEOMETRIEBAUM)
class GeometrieKnoten
{
friend void* GeometrieGetKey (void*);		// liefert den Schl�ssel des Knotens
friend int GeometrieCompare (void*, void*);	// vergleicht zwei Schl�ssel

private:
	IObjektGeometrie* m_pIOG;
	long m_lONr;		// Objektnummer von m_pIOG (Schl�ssel f�r GeometrieBaum)
	short m_iAnz;		// Anzahl, wie oft dieses Objekt in m�glicherweise mehreren
						//  Recherchfenstern selektiert ist

protected:
		GeometrieKnoten (void);

	bool FInit (long lONr);

public:
		~GeometrieKnoten (void);

static GeometrieKnoten* CreateInstance (long lONr);

//	operator IObjektGeometrie *() { return m_pIOG; }

	HRESULT GetIOG (IObjektGeometrie** ppIOG);
	long& GetONr (void) { return m_lONr; }
	short GetAnz (void) const { return m_iAnz; }
	void IncAnz (void) { m_iAnz++; }		// m_iAnz inkrementieren
	void DecAnz (void) { m_iAnz--; }		// m_iAnz dekrementieren
	void SetAnz (short iAnz = 0) { m_iAnz = iAnz; }	// m_iAnz setzen

//	bool WriteBack (...);
//	bool MarkObject (...);
};
#endif // NOGEOMETRIEKNOTEN

                                              
                                              
#if !defined(NOGEOMETRIEBAUM)
class GeometrieBaum : public COptTree
{
protected:
	void UserDelete (void* pObj);
	
public:
		GeometrieBaum (LONG lDelta = 1)
			: COptTree (GeometrieGetKey, GeometrieCompare, CFDefault, lDelta) {}
		~GeometrieBaum (void) { EveryDelete(); }

	bool InsertK (long lONr);
	bool DeleteK (long lONr);
	bool WiederholungK (long lONr);
};


	// generiert zwei Klassen:
	// GeometrieKnotenCreator    f�r Neueintrag eines GeometrieKnoten in GeometrieBaum
	// GeometrieKnotenLock       f�r typsicheren Zugriff auf einen Knoten
	DeclareOptLock (GeometrieBaum, GeometrieKnoten);

#endif // NOGEOMETRIEBAUM

#endif // _GEOMTREE_HXX
