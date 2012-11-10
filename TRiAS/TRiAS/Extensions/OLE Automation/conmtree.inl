// Inlinefunktionen f�r typspezifischenBaum -----------------------------------
// Generiert aus CTTREE.CTT
// File : CONMTREE.INL

#include "Strings.h"

// ZugriffsFunktion auf den Suchschl�ssel innerhalb der ItemKlasse ------------
inline LPCSTR CGeoObject :: FGetBSTR (void)
{
	return (NULL != m_pName) ? m_pName : g_cbNil;
}

// VergleichsFunktion f�r zwei Suchschl�ssel ----------------------------------
inline int FCmpBSTR (LPCSTR rObj1, LPCSTR rObj2)
{
	_ASSERTE(NULL != rObj1 && NULL != rObj2);
	return strcmp (rObj1, rObj2);
}


