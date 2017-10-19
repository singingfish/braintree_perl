# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::PayPalAccount;

use 5.010_001;
use strictures 1;

use Moose;
use MooseX::Aliases;

extends 'WebService::Braintree::_';

has billing_agreement_id => (
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
    alias => 'is_default',
);
has email => (
    is => 'ro',
);
has image_url => (
    is => 'ro',
);
has is_channel_initiated => (
    is => 'ro',
);
has limited_use_order_id => (
    is => 'ro',
);
has payer_info => (
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

__PACKAGE__->meta->make_immutable;

1;
__END__
