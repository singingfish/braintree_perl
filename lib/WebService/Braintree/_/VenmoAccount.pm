# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::VenmoAccount;

use 5.010_001;
use strictures 1;

use Moose;

extends 'WebService::Braintree::_';

has created_at => (
    is => 'ro',
);
has customer_id => (
    is => 'ro',
);
has default => (
    is => 'ro',
);
has image_url => (
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
has username => (
    is => 'ro',
);
has venmo_user_id => (
    is => 'ro',
);

sub is_default {
    return shift->default;
}

__PACKAGE__->meta->make_immutable;

1;
__END__
