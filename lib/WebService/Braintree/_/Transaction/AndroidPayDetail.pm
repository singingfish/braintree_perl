# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::Transaction::AndroidPayDetail;

use 5.010_001;
use strictures 1;

use Moose;

extends 'WebService::Braintree::_';

has card_type => (
    is => 'ro',
);
has expiration_month => (
    is => 'ro',
);
has expiration_year => (
    is => 'ro',
);
has google_transaction_id => (
    is => 'ro',
);
has last_4 => (
    is => 'ro',
);
has source_card_last_4 => (
    is => 'ro',
);
has source_card_type => (
    is => 'ro',
);
has source_description => (
    is => 'ro',
);
has virtual_card_last_4 => (
    is => 'ro',
);
has virtual_card_type => (
    is => 'ro',
);

sub BUILD {
    my $self = shift;

    # Initialize these attributes to their counterparts.
    # Should this be an alias instead?
    $self->last_4($self->virtual_last_4);
    $self->card_type($self->virtual_card_type);
}

__PACKAGE__->meta->make_immutable;

1;
__END__
