use Test::More;
use Test::MockTime ':all';

use DateTime;

set_absolute_time('1900-01-01T00:00:00Z');
is(DateTime->now->is_leap_year, 0,
   '1900 not a leap year');

set_absolute_time('2000-01-01T00:00:00Z');
is(DateTime->now->is_leap_year, 1,
   '2000 is leap year');

done_testing();
