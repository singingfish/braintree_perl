package WebService::Braintree::ErrorCodes::Dispute;

use 5.010_001;
use strictures 1;

use constant CanOnlyAddEvidenceToOpenDispute      => '95701';
use constant CanOnlyRemoveEvidenceFromOpenDispute => '95702';
use constant CanOnlyAddEvidenceDocumentToDispute  => '95703';
use constant CanOnlyAcceptOpenDispute             => '95704';
use constant CanOnlyFinalizeOpenDispute           => '95705';

1;
__END__
