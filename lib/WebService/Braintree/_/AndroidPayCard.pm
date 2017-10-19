# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::AndroidPayCard;

use 5.010_001;
use strictures 1;

use Moose;

extends 'WebService::Braintree::_';

has bin => (
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
has google_transaction_id => (
    is => 'ro',
);
has image_url => (
    is => 'ro',
);
has source_card_type => (
    is => 'ro',
);
has source_card_last4 => (
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
has virtual_card_type => (
    is => 'ro',
);
has virtual_card_last4 => (
    is => 'ro',
);

sub is_default {
    return shift->default;
}

__PACKAGE__->meta->make_immutable;

1;
__END__
