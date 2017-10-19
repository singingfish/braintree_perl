# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::Transaction::AddressDetail;

use 5.010_001;
use strictures 1;

use Moose;

extends 'WebService::Braintree::_';

has company => (
    is => 'ro',
);
has country_code_alpha2 => (
    is => 'ro',
);
has country_code_alpha3 => (
    is => 'ro',
);
has country_code_numeric => (
    is => 'ro',
);
has country_name => (
    is => 'ro',
);
has extended_address => (
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
has locality => (
    is => 'ro',
);
has postal_code => (
    is => 'ro',
);
has region => (
    is => 'ro',
);
has street_address => (
    is => 'ro',
);

__PACKAGE__->meta->make_immutable;

1;
__END__
