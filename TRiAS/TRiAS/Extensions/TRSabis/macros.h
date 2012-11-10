// Macros.h
// ein paar kleine Macros f�r dieses Projekt

// testen eines Pointers p und verlassen der Funktion mit 
// angegebenem Fehlercode erg, wenn Ptr ung�ltig
#define CHECKPOINTER(p, erg)	\
	ASSERT(p);					\
	if (NULL == p)				\
		return erg;

// dito, mit E_POINTER
#define CHECKPOINTERHR(p) \
	CHECKPOINTER(p, E_POINTER);

// define f�r kommentierende Pragmas
// Usage : #pragma MSG("Das ist ein sinnloser Kommentar der beim kompilieren erscheint")
#define MSG3(x) #x 
#define MSG2(x) MSG3(x)
#define MSG(a) message(__FILE__ "("MSG2(__LINE__)") : " a)

// COM-FehlerHandling
/*
#define RETURN_FAILED_HRESULT(hr) \
	if (FAILED(hr))				\	
		return hr;
*/

// Initstruct f�r WINDOWPLACEMENT
#define INITWP(wp)								\
	memset(&wp, 0, sizeof(WINDOWPLACEMENT));	\
	wp.length = sizeof(WINDOWPLACEMENT);
