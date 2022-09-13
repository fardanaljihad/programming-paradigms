#!/usr/bin/perl

use strict;

my @array = ( 1 .. 10 ); # create an array of numbers 1-10

print "The array contains: @array\n";

my $first_element = shift(@array); # remove the first element and store in first_element

my $last_element = pop(@array); # remove the last element and store in last_element

print "The first and last elements of the array are $first_element and $last_element\n";

push(@array, ( -5 .. +5 ) ); # add the numbers -5 to +5 to the array

print "The array currently contains: @array\n"; 

my @sortedarray = sort{$a <=> $b}(@array); # sort the array numerically

print "The sorted array contains: @sortedarray\n";

my @new_array = qw(cat dog rabbit turtle fox badger); # create a new array using qw
print "@new_array\n";

# 2
@array = qw(99players b_squad a-team 1_Boy A-team B_squad 2_Boy);

print "\n\n----- Sort the array below using the following sorting options -----\n";
# 3(a)
print "+ Sort numerically in ascending order:\n";
@array = sort {$a <=> $b} @array;
print "  @array\n";

# 3(b)
print "+ Sort numerically in descending order:\n";
@array = sort {$b <=> $a} @array;
print "  @array\n";

# 3(c)
print "+ Sort alphabetically in a case-insensitive manner:\n";
@array = sort {lc $a cmp lc $b} @array;
print "  @array\n\n\n";

# 4
my @words = qw(The quick brown fox jumps over the lazy dog and runs away);

# 5
print "----- Using appropriate array access and join functions -----\n";
my $string = join(" ", @words[0, 1, 3, 4, 5, 6, 8]);
print "$string\n";

my $string = join(" ", @words[0, 2, 3, 10, 11]);
print "$string\n";

my $string = join(" ", @words[0, 7, 8, 10]);
print "$string\n";

my $string = join(" ", @words[0, 8, 10, 11, 3]);
print "$string\n";

my $string = join(" ", @words[0, 1, 2, 8, 10, 5, 6, 7, 3]);
print "$string\n";

# 6
my @people = (["Clark", "Kent"], ["Lois", "Lane"], ["Bruce", "Wayne"]);

# Use push to add “Superman” to Clark Kent’s sub-array.
push(@{$people[0]}, "Superman");

# Use pop to remove Bruce Wayne from the matrix.
pop(@people);

# Use a directly indexed scalar add “Reporter” to the third element of Lois Lane’s sub-array.
$people[1][2] = "Reporter";

# Add a third sub-array with the values “Jimmy”, “Olsen”, “Photographer”.
push(@people, ["Jimmy", "Olsen", "Photographer"]);

# Print the resulting matrix to the screen.
print "\n\n------ Print the resulting matrix -----\n";
for my $row (@people) {
    print join(" ", @$row, "\n");
}

# Print only the last names to the screen.
print "\n\n----- Print only the last names -----\n";
for my $row (@people) {
    print "@$row[1]", "\n";
}