# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::ErrorCodes::SettlementBatchSummary;

use 5.010_001;
use strictures 1;

=head1 NAME

WebService::Braintree::ErrorCodes::SettlementBatchSummary

=head1 PURPOSE

This class contains error codes that might be returned if a settlement
batch summary is incorrect in some way.

=cut

use constant CustomFieldIsInvalid     => "82303";
use constant SettlementDateIsInvalid  => "82302";
use constant SettlementDateIsRequired => "82301";

1;
__END__
