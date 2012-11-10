// @doc LEVEL1
// @topic TRiAS� Datenobjekte |
// S�mtliche TRiAS� Datenobjekte sind hierarchisch miteinander verbunden. Sie besitzen 
// einen der vordefinierten Datentypen <t RTTI>.
//
// An der Spitze dieser Hierachie steht das vordefinierte DatenObjekt 'TRiAS', vom 
// Typ <o Application>, welches das Programm <tr> als Ganzes repr�sentiert. 
//
// Alle <tr> Datenobjekte haben folgende allgemeine Eigenschaften:
// <nl><op DTRiASBaseClass.isA>
// <nl><op DTRiASBaseClass.Parent>
// <nl><op DTRiASBaseClass.Application>
//
// In der <b internen Macrosprache> haben s�mtliche Datenobjekte zus�tzlich
// die folgende allgemeine Eigenschaft:
// <nl><op DTRiASBaseClass.IDispatch>

// @doc DTRIASBASECLASS | BSPROPERTY
// @property IDispatch * | DTRiASBaseClass | IDispatch | Die Eigenschaft <op DTRiASBaseClass.IDispatch> liefert das 
// zugeh�rige OLE-Dispatch Interface, welches an externe Programme (z.B. VisualBasic) �bergeben werden 
// kann.
// @comm Die Eigenschaft <op DTRiASBaseClass.IDispatch> kann nicht gesetzt werden.
// @xref <i DTRiASBaseClass>
// @ex Beispiel f�r die Nutzung der Eigenschaft <op DTRiASBaseClass.IDispatch> |
//	' Das vordefinierte Datenobjekt 'TRiAS' 
//	' soll an eine externe Routine �bergeben werden
//	Dim Obj As Object	
//
//		Set Obj = TRiAS.IDispatch
//		SetExternalObject Obj
//

///////////////////////////////////////////////////////////////////////////////
// @doc OBJECTSINBS
// @topic Typen von TRiAS� Datenobjekten |
// Ein TRiAS� Datenobjekt kann einen der folgenden Typen besitzen:
//
// <o Application>: das Programm <tr>
// <nl><o GeoDocument>: ein <tr> Projekt,
// <nl><o GeoClass>: eine <tr> Objektklasse,
// <nl><o GeoView>: eine Ansicht in einem <tr> Projekt,
// <nl><o GeoObject>: ein einzelnes <tr> Objekt (Punkt-, Linien-, Fl�chen- oder Textobjekt),
// <nl><o GeoFeature>: eine <tr> Objekteigenschaft,
// <nl><o GeoObjectWin>: ein Objektrecherchefenster,
// <nl><b Visualisierungsobjekte>: Objekte, �ber die die Darstellungsparameter von Einzelobjekten 
// oder von Objektklassen beeinflu�t werden k�nnen,
// <nl><b Symbolleistenobjekte>: Objekte, die Symbolleisten bzw. einzelne Symbolleisten-Kn�pfe 
// repr�sentieren,
// <nl><o ProgressIndicator>: ein Objekt, welches lange Operationen durch die Anzeige eines
// Fensters mit Statusanzeige f�r den Nutzer transparent machen kann.
//
// Die meisten dieser Datentypen existieren sowohl als Einzeldatenobjekt als auch als Sammlung 
// gleichartiger Einzeldatenobjekte, sogenannter Collection-Objekte. Collection-Objekttypen bilden 
// sich jeweils aus der Mehrzahl des zugeh�rigen Einzeldatenobjekttyps:
//
// <o GeoDocument> - <o GeoDocuments>
// <nl><o GeoClass> - <o GeoClasses>
// <nl><o GeoView> - <o GeoViews>
// <nl><o GeoObject> - <o GeoObjects>
// <nl><o GeoFeature> - <o GeoFeatures>
// <nl><o GeoObjectWin> - <o GeoObjectWins>
//
// Sammlungen von Datenobjekten finden �berall dort Anwendung, wo mehrere Datenobjekte eines 
// Datentypes gleichzeitig bzw. gleichartig behandelt werden sollen.
// <nl>Es existieren zwei Typen von Datenobjektsammlungen:
// 1. Datenobjektsammlungen, deren Elemente nicht au�erhalb dieser existieren k�nnen und
// 2. Datenobjektsammlungen, deren Elemente auch au�erhalb von derartigen Collections existieren
// k�nnen.
// <nl>N�here Informationen finden Sie dazu im Abschnitt <l Typen von Datenobjektsammlungen>.
//
// Alle <tr> Datenobjektsammlungen haben folgende allgemeine Eigenschaften und Methoden:
// <nl><op DTRiASCollection.Count>
// <nl><om DTRiASCollection.Add>
// <nl><om DTRiASCollection.Item>
// <nl><om DTRiASCollection.Refresh>
// <nl><om DTRiASCollection.Remove>
//
// Der Typ <t RTTI> eines TRiAS� Datenobjektes kann �ber die Eigenschaft <op DTRiASBaseClass.isA> abgefragt 
// werden.
// @xref <l Typen von Datenobjektsammlungen>

