// Helperfunktionen -----------------------------------------------------------
// File: HELPER.H

#if !defined(_HELPER_H)
#define _HELPER_H

/////////////////////////////////////////////////////////////////////////////
// Konvertierung von Objekt- in Ger�teKoordinaten
bool OCtoDC (const long *pX, const long *pY, int iCnt, CPoint *pPts, CRect &rcBound);

/////////////////////////////////////////////////////////////////////////////
// Liefert Aufl�sung des gegebenen hDC
CSize GetDotsPerMM (HDC hDC);

#endif // _HELPER_H
