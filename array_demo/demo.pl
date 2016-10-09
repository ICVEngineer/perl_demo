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

my $ai_info_size = @ai_info;
print "ai_info_size = $ai_info_size\n";

for ($i = 0; $i < 3; $i++)
{
    print "ai_info[$i] = $ai_info[$i]\n";

    if ($i == $#ai_info)
    {
        print "last idx == $#ai_info\n";
    }
}

my @ai_2d_info;
for ($i = 0; $i < 3; $i++)
{
    for ($j = 0; $j < 2; $j++)
    {
        $ai_2d_info[$i][$j] = (($i * 2) + 2)*($j + 1);
    }
}

my $ai_2d_info_row = @ai_2d_info;
my $ai_2d_info_col = @{$ai_2d_info[0]};
print "ai_2d_info_row = $ai_2d_info_row\n";
print "ai_2d_info_col = $ai_2d_info_col\n";
for ($i = 0; $i < 3; $i++)
{
    for ($j = 0; $j < 2; $j++)
    {
        print "ai_2d_info[$i][$j] = $ai_2d_info[$i][$j]\n";
    }
}
