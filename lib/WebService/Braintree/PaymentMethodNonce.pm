# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::PaymentMethodNonce;

use 5.010_001;
use strictures 1;

use Moose;

with 'WebService::Braintree::Role::Interface';

sub create {
    my ($class, $token) = @_;
    $class->gateway->payment_method_nonce->create($token);
}

sub find {
    my ($class, $token) = @_;
    $class->gateway->payment_method_nonce->find($token);
}

__PACKAGE__->meta->make_immutable;

1;
__END__
