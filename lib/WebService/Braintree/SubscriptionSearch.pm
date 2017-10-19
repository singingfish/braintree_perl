# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::SubscriptionSearch;

use 5.010_001;
use strictures 1;

use Moose;
extends 'WebService::Braintree::AdvancedSearch';

use WebService::Braintree::Subscription::Status;

my $field = WebService::Braintree::AdvancedSearchFields->new(metaclass => __PACKAGE__->meta);

$field->text("id");
$field->text("transaction_id");
$field->text("plan_id");

$field->multiple_values("in_trial_period");
$field->multiple_values("status", WebService::Braintree::Subscription::Status::All);
$field->multiple_values("merchant_account_id");
$field->multiple_values("ids");

$field->range("price");
$field->range("days_past_due");
$field->range("billing_cycles_remaining");
$field->range("next_billing_date");

__PACKAGE__->meta->make_immutable;

1;
__END__
