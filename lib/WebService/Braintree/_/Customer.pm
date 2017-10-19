# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::Customer;

use 5.010_001;
use strictures 1;

use Moose;

extends 'WebService::Braintree::_';

use WebService::Braintree::_::Address;
use WebService::Braintree::_::AmexExpressCheckoutCard;
use WebService::Braintree::_::AndroidPayCard;
use WebService::Braintree::_::ApplePayCard;
use WebService::Braintree::_::CoinbaseAccount;
use WebService::Braintree::_::CreditCard;
use WebService::Braintree::_::EuropeBankAccount;
use WebService::Braintree::_::MasterpassCard;
use WebService::Braintree::_::PayPalAccount;
use WebService::Braintree::_::UsBankAccount;
use WebService::Braintree::_::VenmoAccount;
use WebService::Braintree::_::VisaCheckoutCard;

has addresses => (
    is => 'ro',
    isa => 'ArrayRefOfAddress',
    coerce => 1,
);
has amex_express_checkout_cards => (
    is => 'ro',
    isa => 'ArrayRefOfAmexExpressCheckoutCard',
    coerce => 1,
);
has android_pay_cards => (
    is => 'ro',
    isa => 'ArrayRefOfAndroidPayCard',
    coerce => 1,
);
has apple_pay_cards => (
    is => 'ro',
    isa => 'ArrayRefOfApplePayCard',
    coerce => 1,
);
has coinbase_accounts => (
    is => 'ro',
    isa => 'ArrayRefOfCoinbaseAccount',
    coerce => 1,
);
has company => (
    is => 'ro',
);
has created_at => (
    is => 'ro',
);
has credit_cards => (
    is => 'ro',
    isa => 'ArrayRefOfCreditCard',
    coerce => 1,
);
has custom_fields => (
    is => 'ro',
    default => sub { {} },
);
has email => (
    is => 'ro',
);
has europe_bank_accounts => (
    is => 'ro',
    isa => 'ArrayRefOfEuropeBankAccount',
    coerce => 1,
);
has fax => (
    is => 'ro',
);
has first_name => (
    is => 'ro',
);
has id => (
    is => 'ro',
);
has last_name => (
    is => 'ro',
);
has masterpass_cards => (
    is => 'ro',
    isa => 'ArrayRefOfMasterpassCard',
    coerce => 1,
);
has merchant_id => (
    is => 'ro',
);
has paypal_accounts => (
    is => 'ro',
    isa => 'ArrayRefOfPayPalAccount',
    coerce => 1,
);
has phone => (
    is => 'ro',
);
has updated_at => (
    is => 'ro',
);
has us_bank_accounts => (
    is => 'ro',
    isa => 'ArrayRefOfUsBankAccount',
    coerce => 1,
);
has venmo_accounts => (
    is => 'ro',
    isa => 'ArrayRefOfVenmoAccount',
    coerce => 1,
);
has visa_checkout_cards => (
    is => 'ro',
    isa => 'ArrayRefOfVisaCheckoutCard',
    coerce => 1,
);
has website => (
    is => 'ro',
);

=head1 OBJECT METHODS

In addition to the methods provided by the keys returned from Braintree, this
class provides the following methods:

=head2 payment_types()

This returns a list of all the payment types supported by this class.

=cut

sub payment_types {
    return qw(credit_cards paypal_accounts);
}

=head2 payment_methods()

This returns an arrayref of all available payment methods across all types.

=cut

sub payment_methods {
    my $self = shift;

    my @methods = map {
        @{$self->$_ // []}
    } $self->payment_types;

    return \@methods;
}

__PACKAGE__->meta->make_immutable;

1;
__END__
