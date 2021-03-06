/*-----------------------------------------------------------------------

File: V_DBASE1.CXX (Implementation)

Das Zusatzmodul zu v_dbase enth�lt im wesentlichen alle privaten Funktionen
der Klasse "ShowFile".


Erarbeitet: J. Benkenstein							   am: 19. Dez. 1991
																								  Stand vom: 14. Sept. 1992
---------------------------------------------------------------------------*/

#include "pheader.h"			// vor�bersetzter Header

#include "V_DBASE.htp"  		// Selektion der zu comp. Klassen
#include <commonvu.hxx>
#include <containr.hxx>

extern "C" {
	#include <commdlg.h>		// OFN_ ...
	#include <bttncur.h>		// TOOLDISPLAYDATA
	#include <gizmobar.h>		// GIZMO_NORMAL
	#include <ctl3d.h>          // 3d-Kontrols         
	#include <resstrg.h>		// Defines f. String-Ressourcen
	#include "dbaseext.hr"		// DLL-Defines
}

#include <clipbrd.hxx>  		// ClipBoard-Klasse

#include <objfeld.hxx> 			// f�r "dbliste.hxx"
#include <dbaserel.hxx> 		// f�r DBaseRel-Klasse
#include <dbasprof.hxx> 		// f�r ProFile-Klasse
#include <dbliste.hxx>  		// zugeh�rige Filter-Klassen
#include <stddlg.hxx>			// COpenDialog

#include "exttabl.hxx"  		// erweiterte TabularListBox
#include "gizmobar.hxx"			// GizmoBar
#include "v_memofd.hxx" 		// Inhalt eines Memofeldes ausg.
#include "afnamel.hxx"			// CAliasFieldNameTree	
#include "waitcur.hxx"			// CWaitCursor

#include "v_dbase.hxx"  // zugeh�riges Header-File

const char MemoFlag [] = "*";		// kennzeichnet Memofelder
const short MenuRelPos = 3;			// Position des Relations-Men�

extern "C" {
LRESULT FAR PASCAL __export Init3d (HWND hDlg, UINT Msg, WPARAM, LPARAM) {
    if (Msg == WM_INITDIALOG && Ctl3dEnabled())
	    Ctl3dSubclassDlg (hDlg, CTL3D_ALL); // lediglich CTL3D aktivieren
    return FALSE;
}

// globalen Speicher anfordern
pchar Alloc (long Count)
{
	HGLOBAL handle = GlobalAlloc (GHND, (DWORD) Count);
	if (!handle)
		return NULL;
	else
		return (pchar) GlobalLock (handle);
}

// globalen Speicher wieder freigeben
Bool FreeMemory (pchar pChars)
{
#ifdef WIN32
	HGLOBAL handle = (HGLOBAL) GlobalHandle (pChars);
#else
	HGLOBAL handle = (HGLOBAL) GlobalHandle (HIWORD (pChars));
#endif
	if (! handle)
				return False;
			if (! GlobalUnlock (handle))	// wenn Speicher nicht mehr ben�tigt
						return (GlobalFree (handle) == NULL);

		return False;										
}

// globalen Speicher vergr��ern
pchar ReAllocBuffer (pchar pChars, long Count)
{
#ifdef WIN32
	HGLOBAL handle = (HGLOBAL) GlobalHandle (pChars);
#else
	HGLOBAL handle = (HGLOBAL) GlobalHandle (HIWORD (pChars));
#endif
	if (! handle)
		return NULL;
	if (GlobalUnlock (handle))
		return NULL;			// kann keinen gelockten Speicher freigeben
	if (handle = GlobalReAlloc (handle, (DWORD) Count, GMEM_MOVEABLE))
		return (pchar) GlobalLock (handle);
	else
		return NULL;
}

}	   // extern "C"

// Inhalt der akt. Listbox ins Clipboard kopieren
Bool ShowFile :: _ListToClip (ExtTabularListBox &List)
{
	const long MinBuff = 512;		   	// min Puffergr��e
	long MaxLen = MinBuff * 2,		  	// Puffer-Anfangs-L�nge
	AktLen = 0;						 	// akt. Pufferl�nge
	
	char *pText = NULL;				 	// Puffer-Zeiger
	char *pFeldName = NULL;          	// Feldname
	Bool bRet = True;

//  Puffer init.
	pText = Alloc (MaxLen);
	pFeldName = new char [_BezBreite + 1];
	if (!pText || !pFeldName)
	{                        
		DELETE_VEC (pText);
		DELETE_VEC (pFeldName);
		DEX_Error (RC_DarstShowFile, EC_NOMEMORY);
		return False;
	}

	CWaitCursor wc;		// Sanduhr ein

//  Clipboard init.
	CClipboard DCB;			   		// Clipboard-Objekt
	DCB.Clear ();				   	// Inhalt des Clipboards l�schen

//  Kopier-Variablen init.
	char Str254 [255];			  	// max. Gr��e 254 Zeichen
	short Max = List.GetCount ();   // Max. Anzahl Eintr�ge

//  kompletten Listeninhalt lesen
	for (short Index = 0; Index < Max; Index++)
	{
		if (List.GetRow (Index, pFeldName, Str254))
		{
			if ((MaxLen - AktLen) <= MinBuff)   // wenn Puffer zu klein
			{
				MaxLen *= 2;				   // neue Puffergr��e
				if (! (pText = ReAllocBuffer (pText, MaxLen)))
				{   
					bRet = False;
					DEX_Error (RC_DarstShowFile, EC_NOMEMORY);
					break;
				}
			}
			memcpy (pText+AktLen, pFeldName, lstrlen (pFeldName));
			AktLen += lstrlen (pFeldName);
			memcpy (pText+AktLen++, "\t", 1);
			memcpy (pText+AktLen, Str254, lstrlen (Str254));							
			AktLen += lstrlen (Str254);
			memcpy (pText+AktLen, "\r\n", 2);
			AktLen += 2;
		}
		else
		{                        
			bRet = False;
			DEX_Error (RC_DarstShowFile, EC_NOREAD);
			break;
		}
	}

	if (Index && pText) {		 // wenn g�ltige Eintr�ge in Liste gefunden
		memcpy (pText+AktLen, "\0", 1);
		DCB.Insert (pText);	   // Inhalt kopieren
	}

	if (pText)				   	// Puffer wieder freigeben
		FreeMemory (pText);	  	// Puffer wieder freigeben
	DELETE_VEC (pFeldName);		

	return bRet;
}

// akt. Satz in Listbox ausgeben
void ShowFile :: _ShowRow (Bool bForce)
{						
// 	Nur bei �nderung handeln
	if ((NewActRow != ActRow) || bForce)
	{
		CWaitCursor wc;		// Sanduhr ein
		_DeleteRelMenu ();
		_DeleteOldRelations ();
			
		_ChangeScrollButtons ((short) NewActRow);		// Scroll-Button akt.
		ActRow = NewActRow;
		pData->go (pDON-> RA ().GetRecordNr (ActRow-1));
		if (RC = (ErrCode) pCBase -> error ())  // Fehlerbehdlg. durch CodeBase
			return;
            
		char *pAliasName = NULL;				// zugeh. Alias-Feldname            
        ListRow.Hide();   // Listbox unsichtbar

	//  alle alten Eintr�ge l�schen
		int MaxSatz = ListRow.GetCount();  		// max. Anz. S�tze in ListBox
		for (int k = 1; k <= MaxSatz;  )
		{
			if (!ListRow.DelString(0)) 			// wenn Fehler beim L�schen
				break;
		}
		for (int i = 1, j = pData->num_fields();
			i <= j; i++)						// f�r alle Felder eines Satzes
		{
			Str10 Bez = pData->field(i)->name;  // Feldname
			Str255 Inh;						 	// Feldinhalt

			if (pData->field(i)->type() == 'D') // Feld = Datum ?
			{
				Date dt;
				dt = *pData->field(i);
				dt.format (Inh, "DD.MM.YY");
			}
			else
			{
				if (pData->field (i)->type() == 'M') 			// wenn MemoFeld u.
				{
					if (pData->validate_memo_ids () == 0)	  	// ID's ok
					{
						long ID = pData->mfield (Bez.ptr())->id ();
						if (ID)   // wenn ungleich 0
						{
							Inh.set_len (5);
							Inh.assign_long (ID);
						}
						Bez.insert (StrPtr ((char *)MemoFlag));
					}
				}
				else 	// Zeichenkettenfeld
				{
					Inh = *pData->field(i);
					Inh.set_len (pData->field(i)->len()) ;
				}

			// 	Inh.null_ensure();			   	// Nullendung sichern
				if ((*Inh.ptr() == ' ')		 	// wenn f�hrende Leerz. exist.
					 && (Inh.len() > 1))		// und Text mehr als 1 Zeichen hat,
				{							   	// Leerzeichen l�schen
					pchar pInh = Inh.ptr();	 	// Zeiger auf Text speichern
					register uint LZ = 1;		// Anzahl LZ setzen
					while (*++pInh			  	// solange g�ltige
						   && *pInh == ' ')	 	// Leerzeichen gez�hlt werden,
						   LZ++;				// Z�hler erh�hen
					if (LZ != Inh.len())		// wenn nicht nur LZ im Text
						memmove (Inh.ptr(), Inh.ptr()+LZ, Inh.len()+1);
				}
				if (pData->field(i)->type() == 'C' && _OemToAnsii) // bei Text
					OemToAnsi(Inh.ptr(), Inh.ptr());// dt. Umlaute ersetzen
			}
			if (_OemToAnsii)
				OemToAnsi (Bez.ptr(), Bez.ptr());	   // dt. Umlaute ersetzen
				                     
			// AliasNamen ggf. anzeigen
			if (_pAliasFieldTree)
				pAliasName = _pAliasFieldTree -> GetAliasName (Bez.ptr());
							
			if (ListRow.AddRow (-1, pAliasName ? pAliasName : Bez.ptr(), Inh.ptr()) == -1) {
				DEX_Error (RC_DarstShowFile, EC_NOMEMORY);
				break;
			}
		}
	}

//  Umschalten
	ListCol.Hide ();
	ListRow.Show ();

// �berschrift immer akt.
	char Buff [50]; // Puffer f. �berschrift
	wsprintf (Buff, "%s: %ld/%ld", pData -> alias.ptr (), ActRow, MaxRow);
	SetCaption (Buff);	// �berschrift

//  dBase-Relationen neu lesen
	_ReadDBaseRel ();
}

void ShowFile :: _ShowColumn (void)
{				
//  Mehrsatzansicht init. u. aktivieren
	if (ActCol != NewActCol)
	{
		CWaitCursor wc;		// Sanduhr ein
		_DeleteRelMenu ();
		_DeleteOldRelations ();
		
		pColGizmoBar -> ComboBoxChangeCurrentIndex (IDC_FIELDNAMES, NewActCol - 1);
		ActCol = NewActCol;
		ListCol.Hide ();

	//  alten Inhalt l�schen
		int MaxSpalten = ListCol.GetCount(); // max. Anz. Eintr�ge in ListBox
		for (int k = 1; k <= MaxSpalten; )
		{
			if (!ListCol.DelString(0)) // wenn Fehler beim L�schen
			break;
		}

	//  neu F�llen
		Str10 Bez = pData->field (ActCol)->name;
		char Type = (char) pData->field(ActCol)->type();
		Bool MemoIds = (pData->validate_memo_ids () == 0 ? True : False);

		for (int i = 1; i <= MaxRow; i++) // f�r alle ausgw. S�tze einer DB
		{
			pData->go (pDON-> RA ().GetRecordNr (ulong(i-1)));
			if (RC = (ErrCode) pCBase -> error ()) // Fehlerbehandlung durch CodeBase
				break;
			Str255 Inh;			// Feldinhalt

			switch (Type)
			{
				case 'D':		   // Datum
				{
					Date dt;
					dt = *pData->field (ActCol);
					dt.format (Inh, "DD.MM.YY");
				}
				break;
				case 'M':		   // Memo-Feld
				{
					if (MemoIds)			 // wenn IDs OK
					{
						long ID = pData->mfield (Bez.ptr())->id ();
						if (ID) // wenn ungleich 0
						{
							Inh.set_len (5);
							Inh.assign_long (ID);
						}
					}
				}
				break;
				default:			// String
				{
					Inh = *pData->field(ActCol);
					Inh.set_len (pData->field(ActCol)->len()) ;
				}
			}

		// l�sche f�hrende Leerzeichen (au�er beim Datum)
			if (Type != 'D')
			{
			//  Inh.null_ensure();			   // Nullendung sichern
				if ((*Inh.ptr() == ' ')  // wenn f�hrende Leerz. existieren
					 && (Inh.len() > 1))		 // und Text mehr als 1 Zeichen hat,
				{								// Leerzeichen l�schen
					pchar pInh = Inh.ptr();	  // Zeiger auf Text speichern
					register uint LZ = 1;		 // Anzahl LZ setzen
					while (*++pInh			   // solange g�ltige
						   && *pInh == ' ')	  // Leerzeichen gez�hlt werden,
						   LZ++;				 // Z�hler erh�hen
					if (LZ != Inh.len())		 // wenn nicht nur LZ im Text
						memmove (Inh.ptr(), Inh.ptr()+LZ, Inh.len()+1);
				}
			}

			if (Type == 'C' && _OemToAnsii)	 // bei Text
				OemToAnsi(Inh.ptr(), Inh.ptr());		// dt. Umlaute ersetzen
			char IntBuff [5];
			if (ListCol.AddRow (-1, itoa(i,IntBuff,10), Inh.ptr()) == -1)
			{
				DEX_Error (RC_DarstShowFile, EC_NOMEMORY);
				break;
			}
		}
	}

//  Umschalten
	ListRow.Hide ();
	ListCol.Show ();

//  �berschrift immer akt.
	Str10 Bez = pData->field(ActCol)->name; // Feldname
	if (_OemToAnsii)
		OemToAnsi (Bez.ptr(), Bez.ptr());		  // dt. Umlaute ersetzen
	char Buff [50]; // Puffer f. �berschrift
	wsprintf (Buff, "%s:  %d/%d", Bez.ptr(), ActCol, MaxCol);
	SetCaption (Buff);			 // �berschrift

//  dBase-Relationen neu lesen
	_ReadDBaseRel ();
}

// tausche Buttons f�r Einzel- und Mehrsatzdarstellung, True->Zeile,
// sonst Spalte
void ShowFile :: _ChangeButtons (Bool Zeile)
{
	if (Zeile)								  // bei Zeilen-Darst.
	{
		pColGizmoBar -> Hide ();				// Button f�r Spalteanz. aus
		pRowGizmoBar -> Show ();				// Button f�r Zeilenanz. ein
	}
	else  // Spaltenansicht
	{
		pRowGizmoBar -> Hide ();				// Button f�r Zeilenanz. aus
		pColGizmoBar -> Show ();				// Button f�r Spaltenanz. ein
	}
}

// Umschalten zwischen Zeilen/Spalten-Darstellung
void ShowFile :: _SwitchRowColumn (void)
{
	if (OneRow)				 // Flag neu setzen
		OneRow = False;
	else
		OneRow = True;

	_ChangeButtons (OneRow);		// Men�s/Buttons f�r Spalten-Ansicht tauschen

	if (!OneRow)				// bei Spaltenansicht
	{
		if (ActCol < MaxCol)		// wenn eine weitere Spalte existiert
			pColGizmoBar -> EnableGizmo (IDM_NEXTFIELD);
		else
			pColGizmoBar -> DisableGizmo (IDM_NEXTFIELD);
		if (ActCol > 1)		// wenn vorige Spalte existiert
			pColGizmoBar -> EnableGizmo (IDM_PREVFIELD);
		else
			pColGizmoBar -> DisableGizmo (IDM_PREVFIELD);

		_ShowColumn (); // Spaltenanzeige
	}
	else				// Zeilenanzeige
	{
		pData -> go (pDON -> RA ().GetRecordNr (ActRow-1));
		_ShowRow ();
	}
}

// vorigen Eintrag darstellen
void ShowFile :: _PrevEntry (void)
{
	if (!OneRow)					// f�r Spaltenansicht
	{
		if (NewActCol > 1)		  // und verkleinerbar
		{
			NewActCol--;			// n�chste Spalte
			_ShowColumn ();			// akt. Spalte in Listbox ausgeben
			pColGizmoBar -> EnableGizmo (IDM_NEXTFIELD);
		}
		if (NewActCol == 1)
			pColGizmoBar -> DisableGizmo (IDM_PREVFIELD);
	}
	else							// Zeilen-Ansicht
	{
		if (NewActRow > 1)		  // und verkleinerbar
		{
			NewActRow--;			// vorige Zeile
			_ShowRow ();			// akt. Zeile in Listbox ausgeben
			pColGizmoBar -> EnableGizmo (IDM_NEXTFIELD);
		}
		if (NewActRow == 1)
			pColGizmoBar -> DisableGizmo (IDM_PREVFIELD);
	}
}

// n�chsten Eintrag darstellen
void ShowFile :: _NextEntry (void)
{
	if (!OneRow)							// Spaltenansicht
	{
		if ((NewActCol + 1) <= MaxCol)			// Wert ver�nderbar
		{
			NewActCol++;				// n�chste Spalte
			_ShowColumn ();		// akt. Spalte in Listbox ausgeben
			pColGizmoBar -> EnableGizmo (IDM_PREVFIELD);
		}
		if (NewActCol == MaxCol)
			pColGizmoBar -> DisableGizmo (IDM_NEXTFIELD);
	}
	else									// Zeilen-Darstellung
	{
		if ((NewActRow + 1) <= MaxRow)  // Wert ver�nderbar
		{
			NewActRow++;					// n�chste Zeile
			_ShowRow ();					// akt. Zeile in Listbox ausgeben
			pColGizmoBar -> EnableGizmo (IDM_PREVFIELD);
		}
		if (NewActRow == MaxRow)
			pColGizmoBar -> DisableGizmo (IDM_NEXTFIELD);
	}
}

// alten dBase-Relationen l�schen
void ShowFile :: _DeleteOldRelations (void)
{
	for (short i = 0; i < RelCount; i++)
		DELETE_OBJ (ppdBaseRel [i]);
	DELETE_VEC (ppdBaseRel);
	RelCount = 0;
}

// Relations-Men� l�schen
void ShowFile :: _DeleteRelMenu (void)
{
	if (pRelMenu) {
		HMENU hMenu = GetSubMenu (Menue.Handle (), MenuRelPos);
		RemoveMenu (hMenu, 0, MF_BYPOSITION);
		RemoveMenu (hMenu, 0, MF_BYPOSITION);		// Separator
		DELETE_OBJ (pRelMenu);
	}
}

// Relations-Men� aufbauen
void ShowFile :: _CreateRelMenu (void)
{
	if (!ppdBaseRel)		// wenn keine Relation existiert
		return;

//  neues Men� aufbauen
	pRelMenu = new Menu;
	if (!pRelMenu) {
		DEX_Error (RC_CreateRelMenu, EC_NOMEMORY);
		return;
	}

//  einzelnen Eintr�ge ins Submen�
	for (short Index = 0; Index < RelCount; Index++) {
		char MenuEntry [30];
		wsprintf (MenuEntry, "&%d %s: %s", Index+1,
							strupr (ppdBaseRel [Index] -> GetDBName ()),
							strupr (ppdBaseRel [Index] -> GetFieldName ()));
		pRelMenu -> AppendItem (IDM_REL + Index, MenuEntry);
	}   

//  Submen� einklinken
	HMENU hMenu = GetSubMenu (Menue.Handle (), MenuRelPos);
	InsertMenu (hMenu, 0, MF_BYPOSITION | MF_POPUP,
				(uint) pRelMenu -> Handle (), ResString (ResID (IDS_DBASERELATION, pRF), 30));
	InsertMenu (hMenu, IDM_ROWCOL, MF_SEPARATOR, (uint) pRelMenu -> Handle (), NULL);					
}

// dBase-Relationen lesen
void ShowFile :: _ReadDBaseRel (void)
{
	short Index, Type;	  // akt. Listbox-Index, Feld-Typ
	Str10 Bez;			  // Feldname

//  alten Daten u. Submen�s l�schen
	_DeleteOldRelations ();	 // alte Relationen
	_DeleteRelMenu ();		  // altes Submen�

	if (OneRow) {						   // f�r Zeilenansicht
		Index = ListRow.GetCurrentIndex ();
		if (Index < 0 || Index >= MaxCol)   // wenn Index nicht OK
			return;

		Type = pData -> field (++Index) -> type ();
		if (Type == 'M' || Type == 'L')	 // kein Memo- oder log. Feld
			return;

		Bez = pData -> field (Index) -> name;   // Feldname lesen
		FieldVal = *pData -> field (Index);	 // Feldinhalt lesen
	} else {									// f�r Spaltenansicht
		Index = ListCol.GetCurrentIndex ();
		if (Index < 0 || Index >= MaxRow)	   // wenn Index nicht OK
			return;

		Type = pData -> field (ActCol) -> type();
		if (Type == 'M' || Type == 'L')		 // kein Memo- oder log. Feld
			return;

		Bez = pData -> field (ActCol) -> name;  // Feldnamen lesen
		pData -> go (pDON -> RA ().GetRecordNr (ulong(Index)));
		FieldVal = *pData -> field (ActCol);	// Feldinhalt lesen
		pData -> go (pDON -> RA ().GetRecordNr (ulong(ActRow-1)));
	}

//  dBase-Relation aufbauen
	DBaseRel Master (pData -> alias.ptr (), Bez.ptr ()); // Name der Master-DB
	DBaseProFile PF;										// STB der INI-Datei
	RelCount = PF.ReadDBaseRelations (Master, &ppdBaseRel);

//  Submen� f�r dBase-Relationen aufbauen
	_CreateRelMenu ();
}

// Scroll-Button aktualisieren
void ShowFile :: _ChangeScrollButtons (long NewRow) {
	if (MaxRow < 2)			// Init-Zustand bleibt unver�ndert
		return;

	if (NewRow == 1) {
		pRowGizmoBar -> DisableGizmo (IDM_FIRSTSCROLL);
		pRowGizmoBar -> DisableGizmo (IDM_BIGLEFTSCROLL);
		pRowGizmoBar -> DisableGizmo (IDM_ONELEFTSCROLL);
		pRowGizmoBar -> EnableGizmo (IDM_LASTSCROLL);
		pRowGizmoBar -> EnableGizmo (IDM_BIGRIGHTSCROLL);
		pRowGizmoBar -> EnableGizmo (IDM_ONERIGHTSCROLL);
		return;
	}

	if (NewRow == MaxRow) {
		pRowGizmoBar -> EnableGizmo (IDM_FIRSTSCROLL);
		pRowGizmoBar -> EnableGizmo (IDM_BIGLEFTSCROLL);
		pRowGizmoBar -> EnableGizmo (IDM_ONELEFTSCROLL);
		pRowGizmoBar -> DisableGizmo (IDM_LASTSCROLL);
		pRowGizmoBar -> DisableGizmo (IDM_BIGRIGHTSCROLL);
		pRowGizmoBar -> DisableGizmo (IDM_ONERIGHTSCROLL);
		return;
	}

//  kein Grenzfall: alle Buttons erlauben
	pRowGizmoBar -> EnableGizmo (IDM_FIRSTSCROLL);
	pRowGizmoBar -> EnableGizmo (IDM_BIGLEFTSCROLL);
	pRowGizmoBar -> EnableGizmo (IDM_ONELEFTSCROLL);
	pRowGizmoBar -> EnableGizmo (IDM_LASTSCROLL);
	pRowGizmoBar -> EnableGizmo (IDM_BIGRIGHTSCROLL);
	pRowGizmoBar -> EnableGizmo (IDM_ONERIGHTSCROLL);
}

//	kopiere Feld- und zugeh. AliasNamen ins ClipBoard
Bool ShowFile :: _CopyFieldAliasNames (void)
{   
	Str10 Bez;					// FeldName
	// char *pAliasName = NULL;    // ggf. AliasName
	short sFieldCnt = pData-> num_fields ();
	char *pBuffer = new char [(2 * (BezSpalten + 1) * sFieldCnt) + 10];
	*pBuffer = '\0';
	if (!pBuffer)
	{
		DEX_Error (RC_DarstShowFile, EC_NOMEMORY);
		return False;
	}		
	        
	CWaitCursor wc;		// Stundenglas einschalten	        
	for (short i = 1; i <= sFieldCnt; i++)
	{
		Bez = pData->field(i)->name;  			// Feldname

		if (pData->field (i)->type() == 'M') 	// bei Memofeld
			Bez.insert (StrPtr ((char *)MemoFlag));

		if (_OemToAnsii)
			OemToAnsi (Bez.ptr(), Bez.ptr());	 // dt. Umlaute ersetzen
			
	// 	AliasNamen ggf. anzeigen
		// if (_pAliasFieldTree)
		//	pAliasName = _pAliasFieldTree -> GetAliasName (Bez.ptr());
			
	//	Text zusammenbauen
		lstrcat (pBuffer, Bez.ptr ());
		lstrcat (pBuffer, "=");
		// lstrcat (pBuffer, pAliasName ? pAliasName : Bez.ptr ());
		lstrcat (pBuffer, Bez.ptr ());
		lstrcat (pBuffer, "\r\n");				
	}	// end_for			
	
//	Text ins ClipBoard kopieren
	CClipboard DCB;			   	// Clipboard-Objekt
	DCB.Clear ();				// Inhalt des Clipboards l�schen		
	DCB.Insert (pBuffer);	   	// Inhalt kopieren	
                    
	DELETE_VEC (pBuffer);                    
	return True;		
}			
                          
//	neue Alias-Datei setzen                          
void ShowFile :: _SetAliasFile (void)
{                
	ResString Spec (ResID (IDS_ALIAS_SPEC, pRF), 40);
    COpenDialog OD (this, (char *) Spec.Addr ());
    OD.AddFlags (OFN_FILEMUSTEXIST | OFN_HIDEREADONLY);
    ResString Caption (ResID (IDS_ALIAS_SEL_CAPTION, pRF), 40);
    OD.SetCaption (Caption.Addr ());
    OD.SetHookFcn ((HOOKFCN) Init3d);
    OD.Show ();

//	L�nge lesen
    short sLen = OD.GetFileNameLen ();

//  neuen Namen lesen
	char *pFileName = NULL;
    if (OD.Result () && sLen) 
    {       
		if (pFileName = new char [sLen + 1])
		{
			OD.GetFileName (pFileName, sLen);
			DBaseProFile ProFile;
			ProFile.WriteAliasFileName (pData -> alias.ptr (), pFileName);
		}			
		else 
			DEX_Error (RC_DarstShowFile, EC_NOMEMORY);
    }

	DELETE_VEC (pFileName);	
}	        

/*
// Anzeige f�r Zeile-Darstellung akt.	                  
void ShowFile :: _ActRow (void)
{              
//	pr�fe interne  Zustand
	if (!OneRow)
		return;           

//	alten Baum l�schen	
	DELETE (_pAliasFieldTree);	
	
//	neuen Anlegen
	_pAliasFieldTree = new CAliasFieldNameTree;
	if (!_pAliasFieldTree)
	{
		DEX_Error (RC_DarstShowFile, EC_NOMEMORY);
		return;
	}		
	
//	neuen Alias-Baum lesen	                    
	_BezBreite = BezSpalten;
	if (_pAliasFieldTree -> Init (pData -> alias.ptr ()))
		_BezBreite = max (_BezBreite, _pAliasFieldTree -> GetMaxAliasSize () + 3);
	else		
		DELETE (_pAliasFieldTree);		// Baum sofort l�schen			
		                                                               
//	max. Spaltenbreite bestimmen	
	short FieldColumns = FeldSpalten;
	for (register int i = 1, j = pData->num_fields(); i <= j; i++) 
	{
		if (pData->field(i)->len() > FeldSpalten)		// max. Feldl�nge
			 FieldColumns = pData->field(i)->len();
	}
	
	ListRow.Hide();   	// Listbox unsichtbar	
	ListRow.Clear ();		// Inhalt l�schen
	
//	Spalten-Breite f�r ListBox �ndern		                                                               
	ListRow.SetColWidth (0, _BezBreite);	// Spaltenbreite einstellen		
	ListRow.SetColWidth (1, FieldColumns);

//	Srcollbalken f�r ListBox �ndern
	short TabPos [2];       
	TabPos [0] = _BezBreite;
	TabPos [1] = FieldColumns;
	ListRow.SetHorzScroll (2, TabPos);	
	
	_ShowRow (True);		// Anzeige aktualisieren	
}
*/
