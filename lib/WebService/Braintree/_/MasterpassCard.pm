# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::MasterpassCard;

use 5.010_001;
use strictures 1;

use Moose;

extends 'WebService::Braintree::_';

has billing_address => (
    is => 'ro',
    isa => 'WebService::Braintree::_::Address',
    coerce => 1,
);
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
has created_at => (
    is => 'ro',
);
has customer_id => (
    is => 'ro',
);
has customer_location => (
    is => 'ro',
);
has debit => (
    is => 'ro',
);
has default => (
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
has subscriptions => (
    is => 'ro',
    isa => 'ArrayRefOfSubscription',
    coerce => 1,
);
has token => (
    is => 'ro',
);
has unique_number_identifier => (
    is => 'ro',
);
has updated_at => (
    is => 'ro',
);
has verifications => (
    is => 'ro',
    isa => 'ArrayRefOfCreditCardVerification',
    coerce => 1,
);

sub verification {
    my $self = shift;

    return (
        sort {
            $b->created_at cmp $a->created_at
        } @{$self->verifications // []}
    )[0];
}

sub is_default {
    return shift->default;
}

sub is_expired {
    return shift->expired;
}

sub expiration_date {
    my $self = shift;
    return join('/', $self->expiration_month, $self->expiration_year);
}

__PACKAGE__->meta->make_immutable;

1;
__END__
