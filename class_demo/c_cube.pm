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
    #print "mi_length == $self->{mi_length}\n";
    #print "mi_width == $self->{mi_width}\n";
    #print "mi_height == $self->{mi_height}\n";
    #print "mi_area == $self->{mi_area}\n";
    #print "mi_volume == $self->{mi_volume}\n";
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

sub update
{
    my ($self) = @_;
    $self->c_rect::update();
    $self->{mi_volume} = $self->{mi_area} * $self->{mi_height};
}

sub print
{
    my ($self) = @_;
    $self->c_rect::print();
    print "mi_height == $self->{mi_height}\n";
    print "mi_volume == $self->{mi_volume}\n";
}

1;
