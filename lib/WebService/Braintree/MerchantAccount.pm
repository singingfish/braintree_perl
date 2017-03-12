package WebService::Braintree::MerchantAccount;

use WebService::Braintree::MerchantAccount::IndividualDetails;
use WebService::Braintree::MerchantAccount::AddressDetails;
use WebService::Braintree::MerchantAccount::BusinessDetails;
use WebService::Braintree::MerchantAccount::FundingDetails;

use Moose;
extends "WebService::Braintree::ResultObject";

{
  package WebService::Braintree::MerchantAccount::Status;

  use constant Active => "active";
  use constant Pending => "pending";
  use constant Suspended => "suspended";
}

{
  package WebService::Braintree::MerchantAccount::FundingDestination;

  use constant Bank => "bank";
  use constant Email => "email";
  use constant MobilePhone => "mobile_phone";
}

sub BUILD {
  my ($self, $attributes) = @_;
  my $meta = __PACKAGE__->meta;
  $meta->add_attribute('master_merchant_account', is => 'rw');
  $self->master_merchant_account(WebService::Braintree::MerchantAccount->new($attributes->{master_merchant_account})) if ref($attributes->{master_merchant_account}) eq 'HASH';
  delete($attributes->{master_merchant_account});

  $meta->add_attribute('individual_details', is => 'rw');
  $self->individual_details(WebService::Braintree::MerchantAccount::IndividualDetails->new($attributes->{individual})) if ref($attributes->{individual}) eq 'HASH';
  delete($attributes->{individual});

  $meta->add_attribute('business_details', is => 'rw');
  $self->business_details(WebService::Braintree::MerchantAccount::BusinessDetails->new($attributes->{business})) if ref($attributes->{business}) eq 'HASH';
  delete($attributes->{business});

  $meta->add_attribute('funding_details', is => 'rw');
  $self->funding_details(WebService::Braintree::MerchantAccount::FundingDetails->new($attributes->{funding})) if ref($attributes->{funding}) eq 'HASH';
  delete($attributes->{funding});

  $self->set_attributes_from_hash($self, $attributes);
}

sub create {
  my ($class, $params) = @_;
  $class->gateway->merchant_account->create($params);
}

sub update {
  my ($class, $merchant_account_id, $params) = @_;
  $class->gateway->merchant_account->update($merchant_account_id, $params);
}

sub find {
  my ($class, $merchant_account_id) = @_;
  $class->gateway->merchant_account->find($merchant_account_id);
}

sub gateway {
  return WebService::Braintree->configuration->gateway;
}

1;
