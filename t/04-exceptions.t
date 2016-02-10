#!/usr/bin/perl
use strict;
use warnings;
use Test::More tests => 3;
use Term::ANSIColor;
use Try::Tiny;
use Test::NoWarnings;
use Test::Exception;

dies_ok {die } 'die dies';
lives_ok {try { die }; } 'try die lives';
