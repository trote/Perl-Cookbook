#!/usr/bin/perl -w

use warnings;
use strict;

my $string = "This is what you have";
my @array = split //, $string; # T h i s   i s   w h a t   y o u   h a v e

@array = unpack("C*", $string); # 84 104 105 115 32 105 115 32 119 104 97 116 32 121 111 117 32 104 97 118 101
@array = unpack("U*", $string); # 84 104 105 115 32 105 115 32 119 104 97 116 32 121 111 117 32 104 97 118 101

while ($string =~ /(.)/g) { # Символ '.' не совпадает с символом перевода строки 
}

__END__

=head1 NAME

Строки

=head2 NAME

Посимвольная обработка строк

=head1 DESCRIPTION

Требуется последовательно Обрабатывать строку по одному символу.

=cut
