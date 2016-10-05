#!/usr/bin/perl

use strict;
use warnings;
use ExtUtils::Installed;

print "installed pm demo\n";
my $o_inst= ExtUtils::Installed->new();
my @a_modules = $o_inst->modules();
foreach my $cur_module (@a_modules)
{
    print "cur_module == $cur_module\n";
}
