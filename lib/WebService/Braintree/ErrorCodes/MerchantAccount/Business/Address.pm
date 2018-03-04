# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::ErrorCodes::MerchantAccount::Business::Address;

use 5.010_001;
use strictures 1;

=head1 NAME

WebService::Braintree::ErrorCodes::MerchantAccount::Business::Address

=head1 PURPOSE

This class contains error codes that might be returned if the address for a
business record for a merchant account is incorrect in some way.

=cut

use constant RegionIsInvalid        => "82684";
use constant StreetAddressIsInvalid => "82685";
use constant PostalCodeIsInvalid    => "82686";

1;
__END__
