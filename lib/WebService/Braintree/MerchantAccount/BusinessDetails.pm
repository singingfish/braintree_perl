package WebService::Braintree::MerchantAccount::BusinessDetails;

use WebService::Braintree::MerchantAccount::AddressDetails;

use Moose;
extends "WebService::Braintree::ResultObject";


sub BUILD {
  my ($self, $attributes) = @_;
  my $meta = __PACKAGE__->meta;

  $meta->add_attribute('address_details', is => 'rw');
  $self->address_details(WebService::Braintree::MerchantAccount::AddressDetails->new($attributes->{address})) if ref($attributes->{address}) eq 'HASH';
  delete($attributes->{address});

  $self->set_attributes_from_hash($self, $attributes);
}

1;
