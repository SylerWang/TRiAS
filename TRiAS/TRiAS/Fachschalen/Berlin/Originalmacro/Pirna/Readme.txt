Grundst�cke �ber Stadtbezirk bilden :

	Beschreibungsdaten importieren (TXI,TXM)
	Makro ALB starten
	Recherche nach Flurst�cken mit Grundst�cksnummer, ASC-EXPORT
	GRUNDST.AWK �ber ASC-File laufen lassen ( 1123 wird zu 1124)
	Import des neuen ASC-Files (=Grundst�cke)
	GesamtGrundst�ckeBilden - Makro starten (Blinkeln)

Nun die Stanze :

Voraussetzung - Statistik ist geladen, ALK-Karten [961016] sind in der Sicht definiert!
Ausgehend von einem Kartenblatt wird eine Stanze [961016a] konstruiert. Die Stanze wie 
die Grundst�cke in der Stanze erhalten die Kartennummer (Kode 71100000) der Ursprungskarte.
Grundst�cke ohne Kartennummer m�ssen �berpr�ft werden 
( meist Grundst�cke mit Geometriefehler).
Innerhalb von Stanzen liegende kleinere Stanzen der Nachbarkarte (auch Inseln/L�cher)
werden gel�scht und die darin liegenden Grundst�cke der gr��eren Stanze zugeordnet.

Test der �berlappung von Stanzen durch Makro GeometrieTest.

Sind anzahlm��ig mehr Stanzen entstanden als Kartenbl�tter bzw. r�umlich relativ 
kleine Stanzen, so sollte �berpr�ft werden, ob kleinere Stanzen gr��eren zugeordnet 
werden k�nnen ( Kartennummer beachten!).


