#!/usr/bin/perl -w

use warnings;
use strict;

# \x{0327} - комбинированный символ нулевой длины
my $string = "fac\x{0327}ade";      # "façade"
$string =~ /fa.ade/;                # fails
$string =~ /fa\Xade/;               # succeeds

my @chars = split(//, $string);     # 7 letters in @chars
@chars = $string =~ /(.)/g;         # same thing
@chars = $string =~ /(\X)/g;        # 6 "letters" in @chars

# Метасивол \X соответствует (?:\PM\pM*):
# (?x:                # начало несохраняющей группы
#         \PM         # один символ без свойства M
#                     #   (например, буква)
#         \pM         # один символ со свойством M
#                     #   (например, акцент)
#         *           # который может повторяться любое количество раз
# )

__END__

=head1 NAME

Строки

=head2 NAME

Интерпретация комбинированных символов Юникода как одиночных символов

=head1 DESCRIPTION

Строка Юникода содержит комбинированные символы. Требуется интерпретировать каждую из комбинированных последовательностей как один логический символ.

=cut
