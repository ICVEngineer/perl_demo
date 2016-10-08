#!/usr/bin/perl

package c_rect;
use strict;
use warnings;

sub new
{
    my $class = shift;
    my ($i_length, $i_width) = @_;
    my $self = {
        mi_length => $i_length,
        mi_width => $i_width,
    };
    $self->{mi_area} = $i_length * $i_width;
    #print "mi_length == $self->{mi_length}\n";
    #print "mi_width == $self->{mi_width}\n";
    #print "mi_area == $self->{mi_area}\n";
    bless $self, $class;
    return $self;
}

sub set_length
{
    my ($self, $mi_length) = @_;
    $self->{mi_length} = $mi_length;
    $self->update();
}

sub get_length
{
    my ($self) = @_;
    return $self->{mi_length};
}

sub set_width
{
    my ($self, $mi_width) = @_;
    $self->{mi_width} = $mi_width;
    $self->update();
}

sub get_width
{
    my ($self) = @_;
    return $self->{mi_width};
}

sub get_area
{
    my ($self) = @_;
    return $self->{mi_area};
}

sub update
{
    my ($self) = @_;
    $self->{mi_area} = $self->{mi_length} * $self->{mi_width};
}

sub print
{
    my ($self) = @_;
	print "====== c_rect obj ======\n";
    print "mi_length == $self->{mi_length}\n";
    print "mi_width == $self->{mi_width}\n";
    print "mi_area == $self->{mi_area}\n";
}

1;
