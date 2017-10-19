# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::EuropeBankAccount;

use 5.010_001;
use strictures 1;

use Moose;

extends 'WebService::Braintree::_';

has customer_id => (
    is => 'ro',
);
has default => (
    is => 'ro',
);
has image_url => (
    is => 'ro',
);
has token => (
    is => 'ro',
);

sub is_default {
    return shift->default;
}

__PACKAGE__->meta->make_immutable;

1;
__END__
