// @doc
// @topic Recherchen in TRiAS� |
// Die Recherche in <tr> ist auf der Grundlage folgender Regeln implementiert.
//
// S�mtliche Recherchen erfolgen �ber das <i ITRiASSearchObjects> -Interface.
// 
// Recherchen erfolgen der Reihe nach in allen betroffenen Datenquellen. 
// Die dabei gefundenen Objekte werden in der Resultats-Objektmenge durch
// eine ODER-Operation zusammengefa�t.
// 
// F�r jede betroffene Datenquelle wird f�r das zugeh�rige Datenbank-Objekt
// getestet, ob f�r dieses das <i ITRiASSearchObjects> -Interface implementiert ist.
// Wenn dies der Fall ist, wird die Methode <om ITRiASSearchObjects.ConsiderSearch>
// gerufen. Wenn diese Methode <cv S_OK> liefert, wird davon ausgegangen, da� die
// Recherche <b vollst�ndig> durch das Datenbank-Objekt durchgef�hrt werden kann.
// daher wird am Datenbank-Objekt die Methode <om ITRiASSearchObjects.SearchObjects> 
// gerufen, welche die eigentliche Recherche durchf�hrt und s�mtliche Objekte liefert, 
// die das gegebene Suchkriterium erf�llen.
// <nl>Liefert <om ITRiASSearchObjects.ConsiderSearch> dagegegen <cv TRIASDB_S_SEARCH_NOT_SUPPORTED>,
// oder <cv TRIASDB_S_SEARCH_NOT_RECOMMENDED>, dann wird davon ausgegangen, da� die 
// Recherche durch andere Objekte durchgef�hrt werden kann (s.u.)
// 
// Der n�chste Kandidat f�r die Recherche ist das ObjectsCollection-Objekt.
// Die Reihenfolge der Aufrufe ist identisch.
// <nl>Durch das ObjectsCollection-Objekt werden zuerst die betroffenen Objekteigenschafts-Objekte
// in identischer Form getestet, ob durch diese die Recherche durchgef�hrt werden kann.
// Schl�gt die Recherche durch die Objekteigenschafts-Objekte fehl, dann werden sequentiell 
// alle Objektklassen-Objekte untersucht.
// 
// Jedes der jetzt untersuchten Objektklassen-Objekte testet sequentiell das 
// Recherchekriterium f�r jedes Objekt der Objektklasse und f�gen die entsprechend 
// gefundenen Objekte zur Resultatobjektmenge hinzu.
//
// <nnl>-> Nach erfolgreichem Abschlu� der Recherche bis zu diesem Punkt wird die
// Ergebnisobjektmenge ggf. mit den Objektklassen der aktuellen Ansicht abgeglichen, 
// so da� in diesem Fall keine Objekte in der Resultatmenge enthalten sind, die
// nicht ebenfalls zur aktuellen Ansicht geh�ren. Dieser Abgleich erfolgt durch die
// Methode <om ITRiASSearchObjects.ConstraintObjects> des ObjectsCollection-Objektes 
// der zu untersuchenden Ansicht.
// 
// <nnl>In einem Datenserver-Modul k�nnen selbst eigene Recherchefunktionalit�ten 
// implementiert werden, wenn diese evtl. schneller Ergebnisse liefern, als der 
// in TRiAS als 'Notanker' vorgesehene sequentielle Suchalgorithmus. 
//
// Um die beschriebene Abfolge der Recherche zu modifizieren, kann an jedem der 
// genannten Objekte das <i ITRiASSearchObjects> -Interface implementiert werden, 
// durch welches die gew�nschte Recherchefunktionalit�t implementiert werden kann.
//
// @xref <i ITRiASSearchObjects>
