# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::Merchant;

use 5.010_001;
use strictures 1;

use Moose;

extends 'WebService::Braintree::_';

has company_name => (
    is => 'ro',
);
has country_code_alpha2 => (
    is => 'ro',
);
has country_code_alpha3 => (
    is => 'ro',
);
has country_name => (
    is => 'ro',
);
has email => (
    is => 'ro',
);
has id => (
    is => 'ro',
);
has merchant_accounts => (
    is => 'ro',
    isa => 'WebService::Braintree::_::MerchantAccount',
    coerce => 1,
);

__PACKAGE__->meta->make_immutable;

1;
__END__
