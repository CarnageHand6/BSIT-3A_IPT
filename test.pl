#!/usr/bin/perl
use strict;
use warnings;

# START
my $system_password = "leanna";
print "Enter System Password: ";
chomp(my $input_pass = <STDIN>);

if ($input_pass ne $system_password) {
    print "Invalid System Password! Access Denied.\n";
    exit;
}

# Initiate %password
my %password = (
    'leanna' => '123',
    'lean' => '321',
    'luna' => '456'
);

# PROGRAM FLOW LOOP
while (1) {
    # Display Menu
    print "\n==================================\n";
    print "             MENU\n";
    print "==================================\n";
    print "1. DISPLAY USERS\n";
    print "2. CHECK USER\n";
    print "3. ADD USER\n";
    print "4. UPDATE\n";
    print "5. DELETE USER\n";
    print "6. DISPLAY HASH SIZE\n";
    print "7. DISPLAY KEY AND VALUES\n";
    print "8. EXIT\n";
    print "==================================\n";

    # Enter Choice
    print "Enter your choice: ";
    chomp(my $choice = <STDIN>);

    # Perform selected operation
    if ($choice == 1) {
        print "\n========== DISPLAY USERS ==========\n";
        foreach my $key (sort keys %password) {
            print "$key\n";
        }
    }
    elsif ($choice == 2) {
        print "\n=========== CHECK USER ===========\n";
        print "Enter Username: ";
        chomp(my $user = <STDIN>);
        if (exists $password{$user}) {
            print "User exists. Value: $password{$user}\n";
        } else {
            print "Invalid User\n";
        }
    }
    elsif ($choice == 3) {
        print "\n============ ADD USER ============\n";
        print "Enter New Username: ";
        chomp(my $new_user = <STDIN>);
        print "Enter Password: ";
        chomp(my $new_val = <STDIN>);
        $password{$new_user} = $new_val;
        print "User '$new_user' added successfully!\n";
    }
    elsif ($choice == 4) {
        print "\n============= UPDATE =============\n";
        print "Enter Username to Update: ";
        chomp(my $upd_user = <STDIN>);
        if (exists $password{$upd_user}) {
            print "Enter New Passwords: ";
            chomp(my $upd_val = <STDIN>);
            $password{$upd_user} = $upd_val;
            print "User updated!\n";
        } 
        else {
            print "Invalid User\n";
        }
    }
    elsif ($choice == 5) {
        print "\n========== DELETE USER ===========\n";
        print "Enter Username to Delete: ";
        chomp(my $del_user = <STDIN>);
        if (exists $password{$del_user}) {
            delete $password{$del_user};
            print "User deleted!\n";
        } 
        else {
            print "Invalid User\n";
        }
    }
    elsif ($choice == 6) {
        print "\n======= DISPLAY HASH SIZE ========\n";
        my $size = keys %password;
        print "Hash size: $size\n";
    }
    elsif ($choice == 7) {
        print "\n===== DISPLAY KEY AND VALUES =====\n";
        foreach my $key (sort keys %password) {
            print "Keys: $key => $password{$key}\n";
        }
    }
    elsif ($choice == 😎 {
        print "\nExiting program... END\n";
        last; 
        # END
    }
    else {
        print "Invalid Choice! Please enter 1-8.\n";
    }
    # Return Menu -> Loop continues until Choice = 8
}