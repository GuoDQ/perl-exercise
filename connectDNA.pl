#!/usr/bin/perl -l
use strict;
use warnings;
my $DNA1 = 'ACGGGAGGACGGGAAAATTACTACGGCATTAGC';
my $DNA2 = 'ATAGTGCCGTGAGAGTGATGTAGTA';
print "Here are the original two DNA fragments:\n\n";
print $DNA1,"\n";
print $DNA2,"\n";
my $DNA3 = "$DNA1$DNA2";
print "Here is the concatenation of the first two fragments (version 1):\n\n";
print "$DNA3\n\n";

#the second method
$DNA3 =$DNA1 . $DNA2;
print "$DNA3\n\n";

#the third method
print $DNA1,$DNA2,"\n"; 

exit;
