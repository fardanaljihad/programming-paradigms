#!/usr/bin/perl

use strict;

my $outfile = "myoutfile1.txt";

open(OUTFILE, "> $outfile") or die "Cannot write to $outfile\n";
print OUTFILE "This is my first file\n\n";

my $number;

print OUTFILE "Print the numbers 1, .., 100.\n";
for($number = 1; $number <= 100; $number++) {
    print OUTFILE "$number", "\n";
}

print OUTFILE "\nPrint only odd numbers between 1 and 100\n";
for($number = 1; $number <= 100; $number++) {
    if($number % 2 == 0) {
        print OUTFILE "$number", "\n";
    }
}

close(OUTFILE);