#!/usr/bin/perl

use strict;
use warnings;

print "array string index demo\n";

print "====== array ======\n";
my @ai_info = qw(2 4 6 8 10);
print "ai_info = @ai_info\n";

my @ai_info_head_3 = @ai_info[0..2];
print "ai_info_head_3 = @ai_info_head_3\n";

my @ai_info_tail_3 = @ai_info[-3..-1];
print "ai_info_tail_3 = @ai_info_tail_3\n";

print "====== string ======\n";
my $str_info = "abcdef";
print "str_info = $str_info\n";

my $str_info_head_3 = substr($str_info, 0, 3);
print "str_info_head_3 = $str_info_head_3\n";

my $str_info_tail_3 = substr($str_info, -3, 3);
print "str_info_tail_3 = $str_info_tail_3\n";

