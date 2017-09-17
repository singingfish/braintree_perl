#!/usr/bin/env perl
# vim: sw=4 ts=4 ft=perl

use lib qw(lib);

use WebService::Braintree;
use WebService::Braintree::MerchantAccount;

use JSON qw(decode_json);

my $config = do {
    my $c = WebService::Braintree->configuration;
    $c->environment('sandbox');
    my $sandbox = decode_json(do {
        local $/; open my($f), 'sandbox_config.json'; <$f>;
    });
    $c->public_key($sandbox->{public_key});
    $c->merchant_id($sandbox->{merchant_id});
    $c->private_key($sandbox->{private_key});
    $c;
};

$ENV{WEBSERVICE_BRAINTREE_DEBUG} = 0;

if (1) {
    use Data::Dumper qw(Dumper);
    my $r = WebService::Braintree::MerchantAccount->all;
    print Dumper $r;
    $r->each(sub {
        my $x = shift;
        warn Dumper $x;
    });
}

# There are no plans. The plans have to be creatd by hand in the control panel.
# They *CANNOT* be created in the API. q.v. documentation at
# https://developers.braintreepayments.com/guides/recurring-billing/plans
if (0) {
    use Data::Dumper qw(Dumper);
    print Dumper(WebService::Braintree::Plan->all);
}

print "Ok\n";
