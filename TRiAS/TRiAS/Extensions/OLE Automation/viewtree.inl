// Inlinefunktionen f�r typspezifischenBaum -----------------------------------
// Generiert aus CTTREE.CTT
// File : VIEWTREE.INL

#include "Strings.h"

// ZugriffsFunktion auf den Suchschl�ssel innerhalb der ItemKlasse ------------
inline LPCSTR CGeoView :: FGetBSTR (void)
{
	return (NULL != m_pName) ? m_pName : g_cbNil;
}

// VergleichsFunktion f�r zwei Suchschl�ssel ----------------------------------
inline int FCmpBSTR (LPCSTR rView1, LPCSTR rView2)
{
	_ASSERTE(NULL != rView1 && NULL != rView2);
	return strcmp (rView1, rView2);
}


