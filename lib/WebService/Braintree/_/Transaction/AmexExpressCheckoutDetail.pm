# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::Transaction::AmexExpressCheckoutDetail;

use 5.010_001;
use strictures 1;

use Moose;

extends 'WebService::Braintree::_';

has bin => (
    is => 'ro',
);
has card_member_expiry_date => (
    is => 'ro',
);
has card_member_number => (
    is => 'ro',
);
has card_type => (
    is => 'ro',
);
has expiration_month => (
    is => 'ro',
);
has expiration_year => (
    is => 'ro',
);
has image_url => (
    is => 'ro',
);
has source_description => (
    is => 'ro',
);
has token => (
    is => 'ro',
);

__PACKAGE__->meta->make_immutable;

1;
__END__
