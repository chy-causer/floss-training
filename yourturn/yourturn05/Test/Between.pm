package Test::Between;

use strict;
use warnings;

use base 'Exporter';
our @EXPORT = qw(is_between is_str_between);

use Test::Builder;

my $test = Test::Builder->new;

sub is_between {
  my ($item, $lower, $upper, $desc) = @_;

  return (
    $test->ok($lower <= $item
           && $item  <= $upper,
             $desc)
      || $test->diag("$item is not between $lower and $upper")
  );
}

sub is_str_between {
  my ($item, $lower, $upper, $desc) = @_;

  return (
    $test->ok($lower le $item
           && $item  le $upper,
             $desc)
      || $test->diag("$item is not between $lower and $upper")
  );
}

1;
