# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::ErrorCodes::Descriptor;

use 5.010_001;
use strictures 1;

=head1 NAME

WebService::Braintree::ErrorCodes::Descriptor

=head1 PURPOSE

This class contains error codes that might be returned if a descriptor is
incorrect in some way.

=cut

use constant DynamicDescriptorsDisabled        => "92203";
use constant InternationalPhoneFormatIsInvalid => "92205";
use constant InternationalNameFormatIsInvalid  => "92204";
use constant NameFormatIsInvalid               => "92201";
use constant PhoneFormatIsInvalid              => "92202";
use constant UrlFormatIsInvalid                => "92206";

1;
__END__
