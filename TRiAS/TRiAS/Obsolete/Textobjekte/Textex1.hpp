// BeispielErweiterungsklasse, um den gesamten Mechanismus zu dokumentieren
// File: TEXTEX1.HPP

#if !defined(_TEXTEX_HPP)
#define _TEXTEX_HPP 

#define MAXLENGTH   	255
#define STRLENGTH 	64

#define FEATURECODE 	5110000
#define OBJCLS 		32212000
#define CBOX 1
#define LBOX 2
                 
#define NOTFOUND 	0
#define FOUND		1  
               
extern "C" {

// f�r Dialog Boxenenumeration
bool FAR PASCAL _XTENSN_EXPORT EnumIdentProcEx (long lIdent, DWORD, void *pData);
bool FAR PASCAL _XTENSN_EXPORT EnumIdentProc (long lIdent, bool, void *pData);

// f�r Dialog Boxenenumeration
bool FAR PASCAL _XTENSN_EXPORT EnumMCodeProc (long lMCode, bool, void *pData);

//f�r Enum. nach Objektrecherche ,Merkmalscodetext
bool FAR PASCAL _XTENSN_EXPORT EnumObjs (long lObjNr, bool, void *pData);

//�berpr�fen der Relation der enum. Obj. nach Men� "Abh�ngen"
bool FAR PASCAL _XTENSN_EXPORT EnumRelUndAbhaengObj (long lTxtONr, long lRCode, short iRTyp, void *pData);

//�berpr�fen , ob Relat. vorhanden
bool FAR PASCAL _XTENSN_EXPORT EnumRelObj (long lTxtONr, long lRCode, short iRTyp, void *pData);

//�berpr�fen , ob Relat. vorhanden und Umbenennen des Textobjektes
bool FAR PASCAL _XTENSN_EXPORT EnumRelObjRename (long lTxtONr, long lRCode, short iRTyp, void *pData);

//Z�hlen aller , im Rech.fenster selektierten Objekte
bool FAR PASCAL _XTENSN_EXPORT EnumSelObjectsfuerMenue (long lObjNr, bool, void *pData);

// Enum. der Obj. f�r "Abh�ngen" Hauptmen�
bool FAR PASCAL _XTENSN_EXPORT EnumObjAbh (long lObjNr, bool, void *pData);

// Enum. der sel. Objekte f�r "Abh�ngen" Recherche
bool FAR PASCAL _XTENSN_EXPORT EnumSelObZumAb (long lObNr, bool, void *pData);
}
					//Structs: 

struct SAbh {		// zur Enum. der Obj. nach Id. zum Abh�ngen der Textobj.
	bool  bLoesch;
	char* pGeo;
};
							
struct SObj {
	long lObNr;
	bool bObLoesch;
	long lTxtONr;
	short iState;
};

// f�r Enum. der Objekte							
struct SEnObj {
	long lId ;
	long lMerkCd;
	CString sTxt;
	bool bTemp;
	bool bObLoesch;
	bool bRelat;
	bool bRename;
	char* pcGeo;
	long lCBIdent;
	long lObjNr;
	short iState;
	bool fPosPtTexts;
};                        
    
class CTextExt : public CTriasExtension
{
private:
	DWORD m_dwRefCnt;
	HMENU m_hMenu;
	bool m_bGray;

public:
// Konstruktor / Destruktor
		CTextExt (void);
		~CTextExt (void);
	
	HWND m_hWnd;
	class CTextPro *m_pTextPro;    
	class CHelper *m_pHelper;

// IUnknown member
	STDMETHODIMP QueryInterface (REFIID, LPVOID FAR *);

	STDMETHOD_(bool, InitExtension) (THIS_ short iMode);
	STDMETHOD_(bool, UnLoadExtension) (THIS);
	STDMETHOD_(bool, MenuCommand) (THIS_ WPARAM wParam, HWND hWnd);
	STDMETHOD_(bool, MenuInit) (THIS_ HMENU hMenu, LPARAM lParam, HWND hWnd);
};

#endif 	// _TEXTEX1_HPP
