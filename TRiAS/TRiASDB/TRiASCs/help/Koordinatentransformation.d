// @doc
// @topic Koordinatentransformationen - eine Einf�hrung |
// Eine Koordinatentransformation dient der Umrechnung eines oder mehrerer Koordinatenpunkte
// aus einem Koordinatensystem in ein anderes. Das ist zum Beispiel dann notwendig, wenn Daten 
// verschiedener Datenquellen, die in verschiedenen Koordinatensystemen vorliegen, gleichzeitig
// angezeigt oder ausgewertet werden sollen.
//
// Das zentrale Objekt einer Koordinatentransformation in <tr> ist daher das <o TRiASCSTransform> Objekt,
// welches es erm�glicht, Koordinaten verschiedener Eingangs-Koordinatensystem in ein vorgebbares
// Ausgangskoordinatensystem zu konvertieren (bzw. umgekehrt). Das Koordinatensystem am Ausgang des 
// Transformators ist im allgemeinen das Koordinatensystem des <tr>- Projektes, die Koordinatensysteme 
// am Eingang des Transformators entsprechen im allgemeienen den Koordinatensystemen, in denen die Daten 
// der einzelnen Datenquellen vorliegen.
// 
// Zu weiteren Informationen zu Koordinatensystemen siehe <l Koordinatensysteme - eine Einf�hrung>
// Das Koordinatensystem am Ausgang des Transformators wird mit der <op ITRiASCSTransform.OutputCS>
// gesetzt bzw. gelesen. 
//
// @xref <l Koordinatensysteme - eine Einf�hrung>, <l Definition von Koordinatentransformationen>,
// <o TRiASCSTransform>
// @end

///////////////////////////////////////////////////////////////////////////////
// @topic Definition von Koordinatentransformationen |
// @xref <o TRiASCSTransform>
// @end

///////////////////////////////////////////////////////////////////////////////
// @topic Koordinatensysteme - eine Einf�hrung |
// Ein Koordinatensystem in <tr> wird durch das <o TRiASCS>- Objekt repr�sentiert und definiert das 
// Bezugssystem, in welchem die Koordinaten einzelner Punkte
// abgebildet werden. Im allgemeinen werden 2 dimensionale und 3 dimensionale Koordinatensysteme 
// unterschieden. Obwohl s�mtliche Funktionen in <tr>, die mit Koordinaten zu tun haben, davon ausgehen, 
// da� die Koordinaten als Punkte-Tripel (X, Y, Z) gegeben sind, so werden z.Zt. jedoch nur die 
// Werte X und Y ausgewertet, der Z-Wert (H�he �ber Normalnull) wird derzeit in <tr> grunds�tzlich 
// ignoriert.
//
// Zentrale Bedeutung bei der Beschreibung eines Koordinatensystemes kommt dem sogenannten 
// <b geod�tischen Datum> zu, welches die Gesamtheit der beschreibenden Parameter des dem Koordinatensystem 
// zu Grunde liegenden Erdmodelles beinhaltet. Ein geod�tisches Datum kann horizontal, vertikal oder 
// vollst�ndig sein, je nach dem, ob es in erster Linie 2 dimensionale Zusammenh�nge auf der Erdoberfl�che, 
// H�hen zu einer Bezugsebene oder beide gleichzeitig beschreibt.
// Beispiele f�r ein geod�tisches Datum sind 'Deutsches Hauptdreiecksnetz', 'Pulkovo 1942' oder 'WGS 1984'.
//
// Da die Koordinaten von Punkten der Erdoberfl�che in den seltensten F�llen als Punkte in einer Ebene 
// angenommen werden k�nnen, liegen den meisten erdbezogenen Koordinatensystemen ellipsoidale Modelle
// zu Grunde, die besonders bei gr��eren Entfernungen zwischen zwei Punkten erheblich bessere Genauigkeiten
// liefern. Diese ellipsoidalen Modelle gehen von Rotationsellipsoiden aus, die durch eine �quatorial- und 
// einen Polarradius definiert sind. Diese Radien bezeichnet man als <b gro�e Halbachse> (�quatorialradius) 
// bzw. <b kleine Halbachse> (Polarradius) und den sich daraus ergebenden Ellispoiden als 
// <b Referenzellipsoid> des Koordinatensystemes. Andere Parameter des Referenzellipsoides wie Abflachung 
// oder Exzentrizit�t lassen sich aus den beiden Halbachsen berechnen.
// Beispiele f�r Referenzellipsoide sind 'Bessel 1841', 'Krassovky 1940' oder 'WGS 84'.
//
// Je nach konkret verwendetem Koordinatensystem unterscheidet man nach der Koordinatenprojektion, die 
// die Punktkoordinaten der Karte erzeugt. Die wohl bekanntesten Projektionen in Deutschland sind
// die Gau�-Kr�ger Projektion (eine UTM- Projektion, UTM steht f�r <b u>niversal <b t>ransvers <b m>ercator)
// oder die Lambert- Projektion (eine Kegelprojektion). Projektionen werden verwendet, um Koordinatensysteme 
// zu erhalten, welche, je nach Anwendungsfall, z.B. l�ngen-, winkel- oder fl�chentreu sind. Das ist 
// notwendig, da die unmittelbar auf den Ellipsoid bezogenen Koordinatensysteme diese Eigenschaften nicht 
// besitzen und daher schlecht f�r den t�glichen Gebrauch z.B. zur Erstellung von thematischen Karten 
// geeignet sind.
//
// @xref <l Definition von Koordinatensystemen>, <o TRiASCS>
// @end

///////////////////////////////////////////////////////////////////////////////
// @topic Definition von Koordinatensystemen |
// 
// @xref <o TRiASCS>
// @end
