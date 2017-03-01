#!/usr/bin/perl

use strict;
use warnings;

sub run {

    my ($x, $y, $z) = @_;
    my $min = undef;
    my $max = undef;
    my @s = sort ( {$a <=> $b} ($x, $y, $z) );
    $min = $s[0];
    $max = $s[2];

    print "$min, $max\n";
}

1;
