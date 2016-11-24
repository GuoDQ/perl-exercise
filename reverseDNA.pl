#!/usr/bin/perl -w
use strict;
use warnings;
my $DNA = 'ACGGGAGGACGGGAAAATTACTACGGCATTAGC';
print "Here is the starting DNA:\n\n";
print "$DNA\n\n";
my $revcom = reverse $DNA;
$revcom =~ tr/ACGT/TGCA/;
print "Here is the reverse complement DNA:\n\n";
print "$revcom\n";
exit;
