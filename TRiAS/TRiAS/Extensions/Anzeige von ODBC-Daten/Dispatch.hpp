/*------------------------------------------------------------------------

File: DISPATCH.HPP

DISPATCH - Interface
beinhaltet allgemeine Funktionen f�r die Arbeit mit ODBC-Dateien.

Erarbeitet: J. Benkenstein                      begonnen am: 16. Sept. 1992
												Stand vom 12. M�rz 1994
----------------------------------------------------------------------------*/

#ifndef _DISPATCH_HPP
#define _DISPATCH_HPP

class ShowFile;

class dBaseDispatch : public CListContainer {
private:
// 	Attribute
//	HelpDisplay *_pHD;
	// HWND _hWndParent;		// ORFenster, f�r welches dieser Dispatcher
	// CWnd  *_pWndParent;		// zust�ndig ist               
	HWND _hWnd;				// zugeh. Fenster-Handle							
	long _lActObj;          // BezugsObjekt
	
protected:
	void UserDelete (void *pObj);

public:
// 	Konstruktor/Destruktor
	dBaseDispatch (HWND Parent, long ActObj /* HelpDisplay *pHD */);
	~dBaseDispatch (void);

// 	sonst. Member
	ErrCode ShowDBaseWindowField (const char *pAliasName, const char *pFieldName, 
						          const char *pValue);
	void DeleteOldWindows (void);         
	
	HWND &hWnd (void) { return _hWnd; }    
	long ActObj (void) { return _lActObj; }
	
	friend void *RetrievehWnd (void *pObj);
	friend int CmphWnd (void *pKey1, void *pKey2);
};
DeclareLock (dBaseDispatch, ShowFile);

//
// Die Klasse DBaseDispatchTree verwaltet die DBaseDispatcher aller offenen
// ObjektrechercheFenster. Jedes dieser ObjektRechercheFenster verwaltet die
// f�r ein Objekt er�ffneten DBaseFenster in einem dieser DDaseDispatcher.
// Der ZugriffsSchl�ssel auf die DBaseDispatcher ist das FensterHandle des 
// ObjektRechercheFensters.
//
class DBaseDispatchTree : public CTree {
protected:
	void UserDelete (void *pObj);

public:
	DBaseDispatchTree (void);
	~DBaseDispatchTree (void);
		
	void AllDelete (HWND hWnd);
	ErrCode ShowDBaseWindowField (HWND hWnd, char *pAliasName, 
								  char *pFieldName, char *pValue);
				      
	long ActObj (HWND);                                   
};
DeclareLock (DBaseDispatchTree, dBaseDispatch);

#endif // _DISPATCH_HPP
