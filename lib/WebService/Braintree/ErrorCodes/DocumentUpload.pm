# vim: sw=4 ts=4 ft=perl

package WebService::Braintree::ErrorCodes::DocumentUpload;

use 5.010_001;
use strictures 1;

use constant KindIsInvalid              => '84901';
use constant FileIsTooLarge             => '84902';
use constant FileTypeIsInvalid          => '84903';
use constant FileIsMalformedOrEncrypted => '84904';
 
1;
__END__
