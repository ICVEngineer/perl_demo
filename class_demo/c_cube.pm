#!/usr/bin/perl

package c_cube;
use strict;
use warnings;
use c_rect;

sub new
{
    my $class = shift;
    my ($i_length, $i_width, $i_height) = @_;
    my $self = c_rect->new($i_length, $i_width);
    $self->{mi_height} = $i_height;
    $self->{mi_volume} = $self->{mi_area} * $i_height;

	my @ai_side_len = ($i_length, $i_width, $i_height);
	@{$self->{ai_side_len}} = @ai_side_len;

    #print "mi_length == $self->{mi_length}\n";
    #print "mi_width == $self->{mi_width}\n";
    #print "mi_height == $self->{mi_height}\n";
    #print "mi_area == $self->{mi_area}\n";
    #print "mi_volume == $self->{mi_volume}\n";
	#print "ai_side_len == @{$self->{ai_side_len}}\n";
    bless $self, $class;
    return $self;
}

sub set_length
{
    my ($self, $mi_length) = @_;
    $self->{mi_length} = $mi_length;
    $self->update();
}

sub set_width
{
    my ($self, $mi_width) = @_;
    $self->{mi_width} = $mi_width;
    $self->update();
}

sub set_height
{
    my ($self, $mi_height) = @_;
    $self->{mi_height} = $mi_height;
    $self->update();
}

sub get_height
{
    my ($self) = @_;
    return $self->{mi_height};
}

sub get_volume
{
    my ($self) = @_;
    return $self->{mi_volume};
}

sub get_side_len
{
	my ($self) = @_;
	my @ai_side_len = @{$self->{ai_side_len}};
	return @ai_side_len;
}

sub update
{
    my ($self) = @_;
    $self->c_rect::update();
    my $mi_length = $self->{mi_length};
    my $mi_width  = $self->{mi_width};
    my $mi_height = $self->{mi_height};
    my $mi_area   = $self->{mi_area};
    $self->{mi_volume} = $mi_area * $mi_height;
	my @ai_side_len = ($mi_length, $mi_width, $mi_height);
    @{$self->{ai_side_len}} = @ai_side_len;
}

sub print
{
    my ($self) = @_;
	print "====== c_cube obj ======\n";
	print "mi_length == $self->{mi_length}\n";
	print "mi_width == $self->{mi_width}\n";
	print "mi_area == $self->{mi_area}\n";
    print "mi_height == $self->{mi_height}\n";
    print "mi_volume == $self->{mi_volume}\n";
    print "ai_side_len == @{$self->{ai_side_len}}\n";
}

1;
