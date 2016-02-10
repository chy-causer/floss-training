use Test::More;
use Test::MockObject;
use Data::Dumper;

my $chicken = Test::MockObject->new();

my $x = 'Bakarrrk';
$chicken->set_bound('cluck', \$x );
is($chicken->cluck, $x, "Chicken goes $x");

done_testing;
