# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::Transaction::DisbursementDetail;

use 5.010_001;
use strictures 1;

use Moose;

extends 'WebService::Braintree::_';

# Coerce this to "big_decimal"
has amount => (
    is => 'ro',
);
# Coerce this to DateTime
has disbursement_date => (
    is => 'ro',
);
has exception_message => (
    is => 'ro',
);
has follow_up_action => (
    is => 'ro',
);
has funds_held => (
    is => 'ro',
);
has id => (
    is => 'ro',
);
has merchant_account => (
    is => 'ro',
    isa => 'WebService::Braintree::_::MerchantAccount',
    coerce => 1,
);
has retry => (
    is => 'ro',
);
has settlement_amount => (
    is => 'ro',
);
has settlement_currency_exchange_rate => (
    is => 'ro',
);
has settlement_currency_iso_code => (
    is => 'ro',
);
has success => (
    is => 'ro',
);
has transaction_ids => (
    is => 'ro',
);

sub is_success {
    shift->success
}

sub is_valid {
    shift->disbursement_date ? 1 : 0
}

sub transactions {
    my $self = shift;
    return WebService::Braintree::Transaction->search(sub {
        my $search = shift;
        $search->ids->in($self->transaction_ids);
    });
}

__PACKAGE__->meta->make_immutable;

1;
__END__
