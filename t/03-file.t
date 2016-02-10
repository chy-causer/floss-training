use strict;
use warnings;
use Test::More;
use Term::ANSIColor;;
use Test::File;

file_readable_ok('/etc/passwd');
done_testing;
