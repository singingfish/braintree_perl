# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::Transaction::ApplePayDetail;

use 5.010_001;
use strictures 1;

use Moose;

extends 'WebService::Braintree::_';

has card_type => (
    is => 'ro',
);
has cardholder_name => (
    is => 'ro',
);
has expiration_month => (
    is => 'ro',
);
has expiration_year => (
    is => 'ro',
);
has last_4 => (
    is => 'ro',
);
has payment_instrument_name => (
    is => 'ro',
);
has source_description => (
    is => 'ro',
);

__PACKAGE__->meta->make_immutable;

1;
__END__
