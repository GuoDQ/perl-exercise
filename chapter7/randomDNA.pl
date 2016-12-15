#!/usr/bin/perl -w
use strict;
use warnings;
my $size=20;
my $max_length=10;
my $min_length=7;
my @random_DNA=();
srand( time | $$ );
@random_DNA = make_random_DNA_set($min_length , $max_length , $size );
print "Here is an array $size randimly generated DNA sequences with lengths between $min_length and $max_length:\n\n";
foreach my $dna(@random_DNA){
 print "$dna\n";
}
print"\n";
exit;

sub make_random_DNA_set{
 my ($min_length ,$max_length, $size)=@_;
 my $length;
 my $dna;
 my @set;
 for (my $i=0;$i<$size;++$i){
     $length=randomlength();
print "$length\n";
     $dna=make_random_DNA($length);
     push(@set,$dna);
     }
 return @set;
}

sub randomlength{
 return(int(rand($max_length - $min_length + 1))+$min_length);
}

sub make_random_DNA{
 my $length=@_;
 my $dna;
 for (my $i=0 ; $i < $length ; ++$i){
 $dna .= randomnucleotide();
 }
 return $dna;
}

sub randomnucleotide{
 my (@nucleotides)=('A','C','G','T');
 return randomelement(@nucleotides);
}

sub randomelement{
 my(@array)=@_;
 return $array[rand @array];
}


