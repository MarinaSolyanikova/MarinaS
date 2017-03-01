#!/usr/bin/perl

use strict;
use warnings;

sub run {

    my ($a_value, $b_value, $c_value) = @_;
    my $x1 = undef;
    my $x2 = undef;
    my $D = $b_value ** 2 - 4 * $a_value * $c_value;

    if ( $a_value == 0 or  $D < 0 ) { 

    print "No solution!\n" 

    }

    elsif ( $a_value != 0 and $D >= 0) {

	$x1 = ( - $b_value + $D ** (1/2)) / (2 * $a_value);
	$x2 = ( - $b_value - $D ** (1/2)) / (2 * $a_value);
    print "$x1, $x2\n";

    }

}

1; 
