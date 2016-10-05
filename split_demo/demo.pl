#!/usr/bin/perl

use strict;
use warnings;

print "split demo\n";

my $str_cur_info = "int_mask 4 RW 3-0 4'h0 mask int";
my ($field_name, $field_width, $field_type, 
    $field_pos, $field_default, @field_comment) =
    split(/ /, $str_cur_info);
print "field_name == $field_name\n";
print "field_width == $field_width\n";
print "field_type == $field_type\n";
print "field_pos == $field_pos\n";
print "field_default == $field_default\n";
print "field_comment == @field_comment\n";
