# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::IbanBankAccount;

use 5.010_001;
use strictures 1;

use Moose;

extends 'WebService::Braintree::_';

has account_holder_name => (
    is => 'ro',
);
has bic => (
    is => 'ro',
);
has description => (
    is => 'ro',
);
has iban_account_number_last_4 => (
    is => 'ro',
);
has iban_country => (
    is => 'ro',
);
has masked_iban => (
    is => 'ro',
);

__PACKAGE__->meta->make_immutable;

1;
__END__
