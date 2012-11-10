package DocType;

use strict;
use vars qw(@ISA $VERSION);

@ISA=qw(BaseObject);
$VERSION="1.0";

use BaseObject;

BEGIN {
my $ERRMSGS = q(
ERR_NAMESCHEME
	de	Die Datei %s entspricht nicht den Namenschema f�r %s
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

DocType.pm - Ermittlung von Karteninformationen aus Begleitdateien von
Rasterbilddateien.

=head1 SYNTAX

 use DocType;
 my($DocType,$DocData);
 $DocType = DocTypeFactory::CreateInstance( 'TFW' ) or die BaseObject::ERRORS;

 $DocData = {filename=>'the/path/to/the/file.tif'};

 $DocType->read_info( $DocData, $DocData ) or die BaseObject::ERRORS;

 my(@LL) = ($DocData->{LLR}, $DocData->{LLH});
 my(@UR) = ($DocData->{URH}, $DocData->{URH});


=head1 BESCHREIBUNG

C<DocType> ist der Basismodul f�r die Behandlung von Begleitdateien
zu Rasterbilddateien.

Oftmals werden neben den eigentlichen Rasterbilddateien andere Dateien mitgeliefert
die zus�tzliche Informationen zu diesen enthalten. Ein typisches Beispiel sind
die B<.tfw>-Dateien von ARC-Info, die die Karteneckkoordinaten enthalten.

Ein von C<DocType> abgeleiteter Modul bekommt den Dateinamen einer
gefundenen Rasterbilddatei �bergeben und kann entsprechend seinem 'Wissen'
Begleitdateien suchen und daraus zus�tzliche Informationen gewinnen
(bei den B<.tfw>-Dateien z.B. die Karteneckkordinaten.

=cut

sub read_info { my $self = shift; return $self->PUREVIRT(); }

=head2 B<read_info( $inParam, $outParam )>

ermittelt Karteninformationen aus der �bergebenen B<TIFF>-Datei und
schreibt sie in den �bergebenen anonymen Hash.

=head2 I<In-Parameter>

=item I<filename>

Der vollst�ndige Name der Tiff-Datei B<mit> als anonymes Array
mit B<Verzeichnis,Dateiname,Dateierweiterung>.

=head2 I<Out-Parameter>

=item I<layer>

der Kartenlayer

=item I<scale>

der Kartenma�stab

=item I<LLR>

Rechtswert / geogr. L�nge der linken unteren Karteneckkoordinate

=item I<LLH>

Hochwert / geogr. Breite der linken unteren Karteneckkoordinate

=item I<URR>

Rechtswert / geogr. L�nge der rechten oberen Karteneckkoordinate

=item I<URH>

Hochwert / geogr. Breite der rechten oberen Karteneckkoordinate

=item I<LLFR>

Rechtswert / geogr. L�nge der unteren linken Dateieckkoordinate aus Begleitdokument

=item I<LLFH>

Hochwert / geogr. Breite der unteren linken Dateieckkoordinate aus Begleitdokument

=item I<URFR>

Rechtswert / geogr. L�nge der oberen rechten Dateieckkoordinate aus Begleitdokument

=item I<URFH>

Hochwert / geogr. Breite der oberen rechten Dateieckkoordinate aus Begleitdokument

=item I<LLMR>

Rechtswert / geogr. L�nge der unteren linken Karteneckkoordinate aus Begleitdokument

=item I<LLMH>

Hochwert / geogr. Breite der unteren linken Karteneckkoordinate aus Begleitdokument

=item I<LRMR>

Rechtswert / geogr. L�nge der unteren rechten Karteneckkoordinate aus Begleitdokument

=item I<LRMH>

Hochwert / geogr. Breite der unteren rechten Karteneckkoordinate aus Begleitdokument

=item I<URMR>

Rechtswert / geogr. L�nge der oberen rechten Karteneckkoordinate aus Begleitdokument

=item I<URMH>

Hochwert / geogr. Breite der oberen rechten Karteneckkoordinate aus Begleitdokument

=item I<ULMR>

Rechtswert / geogr. L�nge der oberen linken Karteneckkoordinate aus Begleitdokument

=item I<ULMH>

Hochwert / geogr. Breite der oberen linken Karteneckkoordinate aus Begleitdokument

=back

=cut

1;

package DocTypeFactory;

use strict;
use vars qw(@ISA $VERSION);

@ISA=qw(BaseObjectFactory);
$VERSION="1.0";

use BaseObject;

$DocTypeFactory::BASEDIR = 'DocType';

sub CreateInstance {
	return BaseObjectFactory::CreateInstance( $DocTypeFactory::BASEDIR, @_ );
}

sub EnumClasses {
	return BaseObjectFactory::EnumClasses( $DocTypeFactory::BASEDIR );
}

1;
