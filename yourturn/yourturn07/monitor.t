use Test::More;
use Test::MockObject;

# Standard tests
BEGIN { use_ok('My::Monitor'); }
ok(my $mon = My::Monitor->new, 'Got an object');
isa_ok($mon, 'My::Monitor');

# Create Mock Reactor Object
my $t = 10;
my $reactor = Test::MockObject->new;
$reactor->set_bound('temperature', \$t);
$reactor->set_true('cooldown');

# Test reactor
ok($mon->check($reactor), "Temp $t - Reactor check ok");
$t = 120;
ok($mon->check($reactor), "Temp $t - Reactor check $_ ok")
  for 1 .. 5;
ok(!$mon->check($reactor), 'Reactor signals alert!');

done_testing();
