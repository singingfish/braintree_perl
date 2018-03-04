# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::ErrorCodes::DocumentUpload;

use 5.010_001;
use strictures 1;

=head1 NAME

WebService::Braintree::ErrorCodes::DocumentUpload

=head1 PURPOSE

This class contains error codes that might be returned if a document upload
is incorrect in some way.

=cut

use constant KindIsInvalid              => '84901';
use constant FileIsTooLarge             => '84902';
use constant FileTypeIsInvalid          => '84903';
use constant FileIsMalformedOrEncrypted => '84904';

1;
__END__
