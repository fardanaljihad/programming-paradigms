#!/usr/bin/perl

use strict;
use warnings;

my $year = 1980;

while($year <= 2010) {
    $year % 10 == 0 ? print "$year", " This is a new decade!\n" : print "$year\n";
    $year++;
}

my $number = 10;

while($number >= 0) {
    $number == 0 ? print "We have lift off!\n" : print "$number\n";

    $number--;
}

my @array = ("James Bond 007", "Department of Statistics", "University of Oxford", "Fantastic 4");
my $i;

for($i = 0; $i <= $#array; $i++) {
    $array[$i] =~ /[0-9]/ ? print "$array[$i]\n" : print uc($array[$i]), "\n";
}