# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::Plan;

use 5.010_001;
use strictures 1;

use Moose;

extends 'WebService::Braintree::_';

has add_ons => (
    is => 'ro',
    isa => 'ArrayRefOfAddOn',
    coerce => 1,
);
has billing_day_of_month => (
    is => 'ro',
);
has billing_frequency => (
    is => 'ro',
);
has created_at => (
    is => 'ro',
);
has currency_iso_code => (
    is => 'ro',
);
has description => (
    is => 'ro',
);
has discounts => (
    is => 'ro',
    isa => 'ArrayRefOfDiscount',
    coerce => 1,
);
has id => (
    is => 'ro',
);
has merchant_id => (
    is => 'ro',
);
has name => (
    is => 'ro',
);
has number_of_billing_cycles => (
    is => 'ro',
);
# Coerce this to "big_decimal"
has price => (
    is => 'ro',
);
has trial_duration => (
    is => 'ro',
);
has trial_duration_unit => (
    is => 'ro',
);
has trial_period => (
    is => 'ro',
);
has updated_at => (
    is => 'ro',
);

__PACKAGE__->meta->make_immutable;

1;
__END__
