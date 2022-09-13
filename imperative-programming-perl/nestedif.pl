#!/usr/bin/perl

use strict;
use warnings;

my $x = 5.1;
my $y = 5.1;

if ( $x > 5.0 ) {
    if ( $y > 5.0 ) {
        print "x and y are greater than 5\n";
    }
}

if ( ( $x > 5.0 ) and ( $y > 5.0 ) ) {
    print "x and y are greater than 5\n";
}

# 5
print "Salary = ";
my $salary = <>;
print "Bonus = ";
my $bonus = <>;

if($salary < 100000) {
    if($bonus < 100000) {
        print "You are not a banker.\n";
    }

    elsif($bonus > 100000) {
        print "You won the lottery.\n";
    }
}

elsif($salary > 100000) {
    if($bonus < 100000) {
        print "You are banker with no bonus.\n";
    }

    elsif($bonus > 100000) {
        print "You are banker with a big bonus.\n";
    }
}

if(($salary > 100000) or ($bonus > 100000)) {
    print "You are buying dinner tonight.\n";
}

# 6
print "Input: ";
my $z = <>;
chomp($z);

if($z =~ /Chris/) {
    print "Found Chris!";
}

elsif($z =~ /Bells/) {
    print "Ding dong!";
}

elsif($z =~ /Wonder/) {
    print "I was wondering about that too";
}

elsif($z =~ /Land/) {
    print "Air and Sea";
}