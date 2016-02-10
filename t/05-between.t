#!/usr/bin/perl
use strict;
use warnings;
use Test::More;
use Test::Between;

is_between(2,"1",03, '2 is between 1 and 3');
isnt_between('a',"1",03, '2 is between 1 and 3');
done_testing;
