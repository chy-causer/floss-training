use Test::More;
use Test::Between;

is_str_between('b', 'a', 'c', 'alpha');
is_between( 2, 1, 3, 'numeric');

done_testing;
