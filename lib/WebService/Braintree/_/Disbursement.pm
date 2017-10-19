# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::Disbursement;

use 5.010_001;
use strictures 1;

use Moose;
use MooseX::Aliases;

extends 'WebService::Braintree::_';

use WebService::Braintree::_::MerchantAccount;

# Coerce to "big_decimal"
has amount => (
    is => 'ro',
);
# Coerce to DateTime
has disbursement_date => (
    is => 'ro',
);
has exception_message => (
    is => 'ro',
);
has follow_up_action => (
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
has success => (
    is => 'ro',
);
has transaction_ids => (
    is => 'ro',
);

sub transactions {
    my $self = shift;
    WebService::Braintree::Transaction->search(sub {
        my $search = shift;
        $search->ids->in($self->transaction_ids);
    });
}

__PACKAGE__->meta->make_immutable;

1;
__END__
