#!/usr/bin/perl

use strict;
use warnings;

my $pwd;
my $validation = 0;

do {
    print "Password : ";
    $pwd = <>;
    chomp $pwd;

    if(!($pwd =~ m/\s/) and 
       (length($pwd) >= 10) and
       ($pwd =~ m/[A-Z]/) and
       ($pwd =~ m/[a-z]/) and
       ($pwd =~ m/[^A-Za-z0-9]/) and
       ($pwd =~ m/\d/)) {
            $validation = 1;
       }
       else {
        print 
        "Gunakan minimal 10 karakter dengan campuran huruf kapital, huruf kecil, angka, dan simbol.\n";
        print "Silakan coba lagi.\n";
       }
} while($validation == 0);