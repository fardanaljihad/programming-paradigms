#!/usr/bin/perl

use strict;
use warnings;

print "First Name: ";

# Getting a first name from the user
my $string = <STDIN>;

# Removes new line from the input
chomp $string;

my $str_len = length($string);

# 1 (a)
print "The length of the string  : $str_len\n";

# 1 (b)
print "The reserve of the string : ";
print scalar reverse "\n$string";

# 1 (c)
print "The upper case version of the string : ";
print uc($string);
print "\nThe lower case version of the string : ";
print lc($string);

# 2
print "\nLast name : ";
my $string2 = <STDIN>;

chomp $string2;

print "The concatenation of the strings separated by space : ", $string." ".$string2;