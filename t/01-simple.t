use Test::More;
use strict;
use Term::ANSIColor;;

BEGIN { use_ok('My::Class'); }

ok( my $x = My::Class->new);
isa_ok( $x, 'My::Class');

$x->set_foo('Wibble');

is($x->get_foo, 'Wibble', 'foo is Wibble');
like($x->get_foo, qr/W/, 'foo has a W');
is(undef, undef) or diag(colored('You silly boy', 'magenta'));

done_testing;
