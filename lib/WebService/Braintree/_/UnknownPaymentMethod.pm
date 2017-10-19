# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::UnknownPaymentMethod;

use 5.010_001;
use strictures 1;

use Moose;

extends 'WebService::Braintree::_';

has customer_id => (
    is => 'ro',
);
has default => (
    is => 'ro',
);
has token => (
    is => 'ro',
);

# There is some code in the Ruby SDK that walks nested attributes.
# It's unclear if that code is needed here.
#     nested_attributes = attributes[attributes.keys.first]
#     set_instance_variables_from_hash(nested_attributes)

sub is_default {
    return shift->default;
}

sub image_url {
    "https://assets.braintreegateway.com/payment_method_logo/unknown.png";
}

__PACKAGE__->meta->make_immutable;

1;
__END__
