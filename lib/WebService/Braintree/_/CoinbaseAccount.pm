# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::CoinbaseAccount;

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
has user_email => (
    is => 'ro',
);
has user_id => (
    is => 'ro',
);
has user_name => (
    is => 'ro',
);

sub is_default {
    return shift->default;
}

__PACKAGE__->meta->make_immutable;

1;
__END__
