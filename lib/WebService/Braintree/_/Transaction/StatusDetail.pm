# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::Transaction::StatusDetail;

use 5.010_001;
use strictures 1;

use Moose;
use MooseX::Aliases;

extends 'WebService::Braintree::_';

has amount => (
    is => 'ro',
);
has status => (
    is => 'ro',
);
has timestamp => (
    is => 'ro',
);
has transaction_source => (
    is => 'ro',
);
has user => (
    is => 'ro',
);

__PACKAGE__->meta->make_immutable;

1;
__END__
