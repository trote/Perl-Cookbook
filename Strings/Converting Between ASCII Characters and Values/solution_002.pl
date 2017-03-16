#!/usr/bin/perl -w

use warnings;
use strict;

my $string = "string";
my @ASCII_bytes = unpack("C*", $string); # 115 116 114 105 110 103
$string = pack("C*", @ASCII_bytes);

my @Unicode_points = unpack("U*", $string); # 115 116 114 105 110 103
$string = pack("U*", @Unicode_points);

printf "%vd\n", "fac\x{0327}ade"; # 102.97.99.807.97.100.101
printf "%vx\n", "fac\x{0327}ade"; # 66.61.63.327.61.64.65


__END__

=head1 NAME

Строки

=head2 NAME

Преобразование между символами и ASCII-кодами

=head1 DESCRIPTION

Требуется вывести код, соответствующий некоторому символу в кодировке ASCII, или наоборот - символ по ASCII-коду.

=cut
