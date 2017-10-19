# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::UsBankAccount;

use 5.010_001;
use strictures 1;

use Moose;

extends 'WebService::Braintree::_';

use WebService::Braintree::_::AchMandate;

has ach_mandate => (
    is => 'ro',
    isa => 'WebService::Braintree::_::AchMandate',
    coerce => 1,
);
has account_type => (
    is => 'ro',
);
has ach_mandate => (
    is => 'ro',
);
has bank_name => (
    is => 'ro',
);
has default => (
    is => 'ro',
);
has image_url => (
    is => 'ro',
);
has last_4 => (
    is => 'ro',
);
has routing_number => (
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
