package SecretSanta;

use 5.010;
use strict;
use warnings;
use DDP;
#use List::Util qw/shuffle/;

sub calculate {
	my @members = @_;
	my @res;
	my @from;
	my @to;
	my %ft;
	#@members = shuffle @members;


	foreach (@members) {	
		if(ref($_) eq 'ARRAY') {
		push @from, @$_;
		}
             	else {
		push @from, $_;
		}
	}

	@to = @from;
	my $a;	
	$a = shift @to;
	push @to, $a;
	$a = shift @to;
	push @to, $a;
	
	foreach ( 0 .. $#from ) {
	$ft{$from[$_]} = $to[$_];
	}

	while ( (my $k, my $v) = each %ft)  {
	push @res, [$k,$v];
	}

	print Dumper @res;
	return @res;
}

1;
