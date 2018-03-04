# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::ErrorCodes::CreditCard::Options;

use 5.010_001;
use strictures 1;

=head1 NAME

WebService::Braintree::ErrorCodes::CreditCard::Options

=head1 PURPOSE

This class contains error codes that might be returned if the options for
a credit card are incorrect in some way.

=cut

use constant UpdateExistingTokenIsInvalid           => "91723";
use constant UseBillingForShippingDisabled          => "91572";
use constant VerificationMerchantAccountIdIsInvalid => "91728";

1;
__END__
