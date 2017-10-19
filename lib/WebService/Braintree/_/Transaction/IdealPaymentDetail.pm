# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::Transaction::IdealPaymentDetail;

use 5.010_001;
use strictures 1;

use Moose;

extends 'WebService::Braintree::_';

has bic => (
    is => 'ro',
);
has ideal_payment_id => (
    is => 'ro',
);
has ideal_transaction_id => (
    is => 'ro',
);
has image_url => (
    is => 'ro',
);
has masked_iban => (
    is => 'ro',
);

__PACKAGE__->meta->make_immutable;

1;
__END__
