#!/usr/bin/perl

use strict;
use warnings;

print "32b b-d-h demo\n";

print "======================\n";
print "====== unsigned ======\n";
print "======================\n";
my $ui_min = 0x0000_0000;
my $ui_mid = 0x8000_0000;
my $ui_max = 0xffff_ffff;
print "ui_min == $ui_min\n";
print "ui_mid == $ui_mid\n";
print "ui_max == $ui_max\n";

print "====== dec2bin ======\n";
my $ub_min = sprintf("0b%032b", $ui_min);
my $ub_mid = sprintf("0b%032b", $ui_mid);
my $ub_max = sprintf("0b%032b", $ui_max);
print "ub_min == $ub_min\n";
print "ub_mid == $ub_mid\n";
print "ub_max == $ub_max\n";

print "====== dec2hex ======\n";
my $uh_min = sprintf("0x%08x", $ui_min);
my $uh_mid = sprintf("0x%08x", $ui_mid);
my $uh_max = sprintf("0x%08x", $ui_max);
print "uh_min == $uh_min\n";
print "uh_mid == $uh_mid\n";
print "uh_max == $uh_max\n";

print "====== bin2dec ======\n";
my $ud_min = oct($ub_min);
my $ud_mid = oct($ub_mid);
my $ud_max = oct($ub_max);
print "ud_min == $ud_min\n";
print "ud_mid == $ud_mid\n";
print "ud_max == $ud_max\n";

print "====== hex2dec ======\n";
$ud_min = hex($uh_min);
$ud_mid = hex($uh_mid);
$ud_max = hex($uh_max);
print "ud_min == $ud_min\n";
print "ud_mid == $ud_mid\n";
print "ud_max == $ud_max\n";

print "====== hex2dec ======\n";
$ub_min = sprintf("0b%032b", hex($uh_min));
$ub_mid = sprintf("0b%032b", hex($uh_mid));
$ub_max = sprintf("0b%032b", hex($uh_max));
print "ub_min == $ub_min\n";
print "ub_mid == $ub_mid\n";
print "ub_max == $ub_max\n";

print "======================\n";
print "======= signed =======\n";
print "======================\n";
my $si_min = -2147483648;
my $si_mid = 0;
my $si_max = 2147483647;
print "si_min == $si_min\n";
print "si_mid == $si_mid\n";
print "si_max == $si_max\n";

sub s2_data
{
    my $ui_data = shift;
    #print "ui_data == $ui_data\n";
    if ($ui_data < 0)
    {
        $ui_data = ~($ui_data) + 1;
    }
    #print "ui_data == $ui_data\n";

    return $ui_data;
}

$si_min = s2_data($si_min);
$si_mid = s2_data($si_mid);
$si_max = s2_data($si_max);
print "====== dec2hex ======\n";
my $sh_min = sprintf("%08x", $si_min);
my $sh_mid = sprintf("%08x", $si_mid);
my $sh_max = sprintf("%08x", $si_max);
print "sh_min == $sh_min\n";
print "sh_mid == $sh_mid\n";
print "sh_max == $sh_max\n";

