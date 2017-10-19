# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::ApplePayCard;

use 5.010_001;
use strictures 1;

use Moose;

extends 'WebService::Braintree::_';

use WebService::Braintree::ApplePayCard::CardType;

has bin => (
    is => 'ro',
);
has card_type => (
    is => 'ro',
);
has created_at => (
    is => 'ro',
);
has customer_id => (
    is => 'ro',
);
has default => (
    is => 'ro',
);
has expiration_month => (
    is => 'ro',
);
has expiration_year => (
    is => 'ro',
);
has expired => (
    is => 'ro',
);
has image_url => (
    is => 'ro',
);
has last_4 => (
    is => 'ro',
);
has payment_instrument_name => (
    is => 'ro',
);
has source_description => (
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
has updated_at => (
    is => 'ro',
);

sub is_default {
    return shift->default;
}

sub is_expired {
    return shift->expired;
}

sub expiration_date {
    my $self = shift;
    return $self->expiration_month . "/" . $self->expiration_year;
}

__PACKAGE__->meta->make_immutable;

1;
__END__
