Installation des TeleSafe Druckers unter Windows 95
Stand 11.06.1999

Die Installation erfolgt in zwei Schritten:
1. Kopieren der Datei TeleSign.ini in das Verzeichnis C:\Windows\
2. Installation des Druckers

Um den Drucker zu entfernen wird er einfach im Druckerordner gel�scht.

Die aktuelle Version des Druckers startet nicht mehr eine fest eingestellte Anwendung,
sondern verwendet Eintr�ge aus der Datei TeleSign.ini.
Diese sind:

[Printer]
ShellExecute=C:\Programme\TeleSign\\TeleSafe.exe"
; Name des auszuf�hrenden Programmes
ShellDirectory=C:\Programme\TeleSign
; Standardverzeichnis w�hrend der Ausf�hrung
DataFileName=C:\TSDBMP.
; Dateiname, unter dem der Drucker die erzeugten Bitmaps ablegt.
; Unter Windows 95 wird eine Datei pro Seite erzeugt. Der Dateiname mu� mit einem Punkt
; enden, und wird um  die dreistellige Seitennummer erg�nzt.
ShellExecuteMode=1
; Steuerparameter f�r Drucker und TeleSafe. Ist das niedrigste Bit gesetzt,
; wird ShellExecute mit den obigen Parametern ausgef�hrt.
; Alle �brigen Bits sind f�r die sp�tere Verwendung im aufgerufenen Programm reserviert.
ShellExecuteDefaultMode=1
; TeleSafe wird bei jedem Aufruf den Eintrag ShellExecuteMode auf diesen Wert setzen, um eine Standardausf�hrung zu gew�hrleisten.

