# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::ErrorCodes::Dispute;

use 5.010_001;
use strictures 1;

=head1 NAME

WebService::Braintree::ErrorCodes::Dispute

=head1 PURPOSE

This class contains error codes that might be returned if a dispute is
incorrect in some way.

=cut

use constant CanOnlyAddEvidenceToOpenDispute      => '95701';
use constant CanOnlyRemoveEvidenceFromOpenDispute => '95702';
use constant CanOnlyAddEvidenceDocumentToDispute  => '95703';
use constant CanOnlyAcceptOpenDispute             => '95704';
use constant CanOnlyFinalizeOpenDispute           => '95705';

1;
__END__
