# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::DocumentUpload;

use 5.010_001;
use strictures 1;

use Moose;

extends 'WebService::Braintree::_';

has content_type => (
    is => 'ro',
);
# Coerce to a DateTime (YYYY-MM-DD)
has expires_at => (
    is => 'ro',
);
has id => (
    is => 'ro',
);
has kind => (
    is => 'ro',
);
has name => (
    is => 'ro',
);
has size => (
    is => 'ro',
);

__PACKAGE__->meta->make_immutable;

1;
__END__
