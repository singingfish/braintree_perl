# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::Transaction::FacilitatorDetail;

use 5.010_001;
use strictures 1;

use Moose;

extends 'WebService::Braintree::_';

has oauth_application_client_id => (
    is => 'ro',
);
has oauth_application_name => (
    is => 'ro',
);

__PACKAGE__->meta->make_immutable;

1;
__END__
