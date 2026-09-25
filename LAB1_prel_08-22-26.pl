#1/usr/bim/perl
use strict;
use warnings;

print "--- Input your info---\n";
print "Name: ";
my $name = <>;
chomp ($name);

print "Age: ";
my $age = <>;
chomp ($age);

print "Birthday: ";
my $bday = <>;
chomp ($bday);

print "Civil Status: ";
my $civil = <>;
chomp ($civil);

print "Gender: ";
my $gender = <>;
chomp ($gender);

print "Course: ";
my $course = <>;
chomp ($course);

print "Section: ";
my $section = <>;
chomp ($section);

print "Full Course Name: ";
my $fcourse = <>;
chomp ($fcourse);

print "Subject Code: ";
my $subjectcode = <>;
chomp ($subjectcode);

print "Subject Name: ";
my $subjectname = <>;
chomp ($subjectname);

print "Section: ";
my $section2 = <>;
chomp ($section2);


print "Basic Information\n";
print "* Name: $name\n";
print "* Age: $age\n";
print "* Birthday: $bday\n";
print "* Gender: $gender\n\n";

print "Course Information\n";
print "* Course: $course\n";
print "* Section: $section\n";
print "* Full Course Name: $fcourse\n\n";

print "Subject Information\n";
print "* Subject Code: $subjectcode\n";
print "* Subject Name: $subjectname\n";
print "* Section: $section2";
