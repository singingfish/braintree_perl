# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::Transaction::FacilitatedDetail;

use 5.010_001;
use strictures 1;

use Moose;

extends 'WebService::Braintree::_';

has merchant_id => (
    is => 'ro',
);
has merchant_name => (
    is => 'ro',
);
has payment_method_nonce => (
    is => 'ro',
);

__PACKAGE__->meta->make_immutable;

1;
__END__
