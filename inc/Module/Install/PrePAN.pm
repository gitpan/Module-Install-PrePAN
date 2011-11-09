#line 1
package Module::Install::PrePAN;
use 5.008001;
use strict;
use warnings;
use Carp ();

our $VERSION = '0.01';

use base qw(Module::Install::Base);

sub prepan_url {
    my ($self, $url) = @_;
    Carp::croak 'missing parameter: $url' if !defined $url;
    $self->resources(PrePAN => $url);
}

!!1;

__END__

=encoding utf8

#line 60
