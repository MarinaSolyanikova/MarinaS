#!/usr/bin/perl

use strict;
use warnings;

sub run {
    my ($x) = @_;

	my $str = unpack("B*", pack("N", shift));
	my $ind = rindex ("$str", "1");
	my $index = 31 - $ind;
	print "$index\n";

}
1;
