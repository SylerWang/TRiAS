;///////////////////////////////////////////////////////////////////////////////
;// Messages for TRiASHP
;// SourceFile: TRiASHP.MC
;
;#if !defined(_TRiASHP_HMC)
;#define _TRiASHP_HMC
;
;#if _MSC_VER >= 1000
;#pragma once
;#endif // _MSC_VER >= 1000
;

SeverityNames = (
	Success = 0x0:STATUS_SEVERITY_SUCCESS
	Informational = 0x1:STATUS_SEVERITY_INFORMATIONAL
	Warning = 0x2:STATUS_SEVERITY_WARNING
	Error = 0x3:STATUS_SEVERITY_ERROR
)

FacilityNames = (
	System = 0x0FF
	NativeDB = 0xF00:FACILITY_NATIVEDB	; Fehler des unterliegenden Datenbanksystems
	DBEngine = 0xF01:FACILITY_DBENGINE	; Fehler des TRiASDB-Layers
	Project = 0xF02:FACILITY_PROJECT	; Fehler im Project Objekt
	Database = 0xF03:FACILITY_DATABASE	; Fehler im Database Objekt
	Connection = 0xF04:FACILITY_CONNECTION	; Fehler im Connection Objekt
	Property = 0xF05:FACILITY_PROPERTY	; Fehler im Property Objekt
	View = 0xF06:FACILITY_VIEW			; Fehler im View Objekt
	Object = 0xF07:FACILITY_OBJECT		; Fehler im Object Objekt
	Objects = 0xF08:FACILITY_OBJECTS	; Fehler im Objects Objekt
	Feature = 0xF09:FACILITY_FEATURE	; Fehler im Feature Objekt
	Features = 0xF0A:FACILITY_FEATURES	; Fehler im Features Objekt
	GenPurpose = 0xF0F:FACILITY_GENPURPOSE	; Allgemeiner Fehler 
)

LanguageNames = (
	Deutsch=0x407:MSG00407
	English=0x409:MSG00409
)

MessageIdTypedef=HRESULT

;
MessageId=0x3001
Severity=Error
Facility=Database
SymbolicName=TRIASHP_E_BADFILENAME
Language=Deutsch
Der angegebene Dateiname bezieht sich weder auf eine Datei noch auf ein Verzeichnis.
.

Language=English
The given name relates neither to a file nor to a directory, Shape access failed.
.

;
MessageId=0x3002
Severity=Error
Facility=Database
SymbolicName=TRIASHP_E_OPENFILE_FAILED
Language=Deutsch
Die Shapedatei konnte nicht ge�ffnet werden. Sie k�nnte besch�digt sein.
.

Language=English
Failed to open shapefile. It may be corrupt.
.

;
MessageId=0x3002
Severity=Warning
Facility=Database
SymbolicName=TRIASHP_W_NOFILESFOUND
Language=Deutsch
Es wurden keine Shapedateien gefunden im gegebenen Verzeichnis gefunden.
.

Language=English
No Shapefiles found in directory.
.

;
MessageId=0x3003
Severity=Error
Facility=Database
SymbolicName=TRIASHP_E_BADGEOMETRYTYPE
Language=Deutsch
Unbekannter Geometrietyp.
.

Language=English
Unknown geometry type.
.

;
MessageId=0x3004
Severity=Warning
Facility=Database
SymbolicName=TRIASHP_W_LAYERNAME_NOT_UNIQUE
Language=Deutsch
Layername mu� innerhalb einer Datenquelle eindeutig sein.
.

Language=English
The layername should be unique.
.

;#endif // _TRiASHP_HMC
