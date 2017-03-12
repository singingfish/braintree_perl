package WebService::Braintree::Disbursement;

use Moose;
extends "WebService::Braintree::ResultObject";
my $meta = __PACKAGE__->meta;

sub BUILD {
    my ($self, $attributes) = @_;
    $meta->add_attribute('merchant_account', is => 'rw');
    $self->merchant_account(WebService::Braintree::MerchantAccount->new($attributes->{merchant_account}));
    delete($attributes->{merchant_account});
    $self->set_attributes_from_hash($self, $attributes);
}

sub transactions {
    my $self = shift;
    WebService::Braintree::Transaction->search(sub {
                                                   my $search = shift;
                                                   $search->ids->in($self->transaction_ids);
                                               });
}

1;
