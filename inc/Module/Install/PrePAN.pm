#line 1
package Module::Install::PrePAN;
use 5.008001;
use strict;
use warnings;
use Carp ();

our $VERSION = '0.02';

use base qw(Module::Install::Base);

my %SCHEMA = (
    module_url => 1,
    author_url => 1,
);

sub prepan {
    my ($self, %args) = @_;
    my @invalid_keys = grep { !$SCHEMA{$_} } keys %args;
    Carp::croak "invalid keys: " . join ', ', @invalid_keys if @invalid_keys;
    $self->resources(X_prepan => \%args);
}

!!1;

__END__

=encoding utf8

#line 85
