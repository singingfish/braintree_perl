package WebService::Braintree::WebhookNotification;

use WebService::Braintree::WebhookNotification::Kind;
use Moose;

extends 'WebService::Braintree::ResultObject';

sub BUILD {
    my ($self, $attributes) = @_;
    my $meta = __PACKAGE__->meta;

    my $wrapper_node = $attributes->{subject};

    if (ref($wrapper_node->{api_error_response}) eq 'HASH') {
        $wrapper_node = $wrapper_node->{api_error_response};
    }

    if (ref($wrapper_node->{subscription}) eq 'HASH') {
        $meta->add_attribute('subscription', is => 'rw');
        $self->subscription(WebService::Braintree::Subscription->new($wrapper_node->{subscription}));
    }

    if (ref($wrapper_node->{merchant_account}) eq 'HASH') {
        $meta->add_attribute('merchant_account', is => 'rw');
        $self->merchant_account(WebService::Braintree::MerchantAccount->new($wrapper_node->{merchant_account}));
    }

    if (ref($wrapper_node->{disbursement}) eq 'HASH') {
        $meta->add_attribute('disbursement', is => 'rw');
        $self->disbursement(WebService::Braintree::Disbursement->new($wrapper_node->{disbursement}));
    }

    if (ref($wrapper_node->{transaction}) eq 'HASH') {
        $meta->add_attribute('transaction', is => 'rw');
        $self->transaction(WebService::Braintree::Transaction->new($wrapper_node->{transaction}));
    }

    if (ref($wrapper_node->{partner_merchant}) eq 'HASH') {
        $meta->add_attribute('partner_merchant', is => 'rw');
        $self->partner_merchant(WebService::Braintree::PartnerMerchant->new($wrapper_node->{partner_merchant}));
    }

    if (ref($wrapper_node->{dispute}) eq 'HASH') {
        $meta->add_attribute('dispute', is => 'rw');
        $self->dispute(WebService::Braintree::Dispute->new($wrapper_node->{dispute}));
    }

    if (ref($wrapper_node->{errors}) eq 'HASH') {
        $meta->add_attribute('errors', is => 'rw');
        $meta->add_attribute('message', is => 'rw');
        $self->errors(WebService::Braintree::ValidationErrorCollection->new($wrapper_node->{errors}));
        $self->message($wrapper_node->{message});
    }

    delete($attributes->{subject});
    $self->set_attributes_from_hash($self, $attributes);
}

sub parse {
    my ($class, $signature, $payload) = @_;
    $class->gateway->webhook_notification->parse($signature, $payload);
}

sub verify {
    my ($class, $params) = @_;
    $class->gateway->webhook_notification->verify($params);
}

sub gateway {
    return WebService::Braintree->configuration->gateway;
}

1;
