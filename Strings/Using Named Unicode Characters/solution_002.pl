#!/usr/bin/perl -w

use warnings;
use strict;

binmode STDOUT, ':utf8'; # Указываем кодировку для файлового дескриптора STDOUT

use charnames ':short';

print "\N{greek:Delta} is an upper-case delta.\n"; # Δ is an upper-case delta.

__END__

=head1 NAME

Строки

=head2 NAME

Использование именованных символов Юникода

=head1 DESCRIPTION

Требуется обозначить нестандартные символы в программе по именам.

=cut
