#!/usr/bin/perl

use strict;
use warnings;

sub run {

    my ($str, $substr) = @_;
    my $num = 0;

	while ( $str =~m/$substr/g ) {
    
		$num++ ;
        
	}
    
    print "$num\n";
    
}

1;
