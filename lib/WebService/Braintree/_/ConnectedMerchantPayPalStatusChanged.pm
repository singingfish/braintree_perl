# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::ConnectedMerchantPayPalStatusChanged;

use 5.010_001;
use strictures 1;

use Moose;
use MooseX::Aliases;

extends 'WebService::Braintree::_';

has action => (
    is => 'ro',
);
has merchant_public_id => (
    is => 'ro',
);
has oauth_application_client_id => (
    is => 'ro',
);

__PACKAGE__->meta->make_immutable;

1;
__END__
