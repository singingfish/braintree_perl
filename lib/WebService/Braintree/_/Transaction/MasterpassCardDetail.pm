# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::Transaction::MasterpassCardDetail;

use 5.010_001;
use strictures 1;

use Moose;

extends 'WebService::Braintree::_';

has bin => (
    is => 'ro',
);
has card_type => (
    is => 'ro',
);
has cardholder_name => (
    is => 'ro',
);
has commercial => (
    is => 'ro',
);
has country_of_issuance => (
    is => 'ro',
);
has customer_location => (
    is => 'ro',
);
has debit => (
    is => 'ro',
);
has durbin_regulated => (
    is => 'ro',
);
has expiration_month => (
    is => 'ro',
);
has expiration_year => (
    is => 'ro',
);
has healthcare => (
    is => 'ro',
);
has image_url => (
    is => 'ro',
);
has issuing_bank => (
    is => 'ro',
);
has last_4 => (
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
has token => (
    is => 'ro',
);

sub expiration_date {
    my $self = shift;
    $self->expiration_month . '/' . $self->expiration_year;
}

sub masked_number {
    my $self = shift;
    $self->bin . '******' . $self->last_4;
}

__PACKAGE__->meta->make_immutable;

1;
__END__
