// Inlinefunktionen f�r typspezifischenBaum -----------------------------------
// Generiert aus CTTREE.CTT

// Member f�r ItemKlasse, die im Baum h�ngt ----------------------------------
// Normaler Konstruktor (evtl. notwendig) ------------------------------------
inline CLongString :: CLongString (LONG lKey, LPCTSTR pData)
		    : m_Data(pData), m_Key(lKey)
{
}

// Destruktor -----------------------------------------------------------------
inline CLongString :: ~CLongString (void) {}

// ZugriffsFunktion auf den Suchschl�ssel innerhalb der ItemKlasse ------------
inline LONG &CLongString :: FGetLONG (void)
{
	return m_Key;
}

// VergleichsFunktion f�r zwei Suchschl�ssel ----------------------------------
inline int FCmpLONG (LONG &rObj1, LONG &rObj2)
{
// --> VergleichsCode einf�gen 
	if (rObj1 > rObj2) 	return (+1);
	if (rObj1 == rObj2) 	return (0);
	if (rObj1 < rObj2) 	return (-1);

return 0;
}


