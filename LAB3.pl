#!/usr/bin/perl
use strict;
use warnings;

print "Enter first number: ";
my $num1 = <STDIN>;
chomp($num1);

print "Enter second number: ";
my $num2 = <STDIN>;
chomp($num2);

print "Choose operation (Add, Sub, Mul, Div): ";
my $operation = <STDIN>;
chomp($operation);

if ($operation eq "Add") {
    my $result = $num1 + $num2;
    print "Sum (Addition): $result\n";
}
elsif ($operation eq "Sub") {
    my $result = $num1 - $num2;
    print "Difference (Subtraction): $result\n";
}
elsif ($operation eq "Mul") {
    print "Select multiplier - (1) for first num ($num1), (2) for second num ($num2): ";
    my $choice = <STDIN>;
    chomp($choice);
    
    my ($multiplier, $multiplicand);
    if ($choice == 1) {
        $multiplier = $num1;
        $multiplicand = $num2;
    } elsif ($choice == 2) {
        $multiplier = $num2;
        $multiplicand = $num1;
    } else {
        print "Invalid selection for multiplier.\n";
        exit;
    }
    
    my $result = $multiplier * $multiplicand;
    print "Multiplier: $multiplier, Multiplicand: $multiplicand\n";
    print "Product (Multiplication): $result\n";
}
elsif ($operation eq "Div") {
    my ($dividend, $divisor);
    if ($num1 < $num2) {
        $divisor = $num1;
        $dividend = $num2;
    } else {
        $divisor = $num2;
        $dividend = $num1;
    }
    
    if ($divisor == 0) {
        print "Error: Division by zero is not allowed.\n";
    } else {
        my $result = $dividend / $divisor;
        printf("Dividend: %g, Divisor: %g\n", $dividend, $divisor);
        printf("Quotient (Division, 2 decimal places): %.2f\n", $result);
    }
}
else {
    print "Invalid operation selected!\n";
}