#!/usr/bin/perl

use strict;
use warnings;

print "Enter URL : ";
my $testURL = <>;
chomp($testURL);

if($testURL =~ m/^(www.)([A-Za-z0-9]{3,20})(.com|.id|.net)$/) {
    print "$testURL", " -> valid";
}
else {
    print "$testURL", " -> invalid";
}