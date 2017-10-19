# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::MerchantAccount::AddressDetails;

use 5.010_001;
use strictures 1;

use Moose;

extends 'WebService::Braintree::_';

has locality => (
    is => 'ro',
);
has postal_code => (
    is => 'ro',
);
has region => (
    is => 'ro',
);
has street_address => (
    is => 'ro',
);

__PACKAGE__->meta->make_immutable;

1;
__END__
