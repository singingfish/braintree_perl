# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::MerchantAccount::FundingDetails;

use 5.010_001;
use strictures 1;

use Moose;

extends 'WebService::Braintree::_';

has account_number_last_4 => (
    is => 'ro',
);
has descriptor => (
    is => 'ro',
);
has destination => (
    is => 'ro',
);
has email => (
    is => 'ro',
);
has mobile_phone => (
    is => 'ro',
);
has routing_number => (
    is => 'ro',
);

__PACKAGE__->meta->make_immutable;

1;
__END__
