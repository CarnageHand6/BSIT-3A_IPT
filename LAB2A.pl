#!/usr/bin/perl
use strict;
use warnings;

print "\n \t \t \t LAB 2A - GesArdo\n";
print "Conditional Statements (if, elseif & else) ";
print "& Relational Operators (integer)";
print "\nEnter first number: ";
my $num1 = <>;
print "Enter second number: ";
my $num2 = <>;
chomp($num1, $num2);

if ($num1 == $num2) {
    print "\n$num1 is EQUAL to $num2\n";
}
elsif ($num1 != $num2) {
    print "\n$num1 is NOT EQUAL to $num2\n";
    if ($num1 > $num2) {
        print "$num1 is GREATER THAN $num2\n";
    }
    else {
        print "$num1 is LESS THAN $num2\n";
    }
}