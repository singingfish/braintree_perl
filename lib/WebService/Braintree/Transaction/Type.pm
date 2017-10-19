# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::Transaction::Type;

use 5.010_001;
use strictures 1;

use constant Sale => "sale";
use constant Credit => "credit";

use constant All => [Sale, Credit];

1;
__END__
