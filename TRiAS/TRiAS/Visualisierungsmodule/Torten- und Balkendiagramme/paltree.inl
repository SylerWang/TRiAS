// Inlinefunktionen f�r typspezifischenBaum -----------------------------------
// Generiert aus CTTREE.CTT

// Member f�r ItemKlasse, die im Baum h�ngt ----------------------------------
// Normaler Konstruktor (evtl. notwendig) ------------------------------------
inline CVisPalette :: CVisPalette (void)
{
	m_pPName = NULL;
	memset (m_pFVI, '\0', sizeof(FVisInfo *)*MAXPIECOLORS);	
	m_iNumDigits = 0;
}

// Destruktor -----------------------------------------------------------------
inline CVisPalette :: ~CVisPalette (void)
{
	DELETE_OBJ (m_pPName);
	for (short i = 0; i < MAXPIECOLORS; i++) {
		DELETE_OBJ (m_pFVI[i]);
	}
}

// ZugriffsFunktion auf den Suchschl�ssel innerhalb der ItemKlasse ------------
inline pChar &CVisPalette :: FGetpChar (void)
{
	return m_pPName;
}

// VergleichsFunktion f�r zwei Suchschl�ssel ----------------------------------
inline int FCmppChar (pChar &rObj1, pChar &rObj2)
{
	return strcmp (rObj1, rObj2);
}


