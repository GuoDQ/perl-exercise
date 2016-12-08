#!/usr/bin/perl -w
use strict;
use warnings;
my ($USAGE) = "$0 DNA\n\n";
unless (@ARGV){
   print $USAGE;
   exit;
}
#my ($dna) = $ARGV[0];
my $dna = join "", @ARGV;
my ($num_of_Gs) = countG($dna);
print "\nThe DNA $dna has $num_of_Gs G\'s in it!\n\n";
exit;

sub countG{
  my ($dna) = @_;
  my ($count) = 0;
  $count = ($dna =~ tr/Gg//);
  return $count;
}
