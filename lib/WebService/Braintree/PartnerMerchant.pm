package WebService::Braintree::PartnerMerchant;
use Moo;
extends 'WebService::Braintree::ResultObject';

sub BUILD {
  my ($self, $attributes) = @_;
  $self->set_attributes_from_hash($self, $attributes);
}

1;
