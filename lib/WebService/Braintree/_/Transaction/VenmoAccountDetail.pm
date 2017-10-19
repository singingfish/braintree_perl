# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::Transaction::VenmoAccountDetail;

use 5.010_001;
use strictures 1;

use Moose;

extends 'WebService::Braintree::_';

has image_url => (
    is => 'ro',
);
has source_description => (
    is => 'ro',
);
has token => (
    is => 'ro',
);
has username => (
    is => 'ro',
);
has venmo_user_id => (
    is => 'ro',
);

__PACKAGE__->meta->make_immutable;

1;
__END__
