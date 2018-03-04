# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::ErrorCodes::MerchantAccount::Individual::Address;

use 5.010_001;
use strictures 1;

=head1 NAME

WebService::Braintree::ErrorCodes::MerchantAccount::Individual::Address

=head1 PURPOSE

This class contains error codes that might be returned if the address for an
individual record for a merchant account is incorrect in some way.

=cut

use constant StreetAddressIsRequired => "82657";
use constant LocalityIsRequired      => "82658";
use constant PostalCodeIsRequired    => "82659";
use constant RegionIsRequired        => "82660";
use constant StreetAddressIsInvalid  => "82661";
use constant PostalCodeIsInvalid     => "82662";
use constant RegionIsInvalid         => "82668";

1;
__END__
