# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::ErrorCodes::MerchantAccount::ApplicantDetails::Address;

use 5.010_001;
use strictures 1;

=head1 NAME

WebService::Braintree::ErrorCodes::MerchantAccount::ApplicantDetails::Address

=head1 PURPOSE

This class contains error codes that might be returned if the address for an
applicant details for a merchant account is incorrect in some way.

=cut

use constant LocalityIsRequired      => "82618";
use constant PostalCodeIsInvalid     => "82630";
use constant PostalCodeIsRequired    => "82619";
use constant RegionIsRequired        => "82620";
use constant StreetAddressIsInvalid  => "82629";
use constant StreetAddressIsRequired => "82617";
use constant RegionIsInvalid         => "82664";

1;
__END__
