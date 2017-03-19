#!/usr/bin/perl -w

use warnings;
use strict;

binmode STDOUT, ':utf8'; # Указываем кодировку для файлового дескриптора STDOUT

use charnames ':full';

print "\N{GREEK CAPITAL LETTER DELTA} is called delta.\n"; # Δ is called delta.

my $code = 0x394;
my $name = 'GREEK CAPITAL LETTER DELTA';
# Character U+0394 (Δ) is named GREEK CAPITAL LETTER DELTA
printf "Character U+%04X (%s) is named %s\n",
    $code, chr($code), charnames::viacode($code);

$code = charnames::vianame($name);
# GREEK CAPITAL LETTER DELTA is character U+0394 (Δ)
printf "%s is character U+%04X (%s)\n",
    $name, $code, chr($code);

__END__

=head1 NAME

Строки

=head2 NAME

Использование именованных символов Юникода

=head1 DESCRIPTION

Требуется обозначить нестандартные символы в программе по именам.

=cut
