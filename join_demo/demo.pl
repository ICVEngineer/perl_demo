#!/usr/bin/perl

use strict;
use warnings;

print "join demo\n";

my @stra_addr = ("88", "99", "aa", "bb", "cc", "dd", "ee", "ff");
foreach my $cur_addr (@stra_addr)
{
    print "cur_addr == $cur_addr\n";
}

my $str_addr = join("", @stra_addr);
print "str_addr == $str_addr\n";

my @stra_date = ("2016", "10", "10");
foreach my $cur_date (@stra_date)
{
    print "cur_date == $cur_date\n";
}

my $date_type="/";
my $str_date = join("$date_type", @stra_date);
print "str_date == $str_date\n";

$date_type="-";
$str_date = join("$date_type", @stra_date);
print "str_date == $str_date\n";
