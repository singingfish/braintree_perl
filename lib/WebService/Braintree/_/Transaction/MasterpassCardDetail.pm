# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::Transaction::MasterpassCardDetail;

use 5.010_001;
use strictures 1;

use Moose;

extends 'WebService::Braintree::_';

=head1 ATTRIBUTES

=cut

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

=head1 OBJECT METHODS

In addition to the methods provided by the keys returned from Braintree, this
class provides the following methods:

=head2 expiration_date()

This returns the expiration date in MM/YYYY format.

=cut

sub expiration_date {
    my $self = shift;
    $self->expiration_month . '/' . $self->expiration_year;
}

=head2 masked_number()

This returns the card number with the center masked out.

=cut

sub masked_number {
    my $self = shift;
    $self->bin . '******' . $self->last_4;
}

__PACKAGE__->meta->make_immutable;

1;
__END__
