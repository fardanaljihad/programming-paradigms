#!/usr/bin/perl

use strict;

my $infile = "fruit.csv";

open(FH, $infile) or die "Cannot open $infile\n";

    # this bit of code reads (skips) the header line
    <FH>;
    while ( my $line = <FH> )
    {
        chomp($line);
        my @linedat = split(/,/, $line); # splits the line at commas
        my $fruit = $linedat[0];
        my $quantity = $linedat[1];
        my $unitprice = $linedat[2];
        $unitprice = sprintf('%0.2f', $unitprice); # converts the unit price into 2 decimal places
        print "We have $quantity of $fruit at $unitprice pounds
                each\n";
    }
    
close(FH);