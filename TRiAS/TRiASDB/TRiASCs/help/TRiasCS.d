/*
@doc
@contents1 Inhaltsverzeichnis | Um eine Liste der Kapitel nach
ihrer Kategorie anzuzeigen, m�ssen Sie auf einen der folgenden Kapiteleintr�ge
klicken. Um eine alphabetische Liste der Kapitel anzuzeigen, w�hlen Sie die Index - 
Schaltfl�che.

@head3 �bersichten |

@subindex �bersichten

@head3 COM Elemente |

@subindex Objekte
@subindex Objektinterfaces

@head3 Sonstiges |

@subindex Datenstrukturen
@subindex Enumerationen
@subindex Konstanten
@subindex Beispiele
@subindex Objekteigenschaften
@subindex Objektmethoden

@normal Diese Hilfedatei wurde erzeugt am: <date>

@subindex �ber diese Hilfedatei

***********************************************************************
@contents2 �bersichten |
@index topic |

***********************************************************************
@contents2 Objekte |
@normal <tr>- Koordinatensystemobjekte
@index object | (OBJECT & TRIASCS)

***********************************************************************
@contents2 Objektinterfaces |
@normal Interfaces der <tr>- Koordinatensystemobjekte
@index interface | (INTERFACE & TRIASCS)

***********************************************************************
@contents2 Objektmethoden |
@normal Alle Methoden auf einen Blick
@index method | (METHOD & TRIASCS)

***********************************************************************
@contents2 Objekteigenschaften |
@normal Alle Properties auf einen Blick
@index property | (PROPERTY & TRIASCS)

***********************************************************************
@contents2 Datenstrukturen |
@normal Datenstrukturen
@index struct | (STRUCT & TRIASCS)

***********************************************************************
@contents2 Enumerationen |
@normal Aufz�hlungstypen
@index enum | (ENUM & TRIASCS)

***********************************************************************
@contents2 Konstanten |
@normal Konstanten
@index constv | 

***********************************************************************
@contents2 Beispiele |
@index | EXAMPLES

***********************************************************************
@topic Setzen / Lesen von Parametern |
kann man auch machen...

***********************************************************************
@contents2 �ber diese Hilfedatei | 

Copyright<csign> 1991-2000 <company>, #<copyright> V<version>
<nl>For more information about TRiASCs, contact Hartmut Kaiser (H.Kaiser@intertrias.com)

<nl>The sources for this Help file were generated
by Autoduck, the source code documentation tool that generates Print or
Help files from tagged comments in C, C++, Assembly, and Basic source
files.
<nl>For more information about Autoduck, contact Eric Artzt (erica@microsoft.com).

***********************************************************************/
include(`TRiASCS.idl')

/***********************************************************************
include(`epsg.h')
include(`triascs.hmc')

***********************************************************************
@doc EXAMPLES 
@topic Koordinatentransformation - Geod�tisch zu Gau�-Kr�ger | 
@ex Koordinatentransformation - Geod�tisch zu Gau�-Kr�ger | include(`vb/GeoZuGau.bas')
@topic Speichern / Lesen von Koordinatensystemen | 
@ex Speichern / Lesen von Koordinatensystemen | include(`vb/CSSet.bas')
@topic Ermitteln eines guten Containers | 
@ex Ermitteln eines guten Containers | include(`vb/ModTestGoodEnvelope.bas')
@head2 Hinweise: |
@head3 Per Rechner definierte Geometrie |
@normal
<nl>[HKEY_LOCAL_MACHINE\SOFTWARE\FEZ\TRiAS\3.0\CoordinateSystems\DefaultEnvelope]
<nl>@="Deutschland gesamt, WGS84, Dezimalgrad"
<nl>"XMin"="6"
<nl>"XMax"="15"
<nl>"YMin"="40"
<nl>"YMax"="55"
@head3 Per Nutzer definierte Geometrie |
@normal
<nl>[HKEY_CURRENT_USER\Software\FEZ\TRiAS\CoordinateSystems\DefaultEnvelope]
<nl>@="Deutschland gesamt, WGS84, Dezimalgrad"
<nl>"XMin"="6"
<nl>"XMax"="15"
<nl>"YMin"="40"
<nl>"YMax"="55"
@normal Sofern unter HKCR... keine Geometrie eingetragen ist wird diese aus HKLM...
	�bernommen. Somit wird gesichert da� GetGoodEnvelope auf jeden Fall sinnvolle Werte
	liefert. Au�erdem ist eine nutzerspezifische Anpassung m�glich indem unter HKCU... z.B. 
	der eigene Landkreis eingetragen wird.
***********************************************************************/

include(`Help/Koordinatentransformation.d')
