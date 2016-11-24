#!usr/bin/perl -w
use strict;
use warnings;
my $DNA = 'ACGGGAGGCGGGAAAATTACTCGGCATTAGC';
print "Here is the starting DNA:\n\n";
print "$DNA\n\n";
my $RNA = $DNA;
$RNA =~ s/T/U/g;
print "Here is the result of transcribing the DNA to RNA:\n\n";
print "$RNA\n";
exit;
