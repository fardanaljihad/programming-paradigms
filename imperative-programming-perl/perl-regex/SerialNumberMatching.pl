#!/usr/bin/perl

use strict;
use warnings;

print "Enter Serial Number : ";
my $serial = <>;
chomp($serial);

if($serial =~ m/(\d{2})(-[A-Za-z0-9]{5})(-[A-Za-z0-9]{6})/) {
    print "$serial", " -> valid";
}
else {
    print "$serial", " -> invalid";
}