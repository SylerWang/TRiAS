// tempswitch.h
// exceptionsicheres temp. Umschalten einer Variablen
// Author : JG
// Datum  : 981104

template <class T>
class CTmpSwitch
{
protected:
	T	m_tOldval;
	T*	m_pWatchval;
public:
	// Parameter 
	// pWatchval	:	Zeiger auf zu kontrollierende Variable
	// tmpval		:	tempor�rer Wert
	// call explizit
	CTmpSwitch(T* pWatchval, const T& tmpval)
	{
		// merken wer �berwacht wird
		m_pWatchval =  pWatchval;

		// Fehler, schnell wieder raus
		if (NULL == pWatchval)
			return;
		
		// alten Wert speichern
		m_tOldval = *pWatchval;

		// neuen Wert setzen
		*pWatchval = tmpval;

	}
	// will be implizit called
	~CTmpSwitch()
	{
		if (NULL == m_pWatchval)
			return;

		// alten Wert zur�ckschreiben
		*m_pWatchval = m_tOldval;
		m_pWatchval  = NULL;		//eigentlich fl�ssiger als fl�ssig
	}
};