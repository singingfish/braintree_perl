# vim: sw=4 ts=4 ft=perl

use 5.010_001;
use strictures 1;

use Test::More;

use lib qw(lib t/lib);

use WebService::Braintree;
use WebService::Braintree::TestHelper;

subtest 'does have correct attributes' => sub {
    my $subscription = WebService::Braintree::_::Subscription->new(balance => '12.00');

    is $subscription->balance, '12.00';
};

subtest 'throws NotFoundError if find is given empty string' => sub {
    should_throw('NotFoundError', sub { WebService::Braintree::Subscription->find('') });
    should_throw('NotFoundError', sub { WebService::Braintree::Subscription->find('  ') });
};

done_testing();
