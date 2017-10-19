# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::Dispute::Transaction;

use 5.010_001;
use strictures 1;

use Moose;

extends 'WebService::Braintree::_';

# Coerce this to "big_decimal"
has amount => (
    is => 'ro',
);
# Coerce this to DateTime
has created_at => (
    is => 'ro',
);
has id => (
    is => 'ro',
);
has order_id => (
    is => 'ro',
);
has purchase_order_number => (
    is => 'ro',
);
has payment_instrument_subtype => (
    is => 'ro',
);

__PACKAGE__->meta->make_immutable;

1;
__END__
