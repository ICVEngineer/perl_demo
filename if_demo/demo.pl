#!/usr/bin/perl

use strict;
use warnings;

print "if demo\n";

my $i_a = 5;
my $i_b = 6;

for (my $i = 0; $i < 3; $i++)
{
    if ($i_a < $i_b)
    {
        print "i_a == $i_a, i_b == $i_b, $i_a < $i_b\n";
    }
    elsif ($i_a == $i_b)
    {
        print "i_a == $i_a, i_b == $i_b, $i_a == $i_b\n";
    }
    else
    {
        print "i_a == $i_a, i_b == $i_b, $i_a > $i_b\n";
    }
    
    $i_a++;
}
