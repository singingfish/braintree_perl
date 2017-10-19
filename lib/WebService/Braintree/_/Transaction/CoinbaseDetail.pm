# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::Transaction::CoinbaseDetail;

use 5.010_001;
use strictures 1;

use Moose;

extends 'WebService::Braintree::_';

has user_id => (
    is => 'ro',
);
has user_email => (
    is => 'ro',
);
has user_name => (
    is => 'ro',
);
has token => (
    is => 'ro',
);

__PACKAGE__->meta->make_immutable;

1;
__END__
