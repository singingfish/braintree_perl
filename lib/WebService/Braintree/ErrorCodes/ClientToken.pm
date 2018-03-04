# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::ErrorCodes::ClientToken;

use 5.010_001;
use strictures 1;

=head1 NAME

WebService::Braintree::ErrorCodes::ClientToken

=head1 PURPOSE

This class contains error codes that might be returned if a client token
is incorrect in some way.

=cut

use constant CustomerDoesNotExist                            => "92804";
use constant FailOnDuplicatePaymentMethodRequiresCustomerId  => "92803";
use constant MakeDefaultRequiresCustomerId                   => "92801";
use constant ProxyMerchantDoesNotExist                       => "92805";
use constant VerifyCardRequiresCustomerId                    => "92802";
use constant UnsupportedVersion                              => "92806";

1;
__END__
