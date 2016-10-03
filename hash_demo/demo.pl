#!/usr/bin/perl

use strict;
use warnings;

print "hash demo\n";

my %mem;
my ($i_addr, $i_data);
for ($i_addr = 0; $i_addr < 4; $i_addr++)
{
    $i_data = (($i_addr + 3) * 7) % 16;
    #print sprintf("%08x %08x\n", $i_addr, $i_data);
    $mem{$i_addr} = $i_data;
}

my $i_size = keys %mem;
print "i_size == $i_size\n";

my @ai_addr = keys %mem;
my @ai_data = values %mem;

foreach $i_addr (@ai_addr)
{
    print sprintf("i_addr == %08x\n", $i_addr);
}

foreach $i_data (@ai_data)
{
    print sprintf("i_data == %08x\n", $i_data);
}

while (($i_addr, $i_data) = each %mem)
{
    print sprintf("i_addr == %08x, i_data == %08x\n", $i_addr, $i_data);
}

my @ai_by_addr = sort { $a <=> $b } keys %mem;
my @ai_by_data = sort { $mem{$a} <=> $mem{$b} } keys %mem;

print "====== sort by addr ======\n";
foreach $i_addr (@ai_by_addr)
{
    print sprintf("i_addr == %08x, i_data == %08x\n", $i_addr, $mem{$i_addr});
}

print "====== sort by data ======\n";
foreach $i_addr (@ai_by_data)
{
    print sprintf("i_addr == %08x, i_data == %08x\n", $i_addr, $mem{$i_addr});
}
