#!/usr/bin/perl -w
use strict;
use warnings;
my $DNA='AAAAAAAAAAAAAAAAAAAAAAAAAAA';
my $i;
my $mutant;
srand(time| $$);
$mutant = mutate($DNA);
print "\nMutant DNA\n\n";
print "\nHere is the original DNA:\n\n";
print "$DNA\n";
print "\nHere is the matant DNA:\n\n";
print "$mutant\n";
print "\nHere are 10 more successive mutantions:\n\n";
for ( $i = 0 ; $i < 10 ; ++$i ) {
     $mutant = mutate($mutant);
     print "$mutant\n";
}
exit;

sub mutate {
 my($dna) = @_;
 my(@nucleotides)=('A', 'C', 'G', 'T');
 my($position)=randomoposition($dna);
 my($newbase)=randomnucleotide(@nucleotides);
 substr($dna , $position , 1 , $newbase );
 return $dna;
}

sub randomelement {
    my (@array) = @_;
    return $array[ rand @array ];
}

sub randomnucleotide {
    my (@nucleotides) = ('A' , 'C' , 'G' , 'T' );
    return randomelement(@nucleotides);
}

sub randomoposition {
    my ($string) = @_;
    return int rand length $string;
}

 
