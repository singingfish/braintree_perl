# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::WebhookNotification;

use 5.010_001;
use strictures 1;

use Moose;
use MooseX::Aliases;

extends 'WebService::Braintree::_';

use Hash::Inflator;

use WebService::Braintree::ErrorResult;
use WebService::Braintree::_::AccountUpdaterDailyReport;
use WebService::Braintree::_::ConnectedMerchantPayPalStatusChanged;
use WebService::Braintree::_::ConnectedMerchantStatusTransitioned;
use WebService::Braintree::_::Disbursement;
use WebService::Braintree::_::Dispute;
use WebService::Braintree::_::GrantedPaymentInstrumentUpdate;
use WebService::Braintree::_::IdealPayment;
use WebService::Braintree::_::MerchantAccount;
use WebService::Braintree::_::Subscription;
use WebService::Braintree::_::Transaction;

has account_updater_daily_report => (
    is => 'rw',
);
has api_error_response => (
    is => 'rw',
    isa => 'WebService::Braintree::ErrorResult',
    coerce => 1,
    alias => 'error_result',
);
has connected_merchant_paypal_status_changed => (
    is => 'rw',
    isa => 'WebService::Braintree::_::ConnectedMerchantPayPalStatusChanged',
    coerce => 1,
);
has connected_merchant_status_transitioned => (
    is => 'rw',
    isa => 'WebService::Braintree::_::ConnectedMerchantStatusTransitioned',
    coerce => 1,
);
has disbursement => (
    is => 'rw',
    isa => 'WebService::Braintree::_::Disbursement',
    coerce => 1,
);
has dispute => (
    is => 'rw',
    isa => 'WebService::Braintree::_::Dispute',
    coerce => 1,
);
has granted_payment_instrument_update => (
    is => 'rw',
    isa => 'WebService::Braintree::_::GrantedPaymentInstrumentUpdate',
    coerce => 1,
);
has ideal_payment => (
    is => 'rw',
    isa => 'WebService::Braintree::_::IdealPayment',
    coerce => 1,
);
has kind => (
    is => 'rw',
);
has merchant_account => (
    is => 'rw',
    isa => 'WebService::Braintree::_::MerchantAccount',
    coerce => 1,
);
has partner_merchant => (
    is => 'rw',
    isa => 'Hash::Inflator',
    coerce => 1,
);
has subscription => (
    is => 'rw',
    isa => 'WebService::Braintree::_::Subscription',
    coerce => 1,
);
has subject => (
    is => 'rw',
);
has timestamp => (
    is => 'rw',
);
has transaction => (
    is => 'rw',
    isa => 'WebService::Braintree::_::Transaction',
    coerce => 1,
);

# WebhookNotification receives a single parameter called 'subject'.
# Everything we care about is on that. So, let the parent's BUILD set
# the subject(), then we assign the rest of the attributes from there.
#
# Note: This means the attributes need to be rw instead of ro.
sub BUILD {
    my $self = shift;

    my $wrapper = $self->subject;
    if (exists $wrapper->{api_error_response}) {
        $self->api_error_response($wrapper->{api_error_response});
        $wrapper = $wrapper->{api_error_response};
    }

    my $meta = $self->meta;
    foreach my $attr ($meta->get_all_attributes) {
        my $name = $attr->name;
        next unless exists $wrapper->{$name};

        $self->$name($wrapper->{$name});
    }
}

# TODO: Delegate merchant_account() to error_result() if it's set.

sub errors {
    my $self = shift;
    return $self->error_result->errors if $self->error_result;
    return;
}

sub message {
    my $self = shift;
    return $self->error_result->message if $self->error_result;
    return;
}

sub is_check {
    my $self = shift;
    return !!$self->subject->check;
}

__PACKAGE__->meta->make_immutable;

1;
__END__
