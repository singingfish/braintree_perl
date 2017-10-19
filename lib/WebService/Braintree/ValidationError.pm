# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::ValidationError;

=head1 NAME

WebService::Braintree::ValidationError

=head1 PURPOSE

This class represents an error, usually from a failed validation.

=cut

use Moose;

=head1 CLASS METHODS

This class is B<NOT> an interface, so it does B<NOT> have any class methods.

=head1 OBJECT METHODS

=head2 attribute()

This is the attribute which has the validation error.

=cut

has 'attribute' => (is => 'ro');

=head2 code()

This is the validation error code returned from Braintree.

=cut

has 'code' => (is => 'ro');

=head2 message()

This is the explanatory message provided by Braintree for this error.

=cut

has 'message' => (is => 'ro');

__PACKAGE__->meta->make_immutable;

1;
__END__

=head1 TODO

=over 4

=item Need to document what the attributes actually mean.

=back

=cut
