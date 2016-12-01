#!/usr/bin/perl -w
use strict;
use warnings;
print "Please type the filename of the protein sequence data:";
my $proteinfilename = <STDIN>;
chomp $proteinfilename;
open my $PROTEINFILE,'<',$proteinfilename
      or die"$0:failed to open input file'
      $proteinfilename':$!\n";
my @protein =<$PROTEINFILE>;
close $PROTEINFILE
      or warn "$0:failed to close input file'
     $proteinfilename':$!\n";
my $protein=join ('',@protein);
$protein=~ s/\s//g;
my $motif;
do {
   print "Enter a motif to search for:";
   $motif=<STDIN>;
   chomp $motif;
   if ($protein=~/$motif/){
   print "I found it!\n\n";
  }
  else {
   print "I couldn\'t find it.\n\n";
  }
} until ($motif =~ /^\s*$/);
exit;
