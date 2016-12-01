#!/usr/bin/perl -w
use strict;
use warnings;
my $word='MNIDDKL';
if ($word eq 'QSTVSGE'){
   print "QSTVSGE\n";
}
elsif($word eq 'MRQQDMISHDEL'){
   print "MRQQDMISHDEL\n";
}
elsif($word eq 'MNIDDKL'){
   print "MNIDDKL-the magic word!\n";
}
else{
   print "Is \"$word\" a peptide?This program is not sure.\n";
}
exit;
