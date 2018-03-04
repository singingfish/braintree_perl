# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::ErrorCodes::MerchantAccount::Individual;

use 5.010_001;
use strictures 1;

=head1 NAME

WebService::Braintree::ErrorCodes::MerchantAccount::Individual

=head1 PURPOSE

This class contains error codes that might be returned if an
individual record for a merchant account is incorrect in some way.

=cut

use constant FirstNameIsRequired    => "82637";
use constant LastNameIsRequired     => "82638";
use constant DateOfBirthIsRequired  => "82639";
use constant SsnIsInvalid           => "82642";
use constant EmailIsInvalid         => "82643";
use constant FirstNameIsInvalid     => "82644";
use constant LastNameIsInvalid      => "82645";
use constant PhoneIsInvalid         => "82656";
use constant DateOfBirthIsInvalid   => "82666";
use constant EmailIsRequired        => "82667";

1;
__END__
