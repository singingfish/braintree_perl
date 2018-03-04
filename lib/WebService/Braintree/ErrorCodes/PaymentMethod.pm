# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::ErrorCodes::PaymentMethod;

use 5.010_001;
use strictures 1;

=head1 NAME

WebService::Braintree::ErrorCodes::PaymentMethod

=head1 PURPOSE

This class contains error codes that might be returned if a payment
method is incorrect in some way.

=cut

use constant CustomerIdIsRequired           => "93104";
use constant CustomerIdIsInvalid            => "93105";
use constant CannotForwardPaymentMethodType => "93106";
use constant NonceIsInvalid                 => "93102";
use constant NonceIsRequired                => "93103";
use constant PaymentMethodParamsAreRequired => "93101";

1;
__END__
