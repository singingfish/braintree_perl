# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::ThreeDSecureInfo;

use 5.010_001;
use strictures 1;

use Moose;
use MooseX::Aliases;

extends 'WebService::Braintree::_';

has enrolled => (
    is => 'ro',
);
has liability_shifted => (
    is => 'ro',
    alias => 'is_liability_shifted',
);
has liability_shift_possible => (
    is => 'ro',
    alias => 'is_liability_shift_possible',
);
has status => (
    is => 'ro',
);

__PACKAGE__->meta->make_immutable;

1;
__END__
