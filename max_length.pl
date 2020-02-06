#!/usr/bin/perl
use strict;
use warnings;

my $file = $ARGV[0] or die "Need input file name\n";
my $space = "                                                                                                                ";

open INFILE, "$file" ;
my @lines = <INFILE> ;
close INFILE ;

my $MAX_LEN =  0;
foreach my $line (@lines) {
        if (length($line) > $MAX_LEN ) {$MAX_LEN =  length($line); }
}
foreach my $line (@lines) {
       chomp($line);
       print $line . substr($space,1,($MAX_LEN - length($line)))." = SRC\.". $line .",\n";
}
