# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::GrantedPaymentInstrumentUpdate;

use 5.010_001;
use strictures 1;

use Moose;
use MooseX::Aliases;

extends 'WebService::Braintree::_';

has grant_owner_merchant_id => (
    is => 'ro',
);
has grant_recipient_merchant_id => (
    is => 'ro',
);
has payment_method_nonce => (
    is => 'ro',
);
has token => (
    is => 'ro',
);
has updated_fields => (
    is => 'ro',
);

sub BUILD {
    my $self = shift;

    # This is in the Ruby SDK. I'm not sure why we want to do this.
    $self->payment_method_nonce(
        $self->payment_method_nonce->{nonce},
    );
}

__PACKAGE__->meta->make_immutable;

1;
__END__
