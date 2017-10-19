# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::PaginatedResult;

use 5.010_001;
use strictures 1;

use Moose;

has 'total_items' => (is => 'rw');
has 'page_size' => (is => 'rw');
has 'current_page' => (is => 'rw');

__PACKAGE__->meta->make_immutable;

1;
__END__
