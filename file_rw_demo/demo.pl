#!/usr/bin/perl

use strict;
use warnings;

use File::Basename;

print "file rw demo\n";

my $cur_dir = dirname(__FILE__);
print "cur_dir = $cur_dir\n";

my $rd_file_path = "${cur_dir}/../rd_files/rd_hex_file.txt";
my $wr_file_path = "${cur_dir}/wr_hex_file.txt";
print "rd_file_path == $rd_file_path\n";
print "wr_file_path == $wr_file_path\n";

open (RD_FILE, "< $rd_file_path") or die print "can't open file, $!\n";
open (WR_FILE, "> $wr_file_path") or die print "can't open file, $!\n";

my $str_line_info;
my $i_line_cnt = 0;
while ($str_line_info = <RD_FILE>)
{
    $i_line_cnt++;
    chomp($str_line_info);
    print "i_line_cnt == $i_line_cnt, str_line_info == $str_line_info\n";
    print WR_FILE "$i_line_cnt $str_line_info\n";
}
close(RD_FILE);
close(WR_FILE);
