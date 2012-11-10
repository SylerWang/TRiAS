Installation des TeleSafe Druckers unter Windows NT 4.0
Stand 08.06.1999

Die vorliegende Version des TeleSafe Druckers arbeitet mit einem eigenen Port-Monitor.
Dieser wird durch die Datei tsdmon.dll realisiert.

Die Installation erfolgt in zwei Schritten:
1. Kopieren der Datei tsdmon.dll in das Verzeichnis c:\winnt\system32
   und ausf�hren der Datei TSInstall.reg Danach wird das System neu gebootet
2. Installation des Druckers am Anschlu� TSDV:

Um den Drucker zu entfernen wird er einfach im Druckerordner gel�scht.
Um den Port-Monitor zu entfernen, mu� der Schl�ssel [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Print\Monitors\TeleSign Port] gel�scht  und der Rechner neu gebootet werden.
Das gleiche gilt, wenn man eine neuere Version der Datei tsdmon.dll installieren m�chte.

Die aktuelle Version des Port-Monitors startet nicht mehr eine fest eingestellte Anwendung,
sondern verwendet Eintr�ge der Registrierungsdatenbank.
Diese sind:

[HKEY_LOCAL_MACHINE\SOFTWARE\FEZ Potsdam GmbH\TeleSafe\Printer]
"ShellExecute"="D:\\Programme\\TeleSafe\\TeleSafe.exe"
; Name des auszuf�hrenden Programmes
"ShellDirectory"="D:\\Programme\\TeleSafe"
; Standardverzeichnis w�hrend der Ausf�hrung
"DataFileName"="C:\\TSDBMP.DAT"
; Dateiname, unter dem der Port die vom Drucker erzeugten Daten ablegt.
; Soll TeleSafe diese Datei verarbeiten, mu� sie die Erweiterung .DAT haben.
"ShellExecuteMode"=dword:00000001
; Steuerparameter f�r Port und TeleSafe. Ist das niedrigste Bit gesetzt,
; wird ShellExecute mit den obigen Parametern ausgef�hrt.
; Alle �brigen Bits sind f�r die sp�tere Verwendung im aufgerufenen Programm reserviert.
"ShellExecuteDefaultMode"=dword:00000001
; TeleSafe wird bei jedem Aufruf den Registry-Eintrag ShellExecuteMode auf diesen Wert setzen, um eine Standardausf�hrung zu gew�hrleisten.

Um diese Eintr�ge zu erzeugen, mu� die Datei Printer.reg ausgef�hrt werden.