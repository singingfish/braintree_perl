#!perl -T
# vim: sw=4 ts=4 ft=perl

use Test::More;

use strict;
use warnings;

unless ( $ENV{RELEASE_TESTING} ) {
    plan( skip_all => "Author tests not required for installation" );
}

eval "use Test::CheckManifest 0.9";
plan skip_all => "Test::CheckManifest 0.9 required" if $@;

ok_manifest();
