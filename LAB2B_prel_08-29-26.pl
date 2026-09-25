#!/usr/bin/perl
use strict;
use warnings;

print "\n \t \t \t LAB 2B - GesArdo\n";
print "Conditional Statements (unless, elsif & else) ";
print "& Relational Operators (string)";
print "\nEnter first word: ";
my $firstWord = <>;
print "Enter second word: ";
my $secondWord = <>;
chomp($firstWord, $secondWord);

unless ($firstWord ne $secondWord) {
    print "\n$firstWord is EXACTLY SAME WORD AS $secondWord\n";
}
elsif ($firstWord ne $secondWord) {
    print "\n$firstWord is NOT EQUAL to $secondWord\n";
    if ($firstWord lt $secondWord) {
        print "$firstWord is BEFORE $secondWord based on alphabetical order\n";
    }
    else {
        print "$firstWord is AFTER $secondWord based on alphabetical order\n";
    }
}
