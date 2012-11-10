// Precompiled Header f�r OBJCLIP.EXT -----------------------------------------
// File: OBJCLIPP.HXX

#if !defined(_OBJCLIPP_HXX)
#define _OBJCLIPP_HXX

#include <windows.h>	// Window-Konstanten und Datenstrukturen
#include <string>	// f�r strcpy
#include <stdlib.h>	// f�r ltoa
#include <direct.h>
#if !defined(WIN32)
#include <storage.h>
#endif // WIN32

#include <resstrg.h>

#include <commonvu.hxx>

#include <errcodes.hxx>
#include <xtension.h>
#include <xtensnx.h>

#include <ixtensn.hxx>          // Interfaces einer Erweiterung
#include <xtencunk.hxx>         // InterfaceImplementation der BasisKlasse
#include <xtsnaux.hxx>

#include <containr.hxx>

#include "objcldlg.hxx"		// ViewerFenster
#include "objclip.hxx"		// Klasse f�r diese Erweiterung

#endif // _OBJCLIPP_HXX
