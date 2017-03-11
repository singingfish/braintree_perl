package WebService::Braintree::SettlementBatchSummary;
use Moose;
extends 'WebService::Braintree::ResultObject';

sub BUILD {
  my ($self, $attributes) = @_;
  $self->set_attributes_from_hash($self, $attributes);
}

sub generate {
  my($class, $settlement_date, $group_by_custom_field) = @_;
  $class->gateway->settlement_batch_summary->generate($settlement_date, $group_by_custom_field);
}

sub gateway {
  return WebService::Braintree->configuration->gateway;
}

__PACKAGE__->meta->make_immutable;
1;

