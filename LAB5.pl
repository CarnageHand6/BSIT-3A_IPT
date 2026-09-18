#!/usr/bin/env perl
use strict;
use warnings;

# Helper function to center-align text for the heading
sub center_text {
    my ($text, $width) = @_;
    $width ||= 60;
    my $len = length($text);
    return $text if $len >= $width;
    my $padding = int(($width - $len) / 2);
    return (" " x $padding) . $text;
}

# 1. Display Header Centered
print "\n" . "=" x 60 . "\n";
print center_text("GESOLGON Fruits Store", 60) . "\n";
print "=" x 60 . "\n\n";

# Initial Array of Fruits
my @fruits = ("Apple", "Banana", "Mango", "Orange", "Pineapple");

# Helper function to print current fruit list formatted
sub display_fruits {
    print "\n--- Current Fruit Inventory ---\n";
    for (my $i = 0; $i < @fruits; $i++) {
        print " [$i] $fruits[$i]\n";
    }
    print "-------------------------------\n\n";
}

# Show initial available fruits
display_fruits();

# Main Loop to handle user decisions
while (1) {
    print "Do you want to add a fruit? (YES/NO): ";
    my $choice = <STDIN>;
    chomp($choice);
    $choice = uc(trim_spaces($choice)); # Normalize input to uppercase

    if ($choice eq "YES" || $choice eq "Y") {
        # Loop for adding fruits repeatedly
        while (1) {
            print "\nEnter the name of the fruit to add: ";
            my $new_fruit = <STDIN>;
            chomp($new_fruit);
            $new_fruit = trim_spaces($new_fruit);

            # Validate empty input
            if ($new_fruit eq "") {
                print "Invalid Input. Fruit name cannot be empty.\n";
                next;
            }

            # Search array for existing fruit (case-insensitive check)
            my $found_index = -1;
            for (my $i = 0; $i < @fruits; $i++) {
                if (lc($fruits[$i]) eq lc($new_fruit)) {
                    $found_index = $i;
                    last;
                }
            }

            # Check if fruit exists using index position logic
            if ($found_index != -1) {
                print "\nFruit already exists at index [$found_index] in the list.\n";
            } else {
                # Capitalize first letter neatly and add to array
                $new_fruit = ucfirst(lc($new_fruit));
                push(@fruits, $new_fruit);
                print "\n'$new_fruit' has been added successfully!\n";
                display_fruits();
            }

            # Ask user if they want to add another fruit
            print "Do you want to add another fruit? (YES/NO): ";
            my $again = <STDIN>;
            chomp($again);
            $again = uc(trim_spaces($again));

            if ($again eq "NO" || $again eq "N") {
                last; # Break out of inner add loop
            } elsif ($again ne "YES" && $again ne "Y") {
                print "Invalid Input. Returning to main menu.\n";
                last;
            }
        }

    } elsif ($choice eq "NO" || $choice eq "N") {
        print "\nThank you for visiting! Final Fruit List:\n";
        display_fruits();
        last; # Exit the main loop and program

    } else {
        # Error handling for invalid input
        print "Invalid Input. Please enter 'YES' or 'NO'.\n\n";
    }
}

# Helper routine to strip leading/trailing whitespace
sub trim_spaces {
    my $string = shift;
    $string =~ s/^\s+|\s+$//g;
    return $string;
}
