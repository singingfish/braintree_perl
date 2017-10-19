# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::Transaction::CustomerDetail;

use 5.010_001;
use strictures 1;

use Moose;

extends 'WebService::Braintree::_';

has company => (
    is => 'ro',
);
has email => (
    is => 'ro',
);
has fax => (
    is => 'ro',
);
has first_name => (
    is => 'ro',
);
has id => (
    is => 'ro',
);
has last_name => (
    is => 'ro',
);
has phone => (
    is => 'ro',
);
has website => (
    is => 'ro',
);

__PACKAGE__->meta->make_immutable;

1;
__END__
