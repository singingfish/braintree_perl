# vim: sw=4 ts=4 ft=perl

use Test::More;

use lib qw(lib t/lib);

use WebService::Braintree::Util qw(difference_arrays);
use WebService::Braintree::TestHelper;

use Test::Deep;

# This is an internal method only. It is NOT exported.
subtest "Flatten Hashes" => sub {
    my $flatten = WebService::Braintree::Util->can('__flatten');

    is_deeply($flatten->({}), {}, "empty hash");
    is_deeply($flatten->({"a" => "1"}), {"a" => "1"}, "One element.");
    is_deeply($flatten->({"a" => {"b" => "1"}}), {"a[b]" => "1"}, "One namespace");
    is_deeply($flatten->({"a" => {"b" => "1"}, "a2" => {"q" => "r"}}), {"a[b]" => "1", "a2[q]" => "r"}, "Two horizontal namespace");
    is_deeply($flatten->({"a" => {"b" => {"c" => "1"}}}), {"a[b][c]" => "1"}, "Vertical merging");
};

subtest "difference arrays" => sub {
    cmp_deeply(difference_arrays(['a', 'b'], ['a', 'b']), []);
    cmp_deeply(difference_arrays(['a', 'b'], ['a']), ['b']);
    cmp_deeply(difference_arrays(['a', 'b'], ['b']), ['a']);
    cmp_deeply(difference_arrays(['a'], ['a', 'b']), []);
};

done_testing();
