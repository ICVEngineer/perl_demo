#!/usr/bin/perl

use strict;
use warnings;

my $str_src = "dat_out = 0x11223344aabbCCDDGG";
my $str_for_match="aabbccdd";
my @str_match;

$_ = $str_src;

if (/(\d+)/)
{
    $str_match[0] = $1;
    print "str_match[0] == $str_match[0]\n";
}

if (/(\w+)/)
{
    $str_match[0] = $1;
    print "str_match[0] == $str_match[0]\n";
}

if (/0x(\d+)/)
{
    $str_match[0] = $1;
    print "str_match[0] == $str_match[0]\n";
}

if (/0x(\w+)/)
{
    $str_match[0] = $1;
    print "str_match[0] == $str_match[0]\n";
}

if (/0x(\d+[a-f]+)/)
{
    $str_match[0] = $1;
    print "str_match[0] == $str_match[0]\n";
}

if (/0x(\d+[a-f]+)/i)
{
    $str_match[0] = $1;
    print "str_match[0] == $str_match[0]\n";
}

if (/(${str_for_match})/)
{
    $str_match[0] = $1;
    print "str_match[0] == $str_match[0]\n";
}
