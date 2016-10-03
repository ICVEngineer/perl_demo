#!/usr/bin/perl

use strict;
use warnings;

print "loop demo\n";

my $i_cur_item;

print "=============================\n";
print " for \n";
print "=============================\n";
for (my $i = 0; $i < 5; $i++)
{
    print "i == $i\n";
}

print "=============================\n";
print " foreach \n";
print "=============================\n";
my @ai_info = (5..10);
foreach $i_cur_item (@ai_info)
{
    print "i_cur_item == $i_cur_item \n";
}

print "=============================\n";
print " while \n";
print "=============================\n";
my $loop_cnt = 0;
while ($loop_cnt < 3)
{
    print "loop_cnt == $loop_cnt \n";
    $loop_cnt++;
}
