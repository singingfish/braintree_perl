# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::Transaction::EscrowStatus;

use 5.010_001;
use strictures 1;

use constant HoldPending => 'hold_pending';
use constant Held => 'held';
use constant ReleasePending => 'release_pending';
use constant Released => 'released';
use constant Refunded => 'refunded';

use constant All => (
    HoldPending,
    Held,
    ReleasePending,
    Released,
    Refunded
);

1;
__END__
