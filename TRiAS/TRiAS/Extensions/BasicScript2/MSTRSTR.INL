// Inlinefunktionen f�r typspezifischenBaum -----------------------------------
// Generiert aus CTTREE.CTT

// Member f�r ItemKlasse, die im Baum h�ngt ----------------------------------
// Normaler Konstruktor (evtl. notwendig) ------------------------------------
inline CStringString :: CStringString (LPCTSTR pKey, LPCTSTR pData)
		      : m_Key(pKey), m_Data(pData)
{
	m_dwRefCnt = 1;
}

// Destruktor -----------------------------------------------------------------
inline CStringString :: ~CStringString (void) {}

// ZugriffsFunktion auf den Suchschl�ssel innerhalb der ItemKlasse ------------
inline LPCTSTR CStringString :: FGetLPCTSTR (void)
{
	return (LPCTSTR)m_Key.c_str();
}

// VergleichsFunktion f�r zwei Suchschl�ssel ----------------------------------
inline int FCmpLPCTSTR (LPCTSTR pObj1, LPCTSTR pObj2)
{
	return strcmp (pObj1, pObj2);
}


