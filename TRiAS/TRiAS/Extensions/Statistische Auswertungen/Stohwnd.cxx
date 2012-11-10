// Sammeln FensterHandle in Baum
// File: STOHWND.CXX
#include "statistp.hxx"
#include "geostat.h"
//#include "dirmath.h"

#include "stohwnd.hxx"



// Member f�r Klasse SHWND----------------------------------------------------

SHWND :: SHWND ( HWND Shwnd )
{
	_Shwnd = Shwnd;
}

SHWND :: ~SHWND ( void )
{

}

// Memberfunktionen f�r SHWNDTree -----------------------------------------------
SHWNDTree :: SHWNDTree (void) 
	 : CTree (GetHwnd, CmpHwnds)
{
	// nothing else to do
}

SHWNDTree :: ~SHWNDTree (void) 
{
	EveryDelete ();	// alle Elemente des Baumes freigeben
}

void _XTENSN_EXPORT SHWNDTree :: UserDelete (void *pWnd) 
{
	((SHWND *)pWnd) -> ~SHWND();
}

// Zugriffsfunktionen auf Baumelemente ----------------------------------------
void _XTENSN_EXPORT *GetHwnd (void *pWnd) 
{
	return (void *)& (((SHWND *)pWnd) -> Shwnd());
}

int _XTENSN_EXPORT CmpHwnds (void *pWnd1, void *pWnd2) 
{
HWND l1 = ((SHWND *)pWnd1) -> Shwnd();
HWND l2 = ((SHWND *)pWnd2) -> Shwnd();

	if (l1 < l2) return -1;
	if (l1 > l2) return 1;
	return 0;
}
