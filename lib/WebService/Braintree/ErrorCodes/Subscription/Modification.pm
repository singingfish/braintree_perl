# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::ErrorCodes::Subscription::Modification;

use 5.010_001;
use strictures 1;

=head1 NAME

WebService::Braintree::ErrorCodes::Subscription::Modification

=head1 PURPOSE

This class contains error codes that might be returned if a modification
of a subscription is incorrect in some way.

=cut

use constant AmountCannotBeBlank                          => "92003";
use constant AmountIsInvalid                              => "92002";
use constant AmountIsTooLarge                             => "92023";
use constant CannotEditModificationsOnPastDueSubscription => "92022";
use constant CannotUpdateAndRemove                        => "92015";
use constant ExistingIdIsIncorrectKind                    => "92020";
use constant ExistingIdIsInvalid                          => "92011";
use constant ExistingIdIsRequired                         => "92012";
use constant IdToRemoveIsIncorrectKind                    => "92021";
use constant IdToRemoveIsInvalid                          => "92025";
use constant IdToRemoveIsNotPresent                       => "92016";
use constant InconsistentNumberOfBillingCycles            => "92018";
use constant InheritedFromIdIsInvalid                     => "92013";
use constant InheritedFromIdIsRequired                    => "92014";
use constant Missing                                      => "92024";
use constant NumberOfBillingCyclesCannotBeBlank           => "92017";
use constant NumberOfBillingCyclesIsInvalid               => "92005";
use constant NumberOfBillingCyclesMustBeGreaterThanZero   => "92019";
use constant QuantityCannotBeBlank                        => "92004";
use constant QuantityIsInvalid                            => "92001";
use constant QuantityMustBeGreaterThanZero                => "92010";

1;
__END__
