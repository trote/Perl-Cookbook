#!/usr/bin/perl -w

use warnings;
use strict;

my $num;
my $char = 'e';
$num     = ord($char); # 101
$char    = chr($num);  # 'e'
$char    = sprintf("%c", $num); # slower than chr($num)

__END__

=head1 NAME

Строки

=head2 NAME

Преобразование между символами и ASCII-кодами

=head1 DESCRIPTION

Требуется вывести код, соответствующий некоторому символу в кодировке ASCII, или наоборот - символ по ASCII-коду.

=cut
