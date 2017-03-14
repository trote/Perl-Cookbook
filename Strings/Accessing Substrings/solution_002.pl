#!/usr/bin/perl -w

use warnings;
use strict;

sub cut2fmt {
    my ( @positions ) = @_;
    
    my $template = '';
    my $lastpos  = 1;
    for my $place ( @positions ) {
        $template .= "A" . ($place - $lastpos) . " ";
        $lastpos   = $place;
    }
    $template .= "A*";
    $template;
}

my $string = "To be or not to be";
my $piece = unpack("x6 A6", $string); # skip 6, grab 6
print $piece, "\n"; # or not
my ( $b, $c ) = unpack("x6 A2 X5 A2", $string); # forward 6, grab 2; backward 5, grab 2
print $b, "\n"; # or
print $c, "\n"; # be
my @arr = unpack(cut2fmt(3, 6, 9, 13, 16), $string);
print join(" |", @arr), "\n"; # To | be | or | not | to | be

__END__

=head1 NAME

Строки

=head2 NAME

Работа с подстроками

=head1 DESCRIPTION

Требуется получить или модифицировать не целую строку, а лишь ее часть.

=cut
