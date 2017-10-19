# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::SettlementBatchSummaryRecord;

use 5.010_001;
use strictures 1;

use Moose;

extends 'WebService::Braintree::_';

has amount_settled => (
    is => 'ro',
);
has card_type => (
    is => 'ro',
);
has count => (
    is => 'ro',
);
has kind => (
    is => 'ro',
);
has merchant_account_id => (
    is => 'ro',
);
has store_me => (
    is => 'ro',
);

__PACKAGE__->meta->make_immutable;

1;
__END__
