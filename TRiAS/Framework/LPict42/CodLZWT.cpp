#include "stdafx.h"
#include "LPictImpl.h"

#ifdef LAFX_PICT_SEG
#pragma code_seg(LAFX_PICT_SEG)
#endif

#ifdef _DEBUG
#undef THIS_FILE
static char BASED_CODE THIS_FILE[] = __FILE__;
#endif

IMPLEMENT_DYNCREATE( CCodecLZWTiff, CPictCodec );

#define	new	DEBUG_NEW

void CCodecLZWTiff::Reset( ) {
}

BOOL CCodecLZWTiff::Encode( HPBYTE pSrcData, HPBYTE& pDstData, long nSrcBytes ) {
	ASSERT( NULL != m_pPicture );
	return FALSE;
}

long	CCodecLZWTiff::DecodeLine( long nBytes ) {
	return nBytes;
}

#ifdef _DEBUG

#define CLEAR		256		// Clear-Code
#define EOI			257		// End Of Information-Code
#define NO_LZW_CODE	4096	// Das ist kein g�ltiger GIF-LZW-Code
#define PREFIXTABLE	12		// Anzahl der Codeeintr�ge f�r ein Pr�fix
							// in der Pr�fixtabelle

DWORD	m_Prefix[4096];		// LZW-Pr�fix
BYTE	m_Suffix[4096];		// LZW-Suffix
BYTE	m_Stack[4096];		// Stack

HPBYTE	lpFill;				// Zeiger auf dekomprimierte LZW-Daten
HPBYTE	lpStack;			// Stackpointer
HPDWORD	lpPrefixTable;		// Zeiger auf Pr�fixtabelle
UINT	uDataSize;			// Datengr��e f�r LZW-Komprimierung
UINT	uCodeSize;			// Codegr��e f�r LZW-Komprimierung
UINT	uCodeMask;			// Codemaske f�r LZW-Komprimierung
UINT	uPrefix[4096];		// LZW-Pr�fix
BYTE	cSuffix[4096];		// LZW-Suffix
BYTE	cStack[4096];		// Stack
UINT	uAvail;				// N�chster freier Code
UINT	uOldCode;			// Letzter bereits dekodierter Code

/********************************************************************/
/***	DecodeLZW: Verarbeitet einen Codewert: Tr�gt ihn in die	***/
/***	Codetabelle ein oder l�scht diese. Weiterhin	***/
/***	werden die entsprechenden Bilddaten erzeugt.	***/
/********************************************************************/

BOOL DecodeLZW(register UINT uCode)
{
	static BYTE	cFirstChar;	// Zwischenspeicher f�r dekodiertes Byte
	UINT		uInCode;	// Zwischenspeicher f�r �bergebenen Code
	char		szString[40];	// Pufferspeicher f�r Fehlermeldung

	// Behandlung des Clear-Codes
	if (uCode == CLEAR) {
		// R�cksetzen aller Variablen f�r die LZW-Dekodierung
		uCodeSize = uDataSize + 1;
		uCodeMask = (1 << uCodeSize) - 1;
		uAvail	= CLEAR + 2;
		uOldCode	= NO_LZW_CODE;
		return TRUE;
	}

	// �berpr�fen, ob ein g�ltiger, in der Codetabelle bereits
	// existierender Code vorliegt
	if (uCode > uAvail) {
		wsprintf(szString, "Ung�ltiger LZW-Code %d!", uCode);
		return FALSE;
	}

	// Behandlung f�r den ersten LZW-Code: Merken und Ausgeben
	if (uOldCode == NO_LZW_CODE) {
		cFirstChar = cSuffix[uCode];
		*lpFill++	= cFirstChar;
		uOldCode	= uCode;
		return TRUE;
	}

	uInCode = uCode;	// LZW-Code merken

	// Der erste LZW-Code ist immer kleiner als nAvail
	if (uCode == uAvail) {
		*lpStack++ = cFirstChar;
		uCode	= uOldCode;
	}

	// Schleife, um dekodierte Bytes auf dem Stack abzulegen
	while (uCode > CLEAR) {
		*lpStack++ = cSuffix[uCode];
		uCode	= uPrefix[uCode];
	}

	// Neuen Code in Codetabelle eintragen
	cFirstChar	= cSuffix[uCode];
	*lpStack++	= cFirstChar;
	uPrefix[uAvail] = uOldCode;
	cSuffix[uAvail] = cFirstChar;
	if (uAvail < 4096)
		uAvail++;

	// Erh�hen der Codegr��e
	if (uAvail == uCodeMask) {
		uCodeSize++;
		uCodeMask = (1 << uCodeSize) - 1;
	}

	// Ausgeben der dekodierten Bytes (auf dem Stack)
	uOldCode = uInCode;
	do {
		*lpFill++ = *--lpStack;
	} while (lpStack > (HPBYTE) cStack);

	return TRUE;
}

/********************************************************************/
/***	DecompressLZW: Dekomprimiert LZW-Daten	***/
/********************************************************************/

BOOL DecompressLZW(HPBYTE lpSource, HPBYTE lpDest, DWORD dwSize) {
	register	DWORD	dwDatum;	// Aktuelle Datenwert
	register	DWORD	dw;			// Z�hler f�r LZW-Daten
	register	UINT	uBits;		// Z�hler f�r Bitverschiebung
	register	UINT	uCode;		// Aktueller Codewert

	// Initialisierung der aktuellen Zielposition
	lpFill = lpDest;

	// Parameter f�r LZW-Kompression bestimmen
	uDataSize = 8;	// Datengr��e f�r TIFF-LZW
	uAvail	= CLEAR + 2;	// N�chster freier Code
	uOldCode	= NO_LZW_CODE;	// Letzter Code
	uCodeSize = uDataSize + 1;	// Codegr��e
	uCodeMask = (1 << uCodeSize) - 1; // Codemaske

	// Codetabelle initialisieren
	for (uCode = 0; uCode < CLEAR; uCode++) {
		m_Prefix[uCode] = NO_LZW_CODE;
		m_Suffix[uCode] = (BYTE) uCode;
	}

	// Stackpointer initialisieren
	lpStack = (HPBYTE) cStack;

	// Dekomprimiere Streifen
	dwDatum = 0;	// Initialisieren
	uBits	= 0;	// Initialisieren
	for (dw = 0; dw < dwSize; dw++, lpSource++) {
		// Codewort aus Bit-Strom auslesen
		dwDatum += (DWORD) *lpSource << (24 - uBits);
		uBits	+= 8;
		while (uBits >= uCodeSize) {
			uCode	= (UINT) ((dwDatum & (ULONG_MAX - uCodeMask)) >> (32 - uCodeSize)); // Aktuellen Code
			dwDatum <<= uCodeSize;	// maskieren
			uBits	-= uCodeSize;
			if (uCode == EOI)
				goto exitloop;	// EOI-Code -> Dekodierung abbrechen
			if (!DecodeLZW(uCode))	// Codewert bearbeiten
				return FALSE;	// Im Fehlerfall Schleife abbrechen
		}
	}

exitloop: // Marke zum vorzeitigen Verlassen der Schleife

	return TRUE;	// Erfolgreiches Dekomprimieren
}
#endif // _DEBUG

BOOL CCodecLZWTiff::Decode( const CRect& rcPict ) {
	ASSERT( NULL != m_pPicture );
	return CPictCodec::Decode( rcPict );
}

