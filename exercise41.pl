#!/usr/bin/perl -w
use strict;
use warnings;
my @bases = ('A','C','G','T');
my $base1 = pop @bases;
print "Here's the element removed from the end:";
print $base1,"\n\n";
print "Here's the remaining array of bases:";
print "@bases";



