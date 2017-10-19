# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::AchMandate;

use 5.010_001;
use strictures 1;

use Moose;

extends 'WebService::Braintree::_';

#use Scalar::Util qw(blessed);
#use DateTime;
#$self->{accepted_at} = DateTime->parse($self->{accepted_at})
#    unless (blessed($self->{accepted_at}) // '') eq 'DateTime';
has accepted_at => (
    is => 'ro',
);
has text => (
    is => 'ro',
);

__PACKAGE__->meta->make_immutable;

1;
__END__
