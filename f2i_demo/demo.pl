#!/usr/bin/perl

use strict;
use warnings;
use ExtUtils::Installed;
use Math::Round;
use POSIX;

my $o_inst= ExtUtils::Installed->new();
my @a_modules = $o_inst->modules();
my $i_match_cnt = 0;

foreach my $cur_module (@a_modules)
{
    if ($cur_module =~ /Math::Round/)
    {
        $i_match_cnt++;
        print "cur_module == $cur_module, match\n";
    }
    #else
    #{
    #    print "cur_module == $cur_module, not match\n";
    #}
}

if ($i_match_cnt == 1)
{
    print "all needs modules match\n"; 
}
else
{
    print "some needs modules not match, ppm install pm_name\n";
    exit;
}

print "float to int demo\n";

my $i_dat0 = 3.5;
my $i_dat1 = 3.4;
my $i_dat2 = -3.5;
my $i_dat3 = -3.4;
my $i_rslt;

print "====== $i_dat0 ======\n";
$i_rslt = round($i_dat0);
print "round($i_dat0) == $i_rslt\n";
$i_rslt = ceil($i_dat0);
print "ceil($i_dat0) == $i_rslt\n";
$i_rslt = floor($i_dat0);
print "floor($i_dat0) == $i_rslt\n";

print "====== $i_dat1 ======\n";
$i_rslt = round($i_dat1);
print "round($i_dat1) == $i_rslt\n";
$i_rslt = ceil($i_dat1);
print "ceil($i_dat1) == $i_rslt\n";
$i_rslt = floor($i_dat1);
print "floor($i_dat1) == $i_rslt\n";

print "====== $i_dat2 ======\n";
$i_rslt = round($i_dat2);
print "round($i_dat2) == $i_rslt\n";
$i_rslt = ceil($i_dat2);
print "ceil($i_dat2) == $i_rslt\n";
$i_rslt = floor($i_dat2);
print "floor($i_dat2) == $i_rslt\n";

print "====== $i_dat3 ======\n";
$i_rslt = round($i_dat3);
print "round($i_dat3) == $i_rslt\n";
$i_rslt = ceil($i_dat3);
print "ceil($i_dat3) == $i_rslt\n";
$i_rslt = floor($i_dat3);
print "floor($i_dat3) == $i_rslt\n";
