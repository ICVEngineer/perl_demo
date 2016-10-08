#!/usr/bin/perl

use strict;
use warnings;
use File::Basename;
use lib dirname(__FILE__);
use c_rect;
use c_cube;

print "class demo\n";

my $o_rect = c_rect->new(3, 5);
$o_rect->set_length(10);
my $i_length = $o_rect->get_length();
print "i_length == $i_length\n";
$o_rect->print();

my $o_cube = c_cube->new(3, 4, 5);
$o_cube->print();
$o_cube->set_length(6);
$o_cube->print();

my @ai_side_len = $o_cube->get_side_len();
foreach my $i_side_len (@ai_side_len)
{
	print "i_side_len == $i_side_len\n";
}
