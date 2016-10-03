#!/usr/bin/perl

use strict;
use warnings;

print "opcode demo\n";

my $i_dat0 = 3;
my $i_dat1 = 17;
my $i_dat2 = 17;
my $i_rslt;

$i_rslt = 2 ** $i_dat0;
print "2 ** $i_dat0 == $i_rslt\n";
$i_rslt = $i_dat1 % $i_dat0;
print "$i_dat1 % $i_dat0 == $i_rslt\n";

$i_rslt = $i_dat1 <=> $i_dat0;
print "$i_dat1 <=> $i_dat0 == $i_rslt\n";
$i_rslt = $i_dat1 <=> $i_dat2;
print "$i_dat1 <=> $i_dat2 == $i_rslt\n";
$i_rslt = $i_dat0 <=> $i_dat1;
print "$i_dat0 <=> $i_dat1 == $i_rslt\n";

$i_rslt = $i_dat1 & $i_dat0;
print sprintf("%05b & %05b == %05b\n", $i_dat1, $i_dat0, $i_rslt);
$i_rslt = $i_dat1 | $i_dat0;
print sprintf("%05b | %05b == %05b\n", $i_dat1, $i_dat0, $i_rslt);
$i_rslt = ~$i_dat1;
print sprintf("~%05b == %05b\n", $i_dat1, $i_rslt);
$i_rslt = $i_dat1 ^ $i_dat0;
print sprintf("%05b ^ %05b == %05b\n", $i_dat1, $i_dat0, $i_rslt);

$i_rslt = $i_dat1 << $i_dat0;
print sprintf("%0b << %0b == %0b\n", $i_dat1, $i_dat0, $i_rslt);
$i_rslt = $i_dat1 >> $i_dat0;
print sprintf("%0b >> %0b == %0b\n", $i_dat1, $i_dat0, $i_rslt);

$i_rslt = ($i_dat1 > $i_dat0) ? $i_dat1 : $i_dat0;
print "($i_dat1 > $i_dat0) ? $i_dat1 : $i_dat0 == $i_rslt\n";
