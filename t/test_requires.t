use strict;
use warnings;
use utf8;
use Test::More;
use t::Util;

my $tap = run_test('t/plx/test_requires.plx');
exit_status_is(0);

my $result = parse_tap($tap);
ok($result->skip_all);
ok(!$result->has_problems, 'has problems');

done_testing;

