# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::Transaction::SubscriptionDetail;

use 5.010_001;
use strictures 1;

use Moose;

extends 'WebService::Braintree::_';

has billing_period_end_date => (
    is => 'ro',
);
has billing_period_start_date => (
    is => 'ro',
);

__PACKAGE__->meta->make_immutable;

1;
__END__
