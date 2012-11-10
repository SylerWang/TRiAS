// Routine zur Fehlerbehandlung von Ladefehlern von Erweiterungen -------------
// File: EEXTERR.CXX

#include "trias01p.hxx"

#include "resource.h"

#include <stdarg.h>
#include <containr.hxx>

extern FLAG error_flag;
extern "C" HINSTANCE g_hInstance;

extern "C" int __cdecl EXPORT01 ReportExtError (int err_code, int r_code, ...)
{
va_list paramlist;
LPCSTR pExtName = NULL;
DBASE *olddb;

	va_start (paramlist, r_code);
	pExtName = va_arg (paramlist, LPCSTR);
	va_end (paramlist);

// Metadatenbasis er�ffnen bzw. aktivieren 
        if (act_meta (&olddb) != S_OKAY) return (db_status);

// Ausgabe einer Fehlermeldung 
        if (error_flag) {
	char szCaption[32];
	char szFormat[256];

		LoadString (g_hInstance, IDS_LOADERRORCAP, szCaption, sizeof(szCaption));
		LoadString (g_hInstance, IDS_LOADERROR, szFormat, sizeof(szFormat));
		ErrorWindow (&olddb, szCaption, szFormat, pExtName);
//		error_message (&olddb, err_code, r_code, ZusatzText);
        }

// Fehler in Liste eintragen 
        store_error (&err_code, r_code);

// aktuelle DB wieder zuschalten 
	if (olddb != NULL) {
	        activate (olddb);
		olddb = NULL;
	}
        
return (db_status = err_code);
}


