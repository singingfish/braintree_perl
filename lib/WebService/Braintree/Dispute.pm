package WebService::Braintree::Dispute;
use WebService::Braintree::Dispute::TransactionDetails;
use WebService::Braintree::Dispute::Status;
use WebService::Braintree::Dispute::Reason;

use Moose;
extends 'WebService::Braintree::ResultObject';

sub BUILD {
  my ($self, $attributes) = @_;
  my $meta = __PACKAGE__->meta;
  $meta->add_attribute('transaction_details', is => 'rw');
  $self->transaction_details(WebService::Braintree::Dispute::TransactionDetails->new($attributes->{transaction})) if ref($attributes->{transaction}) eq 'HASH';
  delete($attributes->{transaction});
  $self->set_attributes_from_hash($self, $attributes);
}

1;
