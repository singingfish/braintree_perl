# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::Dispute;

use 5.010_001;
use strictures 1;

use Moose;

extends 'WebService::Braintree::_';

use WebService::Braintree::_::Dispute::Evidence;
use WebService::Braintree::_::Dispute::HistoryEvent;
use WebService::Braintree::_::Dispute::Transaction;
use WebService::Braintree::_::Dispute::TransactionDetails;

# Coerce this to "big_decimal"
has amount => (
    is => 'ro',
);
# Coerce this to "big_decimal"
has amount_disputed => (
    is => 'ro',
);
# Coerce this to "big_decimal"
has amount_won => (
    is => 'ro',
);
has case_number => (
    is => 'ro',
);
has created_at => (
    is => 'ro',
);
has currency_iso_code => (
    is => 'ro',
);
# Coerce this to DateTime
has date_opened => (
    is => 'ro',
);
# Coerce this to DateTime
has date_won => (
    is => 'ro',
);
has evidence => (
    is => 'ro',
    isa => 'ArrayRefOfDisputeEvidence',
    coerce => 1,
);
has forwarded_comments => (
    is => 'ro',
);
has id => (
    is => 'ro',
);
has kind => (
    is => 'ro',
);
has merchant_account_id => (
    is => 'ro',
);
has original_dispute_id => (
    is => 'ro',
);
has processor_comments => (
    is => 'ro',
);
has reason => (
    is => 'ro',
);
has reason_code => (
    is => 'ro',
);
has reason_description => (
    is => 'ro',
);
# Coerce this to DateTime
has received_date => (
    is => 'ro',
);
has reference_number => (
    is => 'ro',
);
# Coerce this to DateTime
has reply_by_date => (
    is => 'ro',
);
has status => (
    is => 'ro',
);
has status_history => (
    is => 'ro',
    isa => 'ArrayRefOfDisputeHistoryEvent',
    coerce => 1,
);
has transaction => (
    is => 'ro',
    isa => 'WebService::Braintree::_::Dispute::Transaction',
    coerce => 1,
);
has transaction_details => (
    is => 'ro',
    isa => 'WebService::Braintree::_::Dispute::TransactionDetails',
    coerce => 1,
);
has updated_at => (
    is => 'ro',
);

__PACKAGE__->meta->make_immutable;

1;
__END__
