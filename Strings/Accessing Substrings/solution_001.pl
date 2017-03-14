#!/usr/bin/perl -w

use warnings;
use strict;

my $string = "This is what you have";
my $first  = substr($string, 0, 1);  # "T"
my $start  = substr($string, 5, 2);  # "is"
my $rest   = substr($string, 13);    # "you have"
my $last   = substr($string, -1);    # "e"
my $end    = substr($string, -4);    # "have"
my $piece  = substr($string, -8, 3); # "you"

print $string, "\n";               # This is what you have
substr($string, 5, 2) = "wasn't";  # This wasn't what you have
substr($string, -12)  = "ondrous"; # This wasn't wondrous
substr($string, 0, 1) = "";        # his wasn't wondrous
substr($string, -10)  = "";        # his wasn'

__END__

=head1 NAME

Строки

=head2 NAME

Работа с подстроками

=head1 DESCRIPTION

Требуется получить или модифицировать не целую строку, а лишь ее часть.

=cut
