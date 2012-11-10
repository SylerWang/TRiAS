TRiAS GmbH Potsdam, Potsdam, den 6. Juni 2000, InterTRiAS V3.12

Im folgenden wird eine �bergangsl�sung f�r das Problem des nicht 
funtionierenden gleichzeitigen Zugriffs auf InterTRiAS-Datenquellen 
und -projekte unter Novell-Netzwerken beschrieben.

Der Auftretende Fehler �u�ert sich in verschiedenen Fehlermeldungen 
und teilweisen Abst�rzen von InterTRiAS, wenn gleichzeitig mehrere 
Nutzer auf ein und die selben InterTRiAS-Datenquellen bzw. -projekte
zugreifen.

Der kann zur Zeit lediglich durch folgende Ma�nahmen umgangen werden:

Die Datei 'UseNovellTestCode.reg' mu� auf jedem Client-Rechner (f�r jeden
InterTRiAS-Nutzer) nach der erfolgreichen Installation von InterTRiAS in die
Systemregistrierung �bernommen werden. Dazu klicken Sie bitte im Explorer mit 
der rechten Maustaste auf diese Datei und w�hlen den Menupunkt 'Zusammenf�hren'.

Die Datei 'InterTRiAS.Dir' mu� in jedes Verzeichnis kopiert werden, in welchem
sich InterTRiAS-Datenquellen bzw. -projekte existieren, auf die �ber ein
Novell-Netzwerk zugegriffen werden soll.

