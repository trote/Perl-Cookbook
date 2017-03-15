#!/usr/bin/perl -w

use warnings;
use strict;

my ($b, $c) = (0, 1);
my $a = $b || $c;  # 1
$a = ($b or $c);   # 1
$a = ($b and $c);  # 0
$a ||= $c;         # 1
$a = $b ? $b : $c; # 1

$b = undef;
$a = defined($b) ? $b : $c; # 1
$a = $b // $c;              # 1
$b //= $a;                  # 1

__END__

=head1 NAME

Строки

=head2 NAME

Выбор занчения по умолчанию

=head1 DESCRIPTION

Требуется закрепить за скалярной переменной значение по умолчанию, но лишь в том случае, если оно не было задано явно в программе.

=cut
