# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::Dispute::TransactionDetails;

use 5.010_001;
use strictures 1;

use Moose;

extends 'WebService::Braintree::_';

# Coerce this to "big_decimal"
has amount => (
    is => 'ro',
);
has id => (
    is => 'ro',
);

__PACKAGE__->meta->make_immutable;

1;
__END__
