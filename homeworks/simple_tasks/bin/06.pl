#!/usr/bin/perl

use strict;
use warnings;

sub encode {
   my ($str, $key) = @_;
   my $encoded_str = '';
   my @str = unpack("C*", $str);
	foreach my $val (@str) {
    		
		if ($key < 128) {
        
		$val = $val + $key;
        
		}
        
		else {
        	my $k = int($key/128);
		$key = $key - 128*$k;
		$val = $val + $key;
        
		}
        
	}
    
	$encoded_str = pack("C*",@str);
	print "$encoded_str\n";
    
}

sub decode {
    my ($encoded_str, $key) = @_;
    my $str = '';
    my @encoded_str = unpack("C*", $encoded_str);
    
	foreach my $val (@encoded_str) {
    
		if ($key < 128) {
        
		$val = $val - $key;
        
		}
        
		else {
        	my $k = int($key/128);
		$key = $key - 128*$k;
		$val = $val - $key;
        
		}
        
	}
    
	$str = pack("C*",@encoded_str);
    print "$str\n";
    
}

1;
