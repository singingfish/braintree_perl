# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::Dispute::HistoryEvent;

use 5.010_001;
use strictures 1;

use Moose;

extends 'WebService::Braintree::_';

has status => (
    is => 'ro',
);
has timestamp => (
    is => 'ro',
);

__PACKAGE__->meta->make_immutable;

1;
__END__
