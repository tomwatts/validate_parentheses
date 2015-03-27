#!/usr/bin/perl

use strict;
use warnings;

sub validate_parentheses
{
	my %open_close_chars = (
		')' => '(',
		']' => '[',
		'}' => '{',
		'>' => '<' );
	my @open_chars = ();

	foreach(split("", $_))
	{
		#print("\$_=$_\n");
		if(exists($open_close_chars{$_}))
		{
			my $open_char = pop(@open_chars);
			if(!defined($open_char) or ($open_char ne $open_close_chars{$_}))
			{
				return 0
			}
		}
		else # TODO: check to see if char is a valid open char
		{
			push(@open_chars, $_);
		}
	}

	return !@open_chars;
}

print("Enter a string (ctrl-d to exit): ");
while(<>)
{
	chomp;
	print("$_ is ");
	if(&validate_parentheses) { print("valid") } else { print("invalid") }
	print(".\nEnter a string: ");
} 
