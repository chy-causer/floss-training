use Test::More;
use Test::MockTime qw(:all);

my $now = time;
set_fixed_time(100);
sleep 10;

is(time, 100, 'MockTime is doing its job');

done_testing;
