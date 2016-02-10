use Test::More;
use strict;
use Term::ANSIColor;;

is_deeply({}, {}, 'Woaw, deep') or diag(colored('Not deep', 'magenta'));
done_testing;
