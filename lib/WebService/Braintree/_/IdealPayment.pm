# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::IdealPayment;

use 5.010_001;
use strictures 1;

use Moose;

extends 'WebService::Braintree::_';

use WebService::Braintree::_::IbanBankAccount;

has amount => (
    is => 'ro',
);
has approval_url => (
    is => 'ro',
);
has currency => (
    is => 'ro',
);
has iban_bank_account => (
    is => 'ro',
    isa => 'WebService::Braintree::_::IbanBankAccount',
    coerce => 1,
);
has id => (
    is => 'ro',
);
has ideal_transaction_id => (
    is => 'ro',
);
has issuer => (
    is => 'ro',
);
has order_id => (
    is => 'ro',
);
has status => (
    is => 'ro',
);

__PACKAGE__->meta->make_immutable;

1;
__END__
