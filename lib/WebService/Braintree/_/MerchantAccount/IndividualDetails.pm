# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::MerchantAccount::IndividualDetails;

use 5.010_001;
use strictures 1;

use Moose;
use MooseX::Aliases;

extends 'WebService::Braintree::_';

use WebService::Braintree::_::MerchantAccount::AddressDetails;

has address => (
    is => 'ro',
    isa => 'WebService::Braintree::_::MerchantAccount::AddressDetails',
    coerce => 1,
    alias => 'address_details',
);
has date_of_birth => (
    is => 'ro',
);
has email => (
    is => 'ro',
);
has first_name => (
    is => 'ro',
);
has last_name => (
    is => 'ro',
);
has phone => (
    is => 'ro',
);
has ssn_last_4 => (
    is => 'ro',
);

__PACKAGE__->meta->make_immutable;

1;
__END__
