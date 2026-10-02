#!/usr/bin/usr/perl
use strict;
use warnings;

# ==============================================================================
# Program Name : MacalicaLAB4.pl
# Description  : A simple menu-driven calculator program in Perl.
# Features     : User greetings, conditional arithmetic operations, string 
#                concatenation, chomp usage, and specific division/divisor handling.
# ==============================================================================

# Prompt user for username
print "Enter your username: ";
my $username = <STDIN>;
chomp($username); # Remove trailing newline character

# Display welcome message using string concatenation
print "\nWelcome, " . $username . "! Let's perform some calculations.\n\n";

# Display formatted menu with available operations
print "========================================\n";
print "          CALCULATOR MENU               \n";
print "========================================\n";
print " (1) Addition\n";
print " (2) Subtraction\n";
print " (3) Multiplication\n";
print " (4) Division\n";
print " (5) Exponential\n";
print "========================================\n";
print "Select an operation (1-5): ";

my $choice = <STDIN>;
chomp($choice); # Remove newline from choice input

# Perform calculation based on user choice
if ($choice eq "1") {
    # --- ADDITION ---
    print "\n--- Addition ---\n";
    print "Enter first number: ";
    my $num1 = <STDIN>;
    chomp($num1);
    
    print "Enter second number: ";
    my $num2 = <STDIN>;
    chomp($num2);
    
    my $result = $num1 + $num2;
    print "Result: " . $num1 . " + " . $num2 . " = " . $result . "\n";

} elsif ($choice eq "2") {
    # --- SUBTRACTION ---
    print "\n--- Subtraction ---\n";
    print "Enter first number: ";
    my $num1 = <STDIN>;
    chomp($num1);
    
    print "Enter second number: ";
    my $num2 = <STDIN>;
    chomp($num2);
    
    my $result = $num1 - $num2;
    print "Result: " . $num1 . " - " . $num2 . " = " . $result . "\n";

} elsif ($choice eq "3") {
    # --- MULTIPLICATION ---
    print "\n--- Multiplication ---\n";
    print "Enter first number: ";
    my $num1 = <STDIN>;
    chomp($num1);
    
    print "Enter second number: ";
    my $num2 = <STDIN>;
    chomp($num2);
    
    my $result = $num1 * $num2;
    print "Result: " . $num1 . " * " . $num2 . " = " . $result . "\n";

} elsif ($choice eq "4") {
    # --- DIVISION (Special Case Handling) ---
    print "\n--- Division ---\n";
    print "Enter first number: ";
    my $val1 = <STDIN>;
    chomp($val1);
    
    print "Enter second number: ";
    my $val2 = <STDIN>;
    chomp($val2);
    
    # Prompt user to specify which number serves as the divisor
    print "\nSpecify which number is the divisor:\n";
    print " (1) First number (" . $val1 . ")\n";
    print " (2) Second number (" . $val2 . ")\n";
    print "Choice (1 or 2): ";
    my $divisor_choice = <STDIN>;
    chomp($divisor_choice);
    
    my ($dividend, $divisor);
    
    if ($divisor_choice eq "1") {
        $divisor  = $val1;
        $dividend = $val2;
    } elsif ($divisor_choice eq "2") {
        $divisor  = $val2;
        $dividend = $val1;
    } else {
        # Handle invalid divisor choice
        print "Error: Invalid divisor choice selected.\n";
        exit;
    }
    
    # Check for division by zero
    if ($divisor == 0) {
        print "Error: Division by zero is not allowed.\n";
    } else {
        my $result = $dividend / $divisor;
        print "Result: " . $dividend . " / " . $divisor . " = " . $result . "\n";
    }

} elsif ($choice eq "5") {
    # --- EXPONENTIAL ---
    print "\n--- Exponential ---\n";
    print "Enter base number: ";
    my $base = <STDIN>;
    chomp($base);
    
    print "Enter exponent power: ";
    my $exponent = <STDIN>;
    chomp($exponent);
    
    my $result = $base ** $exponent;
    print "Result: " . $base . " ^ " . $exponent . " = " . $result . "\n";

} else {
    # Handle invalid menu selection
    print "\nError: Invalid choice. Please select an option between 1 and 5.\n";
}
