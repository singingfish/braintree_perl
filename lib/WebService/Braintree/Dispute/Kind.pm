# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::Dispute::Kind;

use 5.010_001;
use strictures 1;

use constant Chargeback => 'chargeback';
use constant PreArbitration => 'pre_arbitration';
use constant Retrieval => 'retrieval';

1;
__END__
