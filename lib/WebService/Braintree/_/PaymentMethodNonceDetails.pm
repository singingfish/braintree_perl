# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::PaymentMethodNonceDetails;

use 5.010_001;
use strictures 1;

use Moose;

extends 'WebService::Braintree::_';

has card_type => (
    is => 'ro',
);
has last_four => (
    is => 'ro',
);
has last_two => (
    is => 'ro',
);

__PACKAGE__->meta->make_immutable;

1;
__END__
