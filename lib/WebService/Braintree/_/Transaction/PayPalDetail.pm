# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::Transaction::PayPalDetail;

use 5.010_001;
use strictures 1;

use Moose;

extends 'WebService::Braintree::_';

has authorization_id => (
    is => 'ro',
);
has capture_id => (
    is => 'ro',
);
has custom_field => (
    is => 'ro',
);
has debug_id => (
    is => 'ro',
);
has description => (
    is => 'ro',
);
has image_url => (
    is => 'ro',
);
has payee_email => (
    is => 'ro',
);
has payer_email => (
    is => 'ro',
);
has payer_first_name => (
    is => 'ro',
);
has payer_id => (
    is => 'ro',
);
has payer_last_name => (
    is => 'ro',
);
has payer_status => (
    is => 'ro',
);
has payment_id => (
    is => 'ro',
);
has refund_id => (
    is => 'ro',
);
has seller_protection_status => (
    is => 'ro',
);
has token => (
    is => 'ro',
);
has transaction_fee_amount => (
    is => 'ro',
);
has transaction_fee_currency_iso_code => (
    is => 'ro',
);

__PACKAGE__->meta->make_immutable;

1;
__END__
