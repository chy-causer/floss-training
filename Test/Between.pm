package Test::Between;
use 5.020;
use experimental qw(signatures);
use parent 'Exporter';
use Test::Builder;
use Scalar::Util qw(looks_like_number);
use List::Util qw(all);

our @EXPORT = qw(is_between isnt_between);
my $test = Test::Builder->new;

sub is_between ( $val, $lower, $upper, $desc = undef ) {
    if ( all { looks_like_number($_) } ( $val, $lower, $upper ) ) {
        return $test->ok($val > $lower and $val < $upper, $desc);
    }
    else {
        return $test->ok( $val gt $lower and $val lt $upper, $desc );
    }
}

sub isnt_between ( $val, $lower, $upper, $desc = undef ) {
    if ( all { looks_like_number($_) } ( $val, $lower, $upper ) ) {
        return $test->ok($val <= $lower or $val >= $upper, $desc);
    }
    else {
        return $test->ok( $val lt $lower or $val gt $upper, $desc );
    }
}
