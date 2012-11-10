// Headerdatei f�r Export in DIRIS-Austauschformat ----------------------------
// File: DIRISEXP.HXX

#if !defined(_DIRISEXP_HXX)
#define _DIRISEXP_HXX

// Alle Exportfunktionen f�r ein Datenformat m�ssen in einer DLL zusammen-
// gefa�t sein, wobei die jeweiligen Ordinalzahlen der Funktionsaufrufe 
// f�r alle Export-DLL's identisch sein m�ssen.
//
// Folgende Funktionen sind (zumindest als Entry) bereitzustellen:
//
// 1. Beginn eines DatenExports
// 	ErrCode XXXExportBegin (char *lpFileName, OFSTRUCT &of, Bool Overwrite);
//									@10
// 2. Ausgabe einer Kommentarinformation im jeweiligen Format
// 	ErrCode XXXExportComment (OFSTRUCT &of, const char *CommentString);	@11
//
// 3. Ausgabe von Informationen, die am Anfang der Datei stehen m�ssen
// 	ErrCode XXXExportHeader (OFSTRUCT &of, const char *HeaderInfo);	@12
//
// 5. Ausgabe von Informationen, die den Inhalt dieses Exports betreffen
//	ErrCode XXXExportDescription (OFSTRUCT &of, const char *lpKeyInfo, const char *lpDescInfo);	
//									@13
//
// 4. Alles �ber ein Objekt ausgeben
// 	ErrCode XXXExportData (OFSTRUCT &of, GeoObjekt &GO, MerkmalsFeld *MF);
//									@14
// 5. Abschlie�ende Informationen ausgeben
// 	ErrCode XXXExportTrailer (OFSTRUCT &of, const char *TrailerInfo);	@15
//
// 6. Beenden des DatenExports
// 	ErrCode XXXExportEnd (OFSTRUCT &of);				@16
//
// 7: Liefert Die Eigenschaften des Exportfilters
//	short XXXExportCaps (ExportCapability);				@17
//

// Prototypen f�r DIRIS/Win - ASCII-Exportfunktionen --------------------------
//XX	extern "C" {
//XX		// Von der DLL DIRISASC exportierte ExportFunktionen
//XX		ErrCode EXPORTFLT PASCAL DirisASCExportBegin (char *lpFileName, OFSTRUCT &of, OutMode, HWND);
//XX		ErrCode EXPORTFLT PASCAL DirisASCExportComment (OFSTRUCT &of, const char *lpCommentString);
//XX		ErrCode EXPORTFLT PASCAL DirisASCExportHeader (OFSTRUCT &of, const char *lpHeaderString);
//XX		ErrCode EXPORTFLT PASCAL DirisASCExportDescription (OFSTRUCT &of, const char *lpKeyInfo, const char *lpDescInfo);
//XX		ErrCode EXPORTFLT PASCAL DirisASCExportData (OFSTRUCT &of, GSTRUCT &GS, MFELD *MF, RSTRUCT *, char *);
//XX		ErrCode EXPORTFLT PASCAL DirisASCExportTrailer (OFSTRUCT &of, const char *lpTrailerString);
//XX		ErrCode EXPORTFLT PASCAL DirisASCExportEnd (OFSTRUCT &of);
//XX		short EXPORTFLT PASCAL DirisASCExportCaps (ExportCapability);
//XX		ErrCode EXPORTFLT PASCAL DirisASCExportBreak (OFSTRUCT &of);
//XX	}

#endif // _DIRISEXP_HXX
