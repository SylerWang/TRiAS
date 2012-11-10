// Fehler in BasicScript ------------------------------------------------------
// File: BSCRERR.H

#if !defined(_BSCRERR_H)
#define _BSCRERR_H

#define TRIASERR_TYPEMISMATCH	10000		// Typemismatch f�r TRiASObjekte
#define TRIASERR_NOTSUPPORTED	10001		// ErrorCode f�r nicht definierte Funktion 
#define TRIASERR_GENERALERROR	10002		// ErrorCode f�r unbekannten Fehler

extern int g_fDebugScript;

#endif // _BSCRERR_H