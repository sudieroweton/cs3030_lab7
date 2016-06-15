#!/usr/bin/perl

#Sudie Roweton
#Lab 7 - Perl Filter
#CS 3030 - Scripting Languages 

#Check to make sure correct number of arguments
if (@ARGV != 2)
{
	print STDERR "Usage: ./filter.pl 'FROMSTRING' 'TOSTRING'\n";
	exit(1);
} 

#place arguments in variables to use in filter
$from = $ARGV[0];
$to = $ARGV[1];

#testing to make sure the arguments are correct
#print "First : $from , Second $to\n"

#loop through each line and filter using eval and s///g
while(<STDIN>){
	eval "s/$from/$to/g";
	print;
}
