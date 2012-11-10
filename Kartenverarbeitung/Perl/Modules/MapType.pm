package MapType;

use strict;
use vars qw(@ISA $VERSION);

use BaseObject;

@ISA=qw(BaseObject);

BEGIN {
my $ERRMSGS = q(
ERR_INVALIDIDENT
	de	Fehlerhafte Nomenklatur %s
);
	BaseObject::init_errmsg( $ERRMSGS );
}

sub new {
	my($class,@param)=@_;
	my $self = {};
    bless $self,ref $class || $class;
	return $self->init(@param);
}

sub DESTROY {
	1;
}

sub init {
	my($self,@param)=@_;
	return $self;
}

=head1 NAME

MapType.pm - Ermittlung von Karteninformationen zu einer Rasterbilddatei.

=head1 SYNTAX

 use MapType;

 my($theMap,$mapData);

 $theMap = MapTypeFactory::CreateInstance( 'TKAS' ) or die $@;

 $mapData = {ident=>'N-33-132-B-c-3'};

 $theMap->path_from_ident( $mapData, $mapData ) or die $@;
 $theMap->scale_from_ident( $mapData, $mapData ) or die $@;
 $theMap->coord_from_ident( $mapData, $mapData ) or die $@;


=head1 BESCHREIBUNG

Die meisten vorkommenden Karten, Luftbilder etc. lassen sich anhand
einer Nomenklatur klassifizieren. In den meisten F�llen spiegeln sich diese
Nomenklaturen auch im Dateinamen wieder. Die Objekte der Klasse C<MapType>
sind in der Lage aus einem Dateinamen eine Nomenklatur sowie weitergehende
Informationen abzuleiten:

=item die Nomenklatur selbst

=item die Karteneckkoordinaten sowie -Ausma�e

=item einen (ggf. g�nderten Dateinamen)

=head1 METHODEN

=over 16

=cut

sub TRiASCS { my $self = shift; return $self->PUREVIRT(); }

=head2 B<TRiASCS( [in,out] $P )>

Liefert das TRiAS - verst�ndliche Koordinatensystem in dem die
Dateien abgebildet werden (BESSELGK, KRGEOD usw.).

=head2 I<In-Parameter>

=head2 I<Out-Parameter>

=item I<COORDSYSTEM>

Das TRiAS-Koordinatensystem.

=cut

sub ident_and_path { my $self = shift; return $self->PUREVIRT(); }

=head2 B<ident_and_path( $I, $O )>

Ermittelt f�r einen gegebenen Dateinamen die zugeh�rige Kartennomenklatur
sowie einen (ggf. ge�nderten neuen) Dateinamen. Die Manipulation
des Pfadnamens ist in bestimmten F�llen sinnvoll, z.B. bei der Bearbeitung
von top. Karten des Typs B<AS>. Hier kann der zust�ndige Modul
z.B. aus einer Datei I<N-33-132-C-b-3.tif> einen neuen Dateinamen
I<N-33-132/C-b-3.tif> erzeugen der dann der 8.3-Namenskonvention entspricht.
Andere Anwendungen wie die Erzeugung �berhaupt erst g�ltiger Nomenklaturen 
bzw. Dateinamen sind denkbar.

=head2 I<In-Parameter>

=item I<inFile>

Der Name der Tiff-Datei als anonymes Array.

=head2 I<Out-Parameter>

=item I<ident>

die vollst�ndige Nomenklatur

=item I<path>

der (ggf. g�nderte neu) Dateiname.

=cut

sub path_from_ident { my $self = shift; return $self->PUREVIRT(); }

=head2 B<path_from_ident( $inParam, $outParam )>

Ermittelt den Pfadnamen f�r eine bestimmte Kartennomenklatur.

=head2 I<In-Parameter>

=item I<Ident>

die Kartennomenklatur.

=head2 I<Out-Parameter>

=item I<path>

Der zur Nomenklatur passende Dateiname.

=cut

sub ident_from_coord { my $self = shift; return $self->PUREVIRT(); }

=head2 B<ident_from_coord( $inParam, $outParam )>

Ermittelt dasjenige Kartenblatt in dem der durch B<(lon,lat)> gegebene
Punkt liegt.

=head2 I<In-Parameter>

=item I<scale>

Der Ma�stab auf den sich die zu ermittelnde Nomenklatur bezieht.

=item I<lon>

Die geographische L�nge / der Rechtswert der Koordinate.

=item I<lat>

Die geographische Breite / der Hochwert der Koordinate

=head2 I<Out-Parameter>

=item I<ident>

Die Nomenklatur / das Kartenblatt.

=cut

sub coord_from_ident { my $self = shift; return $self->PUREVIRT(); }

=head2 B<coord_from_ident( $inParam, $outParam )>

Ermittelt die linke untere Eckkordinate sowie die Ausdehnung eines Kartenblattes.

=head2 I<In-Parameter>

=item I<ident>

Die Kartennomenklatur

=head2 I<Out-Parameter>

=item I<LLR>

Rechtswert / geogr. L�nge des linken unteren Karteneckpunktes

=item I<LLH>

Hochwert / geogr. Breite des linken unteren Karteneckpunktes

=item I<DR>

Ausdehnung des Kartenblattes in horizontaler Richtung.

=item I<DH>

Ausdehnung des Kartenblattes in vertikaler Richtung.

=cut

=pod

=back

=cut

1;

package MapTypeFactory;

use strict;
use vars qw(@ISA $VERSION);

@ISA=qw(BaseObjectFactory);
$VERSION="1.0";

$MapTypeFactory::BASEDIR = 'MapType';

sub CreateInstance {
	return BaseObjectFactory::CreateInstance( $MapTypeFactory::BASEDIR, @_ );
}

sub EnumClasses {
	return BaseObjectFactory::EnumClasses( $MapTypeFactory::BASEDIR );
}

1;

__END__
