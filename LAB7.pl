#!/usr/bin/env perl
use strict;
use warnings;

# 1. Initialize a Hash of Hashes containing at least three student records
my %students = (
    "1001" => {
        name   => "Ana",
        course => "IT",
        year   => 1,
        age    => 18,
    },
    "1002" => {
        name   => "Mark",
        course => "DS",
        year   => 3,
        age    => 19,
    },
    "1003" => {
        name   => "Jessa",
        course => "IS",
        year   => 1,
        age    => 18,
    },
);

# 2. Display the Menu repeatedly using loops and conditional statements
while (1) {
    print "\n===============================\n";
    print "     STUDENT RECORD SYSTEM     \n";
    print "===============================\n";
    print "1. Add Student\n";
    print "2. View Student\n";
    print "3. Update Student\n";
    print "4. Delete Student\n";
    print "5. Display All Students\n";
    print "6. Exit\n";
    print "Enter your choice (1-6): ";

    my $choice = <STDIN>;
    chomp($choice);

    if ($choice == 1) {
        # 3. Add a New Student
        print "Enter Student ID: ";
        my $id = <STDIN>;
        chomp($id);

        if (exists $students{$id}) {
            print "Error: Student ID already exists!\n";
            next;
        }

        print "Enter Name: ";
        my $name = <STDIN>;
        chomp($name);

        print "Enter Course: ";
        my $course = <STDIN>;
        chomp($course);

        print "Enter Year: ";
        my $year = <STDIN>;
        chomp($year);

        print "Enter Age: ";
        my $age = <STDIN>;
        chomp($age);

        # Store values inside the Hash of Hashes
        $students{$id} = {
            name   => $name,
            course => $course,
            year   => $year,
            age    => $age,
        };

        print "Student added successfully!\n";

    } elsif ($choice == 2) {
        # 4. View a Specific Student[cite: 2]
        print "Enter Student ID: ";
        my $id = <STDIN>;
        chomp($id);

        if (exists $students{$id}) {
            print "Student ID: $id\n";
            print "Name: $students{$id}{name}\n";
            print "Course: $students{$id}{course}\n";
            print "Year: $students{$id}{year}\n";
            print "Age: $students{$id}{age}\n";
        } else {
            print "Error: Student ID does not exist!\n";
        }

    } elsif ($choice == 3) {
        # 5. Update a Student (Course & Year)[cite: 2]
        print "Enter Student ID to update: ";
        my $id = <STDIN>;
        chomp($id);

        if (exists $students{$id}) {
            print "Enter new Course: ";
            my $course = <STDIN>;
            chomp($course);

            print "Enter new Year: ";
            my $year = <STDIN>;
            chomp($year);

            $students{$id}{course} = $course;
            $students{$id}{year}   = $year;
            print "Student record updated successfully!\n";
        } else {
            print "Error: Student ID does not exist!\n";
        }

    } elsif ($choice == 4) {
        # 6. Delete a Student[cite: 2]
        print "Enter Student ID to delete: ";
        my $id = <STDIN>;
        chomp($id);

        if (exists $students{$id}) {
            delete $students{$id};
            print "Student record deleted successfully!\n";
        } else {
            print "Error: Student ID does not exist!\n";
        }

    } elsif ($choice == 5) {
        # 7. Display All Students in a formatted list[cite: 2]
        print "\n--- All Student Records ---\n";
        foreach my $id (keys %students) {
            print "Student ID: $id\n";
            print "Name: $students{$id}{name}\n";
            print "Course: $students{$id}{course}\n";
            print "Year: $students{$id}{year}\n";
            print "Age: $students{$id}{age}\n\n";
        }

    } elsif ($choice == 6) {
        print "Exiting program. Goodbye!\n";
        last;
    } else {
        print "Invalid Input. Please enter a number from 1 to 6.\n";
    }
}
