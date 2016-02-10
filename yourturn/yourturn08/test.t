use Test::More;

BEGIN { use_ok('My::Class'); }

ok(my $obj = My::Class->new, 'Got an object');

isa_ok($obj, 'My::Class');

can_ok('My::Class', qw[set_foo get_foo]);

$obj->set_foo('Foo');

is($obj->get_foo, 'Foo', 'The foo is "Foo"');

is_deeply($obj, { foo => 'Foo' }, 'Object matches');

done_testing;
