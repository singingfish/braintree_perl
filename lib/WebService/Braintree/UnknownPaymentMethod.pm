package WebService::Braintree::UnknownPaymentMethod;
use Moo;
extends 'WebService::Braintree::PaymentMethod';

sub BUILD {
  my ($self, $attributes) = @_;
  $self->set_attributes_from_hash($self, $attributes);
}

1;
