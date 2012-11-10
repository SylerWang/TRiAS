// Inlinefunktionen f�r typspezifischenBaum -----------------------------------
// Generiert aus CTTREE.CTT
// File: CONRTREE.INL

// Member f�r ItemKlasse, die im Baum h�ngt ----------------------------------
// ZugriffsFunktion auf den Suchschl�ssel innerhalb der ItemKlasse ------------
inline LONG &CGeoObject :: FGetLONG (void)
{
	return m_lONr;
}

// VergleichsFunktion f�r zwei Suchschl�ssel ----------------------------------
inline int FCmpLONG (const LONG &rObj1, const LONG &rObj2)
{
	if (rObj1 > rObj2) 	return (+1);
	if (rObj1 == rObj2) 	return (0);
	if (rObj1 < rObj2) 	return (-1);

return 0;
}


