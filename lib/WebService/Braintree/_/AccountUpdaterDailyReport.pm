# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::_::AccountUpdaterDailyReport;

use 5.010_001;
use strictures 1;

use Moose;
use MooseX::Aliases;

extends 'WebService::Braintree::_';

# Coerce to DateTime
has report_date => (
    is => 'ro',
);
has report_url => (
    is => 'ro',
);

__PACKAGE__->meta->make_immutable;

1;
__END__
