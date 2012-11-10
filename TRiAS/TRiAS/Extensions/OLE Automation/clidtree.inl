// Inlinefunktionen f�r typspezifischenBaum -----------------------------------
// Generiert aus CTTREE.CTT
// File: CLIDTREE.INL

// Member f�r ItemKlasse, die im Baum h�ngt ----------------------------------
// ZugriffsFunktion auf den Suchschl�ssel innerhalb der ItemKlasse ------------
inline ULONG &CClass :: FGetULONG (void)
{
	return m_lIdent;
}

// VergleichsFunktion f�r zwei Suchschl�ssel ----------------------------------
inline int FCmpULONG (const ULONG &rCls1, const ULONG &rCls2)
{
	if (rCls1 > rCls2) 	return (+1);
	if (rCls1 == rCls2) 	return (0);
	if (rCls1 < rCls2) 	return (-1);
	return 0;
}


