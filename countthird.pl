#!/usr/bin/perl -w
use strict;
use warnings;
print "Please type the filename of the DNA sequence data:";
my $dna_filename =<STDIN>;
chomp $dna_filename;
unless (-e $dna_filename){
  print "File \"$dna_filename\"does\'t seem to exist!!\n";
  exit;
}
unless (open ( DNAFILE,$dna_filename)){
    print "Cannot open file\"$dna_filename\"\n\n";
    exit;
}
my @DNA=<DNAFILE>;
close DNAFILE;
my $DNA=join('',@DNA);
$DNA=~s/\s//g;
my $a=0;
my $c=0;
my $g=0;
my $t=0;
my $e=0;
while ($DNA=~/a/ig) {$a++}
while ($DNA=~/c/ig) {$c++}
while ($DNA=~/g/ig) {$g++}
while ($DNA=~/t/ig) {$t++}
while ($DNA=~/[^acgt]/ig){$e++}
print"A=$a C=$c G=$g T=$t errors=$e\n";
my $fn_out = "output";
open my $FH_OUT,'>', $fn_out
   or die "$0:failed to open output file '$fn_out':$!\n";
print "Cannot open file \"$fn_out\" to write to!!\n\n";
print $FH_OUT "A=$a C=$c G=$g T=$t errors=$e\n";
close $FH_OUT
 or warn "$0:failed to close output file'
$fn_out':$!\n";
exit;
