#!/usr/bin/perl

use strict;
use warnings;

use File::Basename;
use FileHandle;

print "file rw demo\n";

my $cur_dir = dirname(__FILE__);
print "cur_dir = $cur_dir\n";

my $rd_file_path = "${cur_dir}/../rd_files/rd_hex_file.txt";
print "rd_file_path == $rd_file_path\n";

my @wr_file_path;
for (my $i = 0; $i < 4; $i++)
{
    $wr_file_path[$i] = "${cur_dir}/wr_hex_file_${i}.txt";
    print "wr_file_path[$i] == $wr_file_path[$i]\n";
}

my $rd_file_fh = FileHandle->new("$rd_file_path", "r");
my @wr_file_fh;
for (my $i = 0; $i < 4; $i++)
{
    $wr_file_fh[$i] = FileHandle->new("$wr_file_path[$i]", "w");
}

my $str_line_info;
my $i_line_cnt = 0;
while ($str_line_info = <$rd_file_fh>)
{
    $i_line_cnt++;
    chomp($str_line_info);
    print "i_line_cnt == $i_line_cnt, str_line_info == $str_line_info\n";
    for (my $i = 0; $i < 4; $i++)
    {
        #print $wr_file_fh[$i] 
        $wr_file_fh[$i]->print("$i $i_line_cnt $str_line_info\n");
    }
}

$rd_file_fh->close();
for (my $i = 0; $i < 4; $i++)
{
    $wr_file_fh[$i]->close();
}
