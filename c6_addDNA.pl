#!/usr/bin/perl -w
use strict;
use warnings;
my $dna='CGACGTCTTCTCAGGCGA';
my $longer_dna=addACGT($dna);
print"I added ACGT to $dna and got $longer_dna\n\n";
exit;

sub addACGT{
    my($dna)=@_;   
    $dna .='ACGT';
    return $dna;
}

