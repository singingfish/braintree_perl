# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::ErrorCodes::Transaction::Options;

use 5.010_001;
use strictures 1;

=head1 NAME

WebService::Braintree::ErrorCodes::Transaction::Options

=head1 PURPOSE

This class contains error codes that might be returned if a transaction's
options are incorrect in some way.

=cut

use constant SubmitForSettlementIsRequiredForCloning => "91544";
use constant VaultIsDisabled                         => "91525";

1;
__END__
