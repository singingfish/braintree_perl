# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::BinData;

use 5.010_001;
use strictures 1;

use Moose;

extends 'WebService::Braintree::_';

has commercial => (
    is => 'ro',
);
has country_of_issuance => (
    is => 'ro',
);
has debit => (
    is => 'ro',
);
has durbin_regulated => (
    is => 'ro',
);
has healthcare => (
    is => 'ro',
);
has issuing_bank => (
    is => 'ro',
);
has payroll => (
    is => 'ro',
);
has prepaid => (
    is => 'ro',
);
has product_id => (
    is => 'ro',
);

__PACKAGE__->meta->make_immutable;

1;
__END__
