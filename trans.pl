#!/usr/bin/perl -w
use strict;
use warnings;
use TRANS;
my $dna = 'CGACGTCTTCGTACGGGACTAGCTCGTCGGTCGC';
my $protein=' ';
my $codon;
for (my $i=0;$i<(length($dna)-2);$i+=3){
 $codon=substr($dna,$i,3);
 $protein .=codon2aa($codon);
}
print "I translated the DNA\n\n$dna\n\n into the protein\n\$protein\n\n";
exit;
