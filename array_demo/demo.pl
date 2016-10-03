#!/usr/bin/perl

use strict;
use warnings;

print "array demo\n";

my ($i,$j);

my @ai_info;
for ($i = 0; $i < 3; $i++)
{
    $ai_info[$i] = ($i * 2) + 2;
}

for ($i = 0; $i < 3; $i++)
{
    print "ai_info[$i] = $ai_info[$i]\n";
}

my @ai_2d_info;
for ($i = 0; $i < 3; $i++)
{
    for ($j = 0; $j < 2; $j++)
    {
        $ai_2d_info[$i][$j] = (($i * 2) + 2)*($j + 1);
    }
}

for ($i = 0; $i < 3; $i++)
{
    for ($j = 0; $j < 2; $j++)
    {
        print "ai_2d_info[$i][$j] = $ai_2d_info[$i][$j]\n";
    }
}
