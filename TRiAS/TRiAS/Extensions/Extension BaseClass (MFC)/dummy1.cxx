// DummyVarianten f�r diverse Funktionen --------------------------------------
// File: DUMMY1.CXX

#include "xtensnp.hxx"

#if defined(_DEBUG) && defined(WIN32)
#if defined(__MFC__)
#define new DEBUG_NEW
#endif // __MFC__
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif // _DEBUG

// RegDB aktualisieren (initialisieren/l�schen) -------------------------------
BOOL UpdateRegistry (BOOL fRegister)
{
	return false;
}


