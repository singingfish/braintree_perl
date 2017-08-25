package WebService::Braintree::Nonce;

use Moose;
extends 'WebService::Braintree::ResultObject';

has  billing_address => (is => 'rw');

sub BUILD {
    my ($self, $attributes) = @_;
    $self->set_attributes_from_hash($self, $attributes);
}


__PACKAGE__->meta->make_immutable;
1;
