#!/usr/bin/perl

use strict;
use warnings;

print "replace demo\n";

my $str_cur_info = "int_mask 4 RW 3-0 4'Hf mask int";
$str_cur_info =~ s/\d+'h/0x/i;
print "str_cur_info == $str_cur_info\n";
