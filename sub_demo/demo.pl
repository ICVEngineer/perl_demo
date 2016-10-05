#!/usr/bin/perl

use strict;
use warnings;

print "sub demo\n";

print "======================\n";
print "======= no arg =======\n";
print "======================\n";
sub call_hello
{
    print "hello world\n";
}
my $rslt_call_hello = &call_hello();
print "rslt_call_hello = $rslt_call_hello\n";

print "====================\n";
print "====== return ======\n";
print "====================\n";
sub call_return
{
    my $rslt_info;
    $rslt_info = 3 * 5;
}
my $rslt_call_return = &call_return();
print "rslt_call_return = $rslt_call_return\n";

print "====================\n";
print "======= para =======\n";
print "====================\n";
sub call_shift
{
    my $para_0 = shift;
    my $para_1 = shift;
    my $rslt_info;
    $rslt_info = $para_0 * $para_1;
}
my $rslt_call_shift = &call_shift(2, 6);
print "rslt_call_shift = $rslt_call_shift\n";

print "====================\n";
print "======= para =======\n";
print "====================\n";
sub call_at
{
    my ($para_0, $para_1) = @_;
    my $rslt_info;
    $rslt_info = $para_0 * $para_1;
}
my $rslt_call_at = &call_at(3, 6);
print "rslt_call_at = $rslt_call_at\n";
