package WebService::Braintree;

use 5.006;
use strict;
use warnings;
use WebService::Braintree::Address;
use WebService::Braintree::AdvancedSearchFields;
use WebService::Braintree::AdvancedSearchNodes;
use WebService::Braintree::ApplePayCard;
use WebService::Braintree::CreditCard;
use WebService::Braintree::Customer;
use WebService::Braintree::CustomerSearch;
use WebService::Braintree::DisbursementDetails;
use WebService::Braintree::Dispute;
use WebService::Braintree::MerchantAccount;
use WebService::Braintree::PartnerMerchant;
use WebService::Braintree::PaymentMethod;
use WebService::Braintree::PayPalAccount;
use WebService::Braintree::PayPalDetails;
use WebService::Braintree::ResourceCollection;
use WebService::Braintree::SettlementBatchSummary;
use WebService::Braintree::Subscription;
use WebService::Braintree::SubscriptionSearch;
use WebService::Braintree::Transaction;
use WebService::Braintree::TransactionSearch;
use WebService::Braintree::Disbursement;
use WebService::Braintree::TransparentRedirect;
use WebService::Braintree::WebhookNotification;
use WebService::Braintree::WebhookTesting;
use WebService::Braintree::Configuration;

=head1 NAME

WebService::Braintree - A Client Library for wrapping the Braintree Payment Services Gateway API

=head1 VERSION

Version 0.29.0

=head1 DEPRECATED

This library is deprecated; current integrations are supported, but no new feature development is planned at this time.
For more details see: https://support.braintreepayments.com/customer/portal/articles/1763061-status-of-the-perl-client-library

=cut

our $VERSION = '0.29.0';

my $configuration_instance = WebService::Braintree::Configuration->new;

sub configuration { return $configuration_instance; }

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc WebService::Braintree


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker (report bugs here)

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Net-Braintree>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Net-Braintree>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Net-Braintree>

=item * Search CPAN

L<http://search.cpan.org/dist/Net-Braintree/>

=back


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

Copyright 2011-2014 Braintree, a division of PayPal, Inc.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.


=cut

1; # End of WebService::Braintree
