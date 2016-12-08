#!/usr/bin/perl -w
use strict;
use warnings;
my $dna='AAAAA';
my $result = A_to_T($dna);
print "I changed all the A's in $dna to T's and got $result\n\n";
exit;
sub A_to_T{
    my($input) = @_;
    my $dna = $input;
    $dna =~ s/A/T/g;
    return $dna;
}
