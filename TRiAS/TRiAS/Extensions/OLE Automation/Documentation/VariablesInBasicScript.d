// @doc LEVEL1
// @topic Variablen in BasicScript� |
//
// In diesem Kapitel sind folgende Problemkreise beschrieben:
// @index | VARSINBS
//

// @doc VARSINBS
// @topic Verwendbare Datentypen |
// In BasicScript� stehen dem Anwender folgende Datentypen f�r einfache Variablen zur Verf�gung:
//
// <nl><b Integer>: Eine Variable dieses Typs kann lediglich ganzzahlige Werte annehmen. 
// Der Wertebereich betr�gt (-32768..32767)
// <nl><b Long>: Eine Variable dieses Typs kann lediglich ganzzahlige Werte annehmen. 
// Der Wertebereich betr�gt (-2147483648..2147483647)
// <nl><b Double>: Eine Variable dieses Typs kann beliebige Werte aus dem Wertebereich 
// reeller Zahlen annehmen (-1.7976931348623158e+308..-2.2250738585072014e-308 bzw. 
// 2.2250738585072014e-308..1.7976931348623158e+308)
// <nl><b String>: Eine Variable dieses Typs repr�sentiert eine Zeichenkette, d.h. eine Folge 
// von Buchstaben bzw. Zahlen und Sonderzeichen, die sich in einer definierten Reihenfolge befinden.
// <nl><b Variant>: Eine Variable dieses Typs kann einen beliebigen Datentyp annehmen. 
// Bei Zuweisungen wird intern versucht eine entsprechende Konvertierung implizit vorzunehemen. 
// 
// Eine explizite Konvertierung eines Variantes 'var' kann z.B. mit Hilfe der Funktionen 
// <blue CLong(var)>, <blue CInt(var)>, <blue CDouble(var)>, <blue CString(var)> usw. vorgenommen werden. 
// Der R�ckkehrwert dieser Funktionen enth�lt bei erfolgreicher Konvertierung den gew�nschten 
// Variablentyp mit dem entsprechenden Variablenwert.
// @xref <l Variablen in BasicScript�>

// @doc VARSINBS
// @topic Deklaration von Variablen |
// Die im Abschnitt <l Verwendbare Datentypen> beschriebenen Datentypen k�nnen im Zusammenhang 
// mit den BasicScript� Operatoren <blue Dim>, <blue Private> und <blue Public> zur Deklaration 
// von Variablen verwendet werden. Eine Deklaration mu� folgende Syntax besitzen:
// @ex Syntax von Variablendeklarationen |
//	Dim VarName As DatenTyp	oder
//	Public VarName As DatenTyp	oder
//	Private VarName As DatenTyp
//
// @normal
// Der Operator <blue Dim> wird zur Deklaration von Datenobjekten innerhalb von BasicScript� 
// Routinen verwendet. Diese Datenobjekte behalten ihren Wert im allgemeinen lediglich w�hrend 
// der Bearbeitung der Routine ihren Wert, in der sie deklariert und initialisiert wurden.
// <nl>Der Operator <blue Public> wird zur Deklaration von Datenobjekten verwendet, die in 
// allen BasicScript� Routinen aller aktiven Scripte 'sichtbar' und verwendbar sein sollen. 
// Diese Datenobjekte behalten den ihnen einmal zugewiesenen Wert bei, bis <tr> beendet wird. 
// Dieser Operator wird sicher �u�erst selten zum Einsatz kommen.
// <nl>Der Operator <blue Private> wird zur Deklaration von Datenobjekten au�erhalb von 
// BasicScript� Routinen verwendet. Diese Datenobjekte behalten ihren Wert w�hrend der Bearbeitung 
// des Scriptes bei, in dem sie deklarariert und initialisiert wurden.
// @xref <l Variablen in BasicScript�>, <l Implizite Deklaration von Variablen>

// @doc VARSINBS
// @topic Implizite Deklaration von Variablen |
// Die im Abschnitt <l Verwendbare Datentypen> beschriebenen Datentypen k�nnen implizit (d.h. ohne
// vorherige Deklaration) instantiiert werden. Dazu wird der gew�nschte Datentyp durch ein 
// an den Variablenamen angeh�ngtes Sonderzeichen angegeben.
// @ex Implizite Angabe des Variablentyps |
//	Variable% - Variable vom Typ Integer
//	Variable& - Variable vom Typ Long
//	Variable# - Variable vom Typ Double
//	Variable$ - Variable vom Typ String
//	Variable  - Variable vom Typ Variant
// @xref <l Variablen in BasicScript�>, <l Deklaration von Variablen>
