# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::MerchantAccount::BusinessDetails;

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
has dba_name => (
    is => 'ro',
);
has legal_name => (
    is => 'ro',
);
has tax_id => (
    is => 'ro',
);

__PACKAGE__->meta->make_immutable;

1;
__END__
