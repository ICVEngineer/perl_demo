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
print "i_length = $i_length\n";
$o_rect->print();

my $o_cube = c_cube->new(3, 4, 5);
$o_cube->print();
$o_cube->set_length(6);
$o_cube->print();
