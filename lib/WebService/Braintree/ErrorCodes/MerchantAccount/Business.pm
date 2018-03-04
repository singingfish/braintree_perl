# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::ErrorCodes::MerchantAccount::Business;

use 5.010_001;
use strictures 1;

=head1 NAME

WebService::Braintree::ErrorCodes::MerchantAccount::Business

=head1 PURPOSE

This class contains error codes that might be returned if a business record
for a merchant account is incorrect in some way.

=cut

use constant DbaNameIsInvalid             => "82646";
use constant TaxIdIsInvalid               => "82647";
use constant TaxIdIsRequiredWithLegalName => "82648";
use constant LegalNameIsRequiredWithTaxId => "82669";
use constant TaxIdMustBeBlank             => "82672";
use constant LegalNameIsInvalid           => "82677";

1;
__END__
