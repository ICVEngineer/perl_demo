#!/usr/bin/perl

use strict;
use warnings;

print "push shift demo\n";

my @ai_info = qw(1 2 3 4 5);
my $ai_info_size = @ai_info;
print "ai_info_size = $ai_info_size\n";
print "ai_info = @ai_info\n";

print "====== push ======\n";
push(@ai_info, 6);
push(@ai_info, qw(7 8));
my $ai_info_size = @ai_info;
print "ai_info_size = $ai_info_size\n";
print "ai_info = @ai_info\n";

print "====== pop ======\n";
my $i_info;
$i_info = pop(@ai_info);
my $ai_info_size = @ai_info;
print "ai_info_size = $ai_info_size\n";
print "ai_info = @ai_info\n";

print "====== shift ======\n";
$i_info = shift(@ai_info);
my $ai_info_size = @ai_info;
print "ai_info_size = $ai_info_size\n";
print "ai_info = @ai_info\n";
