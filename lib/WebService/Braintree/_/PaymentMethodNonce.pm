# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::PaymentMethodNonce;

use 5.010_001;
use strictures 1;

use Moose;

extends 'WebService::Braintree::_';

use WebService::Braintree::_::BinData;
use WebService::Braintree::_::PaymentMethodNonceDetails;
use WebService::Braintree::_::ThreeDSecureInfo;

has bin_data => (
    is => 'ro',
    isa => 'WebService::Braintree::_::BinData',
    coerce => 1,
);
has consumed => (
    is => 'ro',
);
has default => (
    is => 'ro',
);
has description => (
    is => 'ro',
);
has details => (
    is => 'ro',
    isa => 'WebService::Braintree::_::PaymentMethodNonceDetails',
    coerce => 1,
);
has is_locked => (
    is => 'ro',
);
has nonce => (
    is => 'ro',
);
has security_questions => (
    is => 'ro',
);
has three_d_secure_info => (
    is => 'ro',
    isa => 'WebService::Braintree::_::ThreeDSecureInfo|Undef',
    coerce => 1,
);
has type => (
    is => 'ro',
);

__PACKAGE__->meta->make_immutable;

1;
__END__
