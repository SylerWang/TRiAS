// Inlinefunktionen f�r typspezifischenBaum -----------------------------------
// File : DOCTREE.INL

#include "Strings.h"

// ZugriffsFunktion auf den Suchschl�ssel innerhalb der ItemKlasse ------------
inline LPCSTR CGeoDoc :: FGetBSTR (void)
{
	return (NULL != m_pName) ? m_pName : g_cbNil;
}

// VergleichsFunktion f�r zwei Suchschl�ssel ----------------------------------
inline int FCmpBSTR (LPCSTR rDoc1, LPCSTR rDoc2)
{
	_ASSERTE(NULL != rDoc1 && NULL != rDoc2);
	return strcmp (rDoc1, rDoc2);
}


