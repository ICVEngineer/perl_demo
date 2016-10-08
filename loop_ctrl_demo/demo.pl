#!/usr/bin/perl

use strict;
use warnings;

print "loop demo\n";

my $i_cur_item;
my ($i, $j);

print "=============================\n";
print " for \n";
print "=============================\n";
for ($i = 0; $i < 5; $i++)
{
    if ($i == 1)
    {
        next;
    }
    elsif ($i == 3)
    {
        last;
    }
    print "i == $i\n";
}

print "=============================\n";
print " foreach \n";
print "=============================\n";
my @ai_info = (0..4);
foreach $i_cur_item (@ai_info)
{
    if ($i_cur_item == 1)
    {
        next;
    }
    elsif ($i_cur_item == 3)
    {
        last;
    }
    print "i_cur_item == $i_cur_item \n";
}

print "=============================\n";
print " while \n";
print "=============================\n";
my $loop_cnt = 0;
while ($loop_cnt < 5)
{
    if ($loop_cnt == 1)
    {
        $loop_cnt++;
        next;
    }
    elsif ($loop_cnt == 3)
    {
        $loop_cnt++;
        last;
    }
    print "loop_cnt == $loop_cnt \n";
    $loop_cnt++;
}

print "=============================\n";
print " next LABEL\n";
print "=============================\n";
I_LOOP:for ($i = 0; $i < 5; $i++)
{
	for ($j = 0; $j < 3; $j++)
	{
		if (($i * $j) == 2)
		{
			print "$i * $j == 2\n";
			next I_LOOP;
		}
		print "i == $i, j == $j\n";
	}
}
