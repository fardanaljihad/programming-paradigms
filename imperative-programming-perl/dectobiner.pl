#!/usr/bin/perl

use strict;
use warnings;

print "Masukkan nilai dec = ";
my $dec = <>;
my @biner;
my $i = 0;
my $count = 0;

while( $dec != 0 ) {
    @biner[$i] = $dec % 2;
    $dec = int($dec/2);
    $i = $i + 1;
}

$i = $i - 1;
print "Nilai biner ";
while( $i >= 0 ) {
    if( $biner[$i] == 1 ) {
        $count++;
    }
    print $biner[$i];
    $i = $i - 1;
}

print " mengandung ", $count, " bit angka 1";