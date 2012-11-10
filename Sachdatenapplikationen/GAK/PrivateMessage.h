// PrivateMessage
// Implementierung einer MessageArchitektur

// Basisklassen
// Typ des Messagecodes
typedef TMessagecode	long

// abstrakte Basisklasse f�r polymorphe Handhabung
class CPrivateMessage
{
public :
	virtual TMessagecode GetCode() = 0;
};

// Template zur Definition parameterloser Klassen
template <TMessagecode code>
class TemplPrivateMessage : public CPrivateMessage
{
public:
	virtual TMessagecode GetCode()
	{
		return code;
	}
};

// Macros zum Definieren neuer Messages
// ein define f�r Unique Codes
#define PM_INCREMENTOR_AKTPOS	1	

// Anlegen einer neuen parameterlosen Msg
#define NEWPRIVATEMESSAGE(a)	/
#define PM_INCREMENTOR_AKTPOS PM_INCREMENTOR_AKTPOS + 1 /
#define PM_##a	PM_INCREMENTOR_AKTPOS	/
class CPM_##a : public TemplPrivateMessage <PM_##a>