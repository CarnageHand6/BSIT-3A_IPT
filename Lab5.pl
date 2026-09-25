#!/usr/bin/perl
use strict;
use warnings;

# START
my $system_password = "leanna";

print "Enter System Password: ";
my $input_pass = <STDIN>;
exit unless defined $input_pass;
chomp $input_pass;

if ($input_pass ne $system_password) {
    print "Invalid System Password! Access Denied.\n";
    exit;
}

my %password = (
    'leanna' => '123',
    'lean'   => '321',
    'luna'   => '456',
);

# PROGRAM FLOW LOOP
while (1) {
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

    print "Enter your choice: ";
    my $choice = <STDIN>;
    last unless defined $choice;
    chomp $choice;

    if ($choice eq '1') {
        print "\n========== DISPLAY USERS ==========\n";
        print "$_\n" for sort keys %password;
    }
    elsif ($choice eq '2') {
        print "\n=========== CHECK USER ===========\n";
        print "Enter Username: ";
        my $user = <STDIN>;
        next unless defined $user;
        chomp $user;

        if (exists $password{$user}) {
            print "User exists. Value: $password{$user}\n";
        } else {
            print "Invalid User\n";
        }
    }
    elsif ($choice eq '3') {
        print "\n============ ADD USER ============\n";
        print "Enter New Username: ";
        my $new_user = <STDIN>;
        next unless defined $new_user;
        chomp $new_user;

        print "Enter Password: ";
        my $new_val = <STDIN>;
        next unless defined $new_val;
        chomp $new_val;

        $password{$new_user} = $new_val;
        print "User '$new_user' added successfully!\n";
    }
    elsif ($choice eq '4') {
        print "\n============= UPDATE =============\n";
        print "Enter Username to Update: ";
        my $upd_user = <STDIN>;
        next unless defined $upd_user;
        chomp $upd_user;

        if (exists $password{$upd_user}) {
            print "Enter New Password: ";
            my $upd_val = <STDIN>;
            next unless defined $upd_val;
            chomp $upd_val;

            $password{$upd_user} = $upd_val;
            print "User updated!\n";
        } else {
            print "Invalid User\n";
        }
    }
    elsif ($choice eq '5') {
        print "\n========== DELETE USER ===========\n";
        print "Enter Username to Delete: ";
        my $del_user = <STDIN>;
        next unless defined $del_user;
        chomp $del_user;

        if (exists $password{$del_user}) {
            delete $password{$del_user};
            print "User deleted!\n";
        } else {
            print "Invalid User\n";
        }
    }
    elsif ($choice eq '6') {
        print "\n======= DISPLAY HASH SIZE ========\n";
        my $size = scalar keys %password;
        print "Hash size: $size\n";
    }
    elsif ($choice eq '7') {
        print "\n===== DISPLAY KEY AND VALUES =====\n";
        for my $key (sort keys %password) {
            print "Keys: $key => $password{$key}\n";
        }
    }
    elsif ($choice eq '8') {
        print "\nExiting program... END\n";
        last;
    }
    else {
        print "Invalid Choice! Please enter 1-8.\n";
    }
}