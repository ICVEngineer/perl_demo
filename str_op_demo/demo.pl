#!/usr/bin/perl

use strict;
use warnings;

print "opcode demo\n";

print "====== string cmp ======\n";
my $str_info0 = "aabb";
my $str_info1 = "aacc";
my $str_info2 = "aacc";

my $i_rslt;

$i_rslt = $str_info0 lt $str_info1;
print "$str_info0 lt $str_info1 == $i_rslt\n";
$i_rslt = $str_info0 le $str_info1;
print "$str_info1 le $str_info0 == $i_rslt\n";
$i_rslt = $str_info1 gt $str_info0;
print "$str_info1 gt $str_info0 == $i_rslt\n";
$i_rslt = $str_info1 ge $str_info0;
print "$str_info1 ge $str_info0 == $i_rslt\n";
$i_rslt = $str_info1 eq $str_info2;
print "$str_info1 eq $str_info2 == $i_rslt\n";
$i_rslt = $str_info0 ne $str_info1;
print "$str_info0 ne $str_info1 == $i_rslt\n";

$i_rslt = $str_info0 cmp $str_info1;
print "$str_info0 cmp $str_info1 == $i_rslt\n";
$i_rslt = $str_info1 cmp $str_info0;
print "$str_info1 cmp $str_info0 == $i_rslt\n";
$i_rslt = $str_info1 cmp $str_info2;
print "$str_info1 cmp $str_info2 == $i_rslt\n";

print "====== string join ======\n";
my $str_rslt = ${str_info0}.$str_info1;
print "${str_info0}.$str_info1 == $str_rslt\n";
