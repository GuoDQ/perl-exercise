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
my $a;
my $c;
my $g;
my $t;
my $basecount;
$a=($DNA=~tr/Aa//);
$c=($DNA=~tr/Cc//);
$g=($DNA=~tr/Gg//);
$t=($DNA=~tr/Tt//);
$basecount=($DNA=~tr/ACGT//);
my $nonbase=(length $DNA) - $basecount;
print"A=$a C=$c G=$g T=$t errors=$nonbase\n";
my $fn_out = "output";
open my $FH_OUT,'>', $fn_out
   or die "$0:failed to open output file '$fn_out':$!\n";
print "Cannot open file \"$fn_out\" to write to!!\n\n";
print $FH_OUT "A=$a C=$c G=$g T=$t errors=$nonbase\n";
close $FH_OUT
 or warn "$0:failed to close output file'
$fn_out':$!\n";
exit;
