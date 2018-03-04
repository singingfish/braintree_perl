# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::ErrorCodes::MerchantAccount::Funding;

use 5.010_001;
use strictures 1;

=head1 NAME

WebService::Braintree::ErrorCodes::MerchantAccount::Funding

=head1 PURPOSE

This class contains error codes that might be returned if the funding
details for a merchant account is incorrect in some way.

=cut

use constant RoutingNumberIsRequired => "82640";
use constant AccountNumberIsRequired => "82641";
use constant RoutingNumberIsInvalid  => "82649";
use constant AccountNumberIsInvalid  => "82671";
use constant DestinationIsRequired   => "82678";
use constant DestinationIsInvalid    => "82679";
use constant EmailIsRequired         => "82680";
use constant EmailIsInvalid          => "82681";
use constant MobilePhoneIsRequired   => "82682";
use constant MobilePhoneIsInvalid    => "82683";

1;
__END__
