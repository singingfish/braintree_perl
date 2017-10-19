# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::SettlementBatchSummary;

use 5.010_001;
use strictures 1;

use Moose;

extends 'WebService::Braintree::_';

use WebService::Braintree::_::SettlementBatchSummaryRecord;

has records => (
    is => 'ro',
    isa => 'ArrayRefOfSettlementBatchSummaryRecord',
    coerce => 1,
);

__PACKAGE__->meta->make_immutable;

1;
__END__
