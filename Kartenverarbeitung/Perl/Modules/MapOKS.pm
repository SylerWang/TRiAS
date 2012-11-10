package MapOKS;

use strict;
use vars qw(@ISA $VERSION);

$VERSION="1.0";
@ISA= qw(BaseObject);

use BaseObject;

sub new {
	my($class)=@_;
	my $self = {};
    bless $self,ref $class || $class;
	return $self->init( );
}

sub DESTROY {
	1;
}

BEGIN {
$MapOKS::OKSBASE = {
	qw(
		TKAS 91
		TKN 92
		TSK 94
		SK 95
		DLB 9c
	) };
$MapOKS::SCALES = {
	qw(
		200 9
		250 a
		400 b
		500 c
		750 d
		1000 5
		2000 6
		4000 7
		5000 8
		10000 1
		25000 2
		50000 3
		100000 4
	) };
$MapOKS::CSYSTEMS = {
		UNKNOWN		=> {qw~~}
		, BESSELGK	=> {qw~CoordTransform BESSELGK CoordMeridian Autoselect CoordStrBreite 3 CoordScaling 1.0 CoordPrecision 2~}
		, BEGEOD	=> {qw~CoordTransform BEGEOD~}
		, KRGEOD	=> {qw~CoordTransform KRGEOD~}
	};
}

sub init {
	my($self)=@_;
	return $self;
}

sub dump_txi {
	my($self,$B,$S,$M)=@_;
	my($s,$l,$OKS);
	print qq~"99999300" /*altes Hintergrundrasterbild*/\n~;
	foreach $s ( sort keys %{ $self->{SCHEMES}{$S} } ) {
		next if( '__PARAM__' eq $s );
		$OKS = $self->OKS($B,$S,$s,$M);
		print qq~"$OKS"~;
		print qq~ /*$B 1:$M Layer $s ($S)*/$self->{SCHEMES}{$S}{$s}[1]~;
		print qq~\n~;
	}
}

sub dump_txm {
print <<'EOF';
99999301 A 1 80 0 /*TK-Info*/Informationen zur Visualisierung topogr. Karten
99999302 B 1 80 0 /*TK-View*/Sichtmerkmal zur Speicherung des Farbschemas einer Sicht
99999303 A 1 80 0 /*TK-Zusatz1*/Zus�zliche beschreibende Informationen f�r Hintergrundrasterbilder
99999304 A 1 80 0 /*TK-Zusatz2*/Zus�tzliche beschreibende Informationen f�r Hintergrundrasterbilder
99999305 A 1 80 0 /*TK-Zusatz3*/Zus�tzliche beschreibende Informationen f�r Hintergrundrasterbilder
EOF
}

sub prepare_header {
	my($self,$P)=@_;
	$P->{mapType} or return $self->ERROR( qw(ERR_MISSINGARG mapType) );
	$P->{ASC} or return $self->ERROR( qw(ERR_MISSINGARG ASC) );
	my $CS = {};
	$P->{mapType}->TRiASCS( $CS ) or return $self->ERROR( q(ERR_CANNOTFINDCOORDSYSTEM), $P->{mapType} );
	$CS = $CS->{COORDSYSTEM};
	$MapOKS::CSYSTEMS->{ $CS } or return $self->ERROR( 'ERR_UNKNOWNSYSTEM', $CS );
	foreach( keys %{$MapOKS::CSYSTEMS->{$CS}} ) {
		$P->{ASC}->header_value( $_, $MapOKS::CSYSTEMS->{$CS}{$_} );
	}
	return $self;
}

sub OKS {
	my($self,$I,$O)=@_;
	$I->{type} or return $self->ERROR( qw(ERR_MISSINGARG type) );
	defined $I->{layeroks} or return $self->ERROR( qw(ERR_MISSINGARG layeroks) );
	defined $I->{scale} or return $self->ERROR( qw(ERR_MISSINGARG scale) );

	defined $MapOKS::OKSBASE->{$I->{type}} or return $self->ERROR( q(ERR_UNKNOWNTYPE), $I->{type} );
	defined $MapOKS::SCALES->{$I->{scale}} or return $self->ERROR( q(ERR_UNKNOWNSCALE), $I->{scale} );
	$O->{OKS} = qq($MapOKS::OKSBASE->{$I->{type}}$I->{layeroks}$MapOKS::SCALES->{$I->{scale}});
	return $self;
}

sub ident {
	my($self,$B,$F)=@_;
	qq~$B\@$B\@$F~;
}

sub layername {
	my($self,$B,$S,$s)=@_;
	$self->{SCHEMES}{$S}{$s}[1];
}

sub get_base {
	my($self,$S)=@_;
	$self->{SCHEMES}{$S}{__PARAM__}{TYPE};
}

sub get_scale {
	my($self,$S)=@_;
	$self->{SCHEMES}{$S}{__PARAM__}{SCALE};
}

BEGIN {
$MapOKS::ERRMSGS = q(
ERR_CANNOTFINDCOORDSYSTEM
	de	Kann Koordinatensystemdefinition in [%s] nicht finden
ERR_UNKNOWNSCALE
	de	Unbekannter Ma�stab [%s]
ERR_UNKNOWNTYPE
	de	Unbekannter Kartentyp [%s]
);
	BaseObject::init_errmsg( $MapOKS::ERRMSGS );
}

1;

=pod

=head1 NAME

MapOKS.pm - Aufbereiten von Objektklassenschl�sseln f�r topographische Karten

=head1 SYNTAX

 use MapOKS;
 my $MP = new MapOKS;
 ########################################################################
 # Objektklassenschl�ssel f�r eine 
 #   TKAS         ... topogr. Karte AS
 #   TKASCOLOR    ... im Ebenenschema 'TKASCOLOR'
 #   co           ... von dort die Ebene 'co' (Color) 
 #   25000        ... im Ma�stab 1:25000
 # zur�ckliefern
 my $OKS = $MP->( 'TKAS', 'TKASCOLOR', 'co', '25000' );
 

=head1 BESCHREIBUNG

B<MapOKS.pm> bereitet Objektklassenschl�ssel sowie eindeutige Identifikatoren 
f�r Hintergrundrasterbilder auf und enth�lt (hoffentlich) alle notwendigen Definitionen. 
Der Objektklassenschl�ssel f�r Hintergrundrasterbilder setzt sich aus drei Teilen zusammen:

 BBBLMM

wobei die Teile wie folgt zu interpretieren sind:

=item B<BBB>

Die Basis f�r den Schl�ssel; wird durch den Typ des Hintergrundrasterbildes an sich
festgelegt. So definiert B<911> eine topogr. Karte AS, B<916> eine UTM-Karte.

=item B<L>

Der Kartenlayer. Allgemein bekommt eine Farbkarte stets den Layer B<0>, alle anderen
Layer sind abh�ngig von den konkreten Verh�ltnissen. Der TRiAS-eigene Standard ist
wie folgt defdiniert:

	co	0	Farbkarte
	--	1	Grundri�
	--	2	Geb�ude
	--	3	Grenzen
	--	4	Gew�sser Umri�
	--	5	Gew�sser F�llung
	--	6	Vegetation Umri�
	--	7	Vegetation F�llung
	--	8	Relief
	--	9	Beschriftung
	--	f	Herstellerlayer

Die Definitionen f�r andere Schemata sollten sich m�glichst an dieses Schema
anlehnen und k�nnen in diesem Modul nachgetragen werden (siehe auch L<MapOKS.pm/LAYERDEFINITIONEN>).

=item B<MM>

Der Ma�stab des Hintergrundrasterbildes.

=head1 LAYERDEFINITIONEN

Eine Layerdefinition beginnt stets mit einer Zeile *ohne* Tabulator am
Anfang die den Eintrag an sich definiert, gefolgt von Zeilen mit Tabulator
am Anfang die die einzelnen Layer beschreiben. Zeilen mit '#' am Anfang werden
ignoriert (Kommentar).

Am besten ist die Erl�uterung anhand eines Beispiels:

 Bay<TAB>TYPE<TAB>TKN<TAB>SCALE<TAB>25000<TAB>COORDTRANSFORM<TAB>BESSELGK

 # Bay           Unter diesem Namen wird die folgende Definition gef�hrt
 #               hier: Layerkarten des bayer. LVermA
 # TYPE TKN      Voreinstellung f�r den Basistyp
 # SCALE 25000   Voreinstellung f�r den Ma�stab.
 # COORDTRANSFORM BESSELGK  Wird als Koordinatentransformator in die TRiAS-ASC
 #                          Datei �bernommen

 <TAB>co<TAB>0<TAB>Farbkarte
 <TAB>gr<TAB>1<TAB>Grundri�
 <TAB>gk<TAB>4<TAB>Gew�sserkontur

 # co          der Farblayer; dieser Layer sollte in jeder Definition vorhanden
 #             sein da alle unbekannten Layer hier eingeordnet werden
 # 0           Der Layer bekommt im OKS die Kennzahl '0'
 # Farbkarte   die ausf�hrliche Bezeichnung f�r diesen Layer
 # gr 1 ...    Layer mit der Kennung 'gr' sind Grundri� und bekommen OKS '1'
 # ... usw. ...


Bedeutsam ist in der erste Eintrag in den Layerdefinitionen. I.A. wird aus
einem Kartennamen diese Kennung extrahiert und �ber diese Kennung dem entsprechenden
Layer zugeordnet (siehe hierzu L<DocType.pm>). 

=cut

__DATA__
###################################################################
# allgemeine Farbkarten
TKASCOLOR	TYPE	TKAS	SCALE	10000	COORDTRANSFORM	KRGEOD
	co	0	Top. Karte AS
TKNCOLOR	TYPE	TKN	SCALE	10000	COORDTRANSFORM	BESSELGK
	co	0	Top. Karte N

###################################################################
# Unsere Standardfestlegung f�r Farbebenendefinitionen
STDLAY	TYPE	TKN	SCALE	25000	COORDTRANSFORM	BESSELGK
	co	0	Farbkarte
	--	1	Grundri�
	--	2	Geb�ude
	--	3	Grenzen
	--	4	Gew�sser Umri�
	--	5	Gew�sser F�llung
	--	6	Vegetation Umri�
	--	7	Vegetation F�llung
	--	8	Relief
	--	9	Beschriftung
	--	f	Herstellerlayer

###################################################################
# Luftbilder
LB50	TYPE	DLB	SCALE	50000	COORDTRANSFORM	BESSELGK
	co	0	Digitales Luftbild

