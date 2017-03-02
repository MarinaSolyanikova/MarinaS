#!/usr/bin/perl

use strict;
use warnings;

sub run {
   my ($x, $y) = @_; 
	for (my $i = $x; $i <= $y; $i++) { 

		if ($x<0) {next;}
		elsif ( $i != 1 and $i % 2 and ('Q' x $i)!~m/^(QQ+?)\1+$/ or $i==2) {

		print "$i\n"

		}	     


	}

}

1;
