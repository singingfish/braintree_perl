# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::Dispute::Evidence;

use 5.010_001;
use strictures 1;

use Moose;

extends 'WebService::Braintree::_';

has category => (
    is => 'ro',
);
has comment => (
    is => 'ro',
);
has created_at => (
    is => 'ro',
);
has id => (
    is => 'ro',
);
# Coerce this to DateTime
has sent_to_processor_at => (
    is => 'ro',
);
has sequence_number => (
    is => 'ro',
);
has url => (
    is => 'ro',
);

sub tag {
    my $self = shift;
    $self->category(@_);
}

__PACKAGE__->meta->make_immutable;

1;
__END__
