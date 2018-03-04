# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::ErrorCodes::Customer;

use 5.010_001;
use strictures 1;

=head1 NAME

WebService::Braintree::ErrorCodes::Customer

=head1 PURPOSE

This class contains error codes that might be returned if a customer is
incorrect in some way.

=cut

use constant CompanyIsTooLong       => "81601";
use constant CustomFieldIsInvalid   => "91602";
use constant CustomFieldIsTooLong   => "81603";
use constant EmailIsInvalid         => "81604";
use constant EmailFormatIsInvalid   => "81604";
use constant EmailIsRequired        => "81606";
use constant EmailIsTooLong         => "81605";
use constant FaxIsTooLong           => "81607";
use constant FirstNameIsTooLong     => "81608";
use constant IdIsInUse              => "91609";
use constant IdIsInvalid            => "91610";
use constant IdIsNotAllowed         => "91611";
use constant IdIsRequired           => "91613";
use constant IdIsTooLong            => "91612";
use constant LastNameIsTooLong      => "81613";
use constant PhoneIsTooLong         => "81614";
use constant WebsiteIsInvalid       => "81616";
use constant WebsiteFormatIsInvalid => "81616";
use constant WebsiteIsTooLong       => "81615";

1;
__END__
