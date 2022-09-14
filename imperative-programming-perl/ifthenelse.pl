#!/usr/bin/perl

use strict;
use warnings;
use constant PI => 3.141592654;

print "Masukkan nilai x dan y\n";
print "x = ";
my $x = <STDIN>;
print "y = ";
my $y = <STDIN>;

if ( $x > $y )
{
    print "x is greater than y\n";
}

else
{
    print "y is greater than x\n";
}

print "Masukkan nilai x dan y\n";
print "x = ";
$x = <STDIN>;
print "y = ";
$y = <STDIN>;

if ( $x > $y )
{
    print "x is greater than y\n";
}

elsif ( $y > $x )
{
    print "y is greater than x\n";
}

elsif ( $y == $x )
{
    print "x is equal to y\n";
}

my $r;
my $area;

print "Masukkan panjang jari-jari\n";
print "Radius = ";

do {
    $r = <STDIN>;

    if ($r < 0) {
        print "The radius of a circle must be a positive number. Please try again...\n";
        print "Radius = ";
    }
} while ($r < 0);

$area = PI * $r * $r;

print "Luas lingkaran = ", $area, "\n";

if ($area > 100) {
    print "This is a big circle.";
} else {
    print "This is a small circle.";
}