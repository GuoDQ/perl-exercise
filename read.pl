#!/usr/bin/perl -w
use strict;
use warnings;
my $proteinfilename= 'NM_021964fragment.pep';
open my $PROTEINFILE,'<',$proteinfilename
    or die "$0 : failed to open input file '
 $proteinfilename' : $!\n";
my $protein1 =<$PROTEINFILE>;
my $protein2 =<$PROTEINFILE>;
my $protein3 =<$PROTEINFILE>;
close $PROTEINFILE
   or warn "$0 : failed to close input file '
  $proteinfilename' : $!\n";
print "Here is the protein:\n";
print "$protein1\n$protein2\n$protein3\n";
exit;
