// Precompiled Header f�r Container -------------------------------------------
// File: CONTPRE.HXX

#include <bool.h>
#include <windows.h>

///////////////////////////////////////////////////////////////////////////////
// aus Registry geladene Flags, die vorgeben, was �berhaupt erlaubt ist
typedef enum tagCONTFLAGS CONTFLAG;		// forward decl
extern CONTFLAG g_rgContFlags;

#include <containr.hxx>
