# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::MerchantAccount;

use 5.010_001;
use strictures 1;

use Moose;
use MooseX::Aliases;

extends 'WebService::Braintree::_';

use WebService::Braintree::_::MerchantAccount::BusinessDetails;
use WebService::Braintree::_::MerchantAccount::FundingDetails;
use WebService::Braintree::_::MerchantAccount::IndividualDetails;

has business => (
    is => 'ro',
    isa => 'WebService::Braintree::_::MerchantAccount::BusinessDetails',
    coerce => 1,
    alias => 'business_details',
);
has currency_iso_code => (
    is => 'ro',
);
has default => (
    is => 'ro',
    alias => 'is_default',
);
has funding => (
    is => 'ro',
    isa => 'WebService::Braintree::_::MerchantAccount::FundingDetails',
    coerce => 1,
    alias => 'funding_details',
);
has id => (
    is => 'ro',
);
has individual => (
    is => 'ro',
    isa => 'WebService::Braintree::_::MerchantAccount::IndividualDetails',
    coerce => 1,
    alias => 'individual_details',
);
has master_merchant_account => (
    is => 'ro',
    isa => 'WebService::Braintree::_::MerchantAccount',
    coerce => 1,
);
has status => (
    is => 'ro',
);
has sub_merchant_account => (
    is => 'ro',
    alias => 'is_sub_merchant_account',
);

__PACKAGE__->meta->make_immutable;

1;
__END__
