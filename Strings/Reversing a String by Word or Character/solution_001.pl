#!/usr/bin/perl -w

use warnings;
use strict;

my $string = "This is what you have";                  # This is what you have
my $revchars = reverse $string;                        # evah uoy tahw si sihT
my $revwords = join(" ", reverse split(" ", $string)); # have you what is This
my @words = split " ", $string;
my $confused = reverse @words;                         # evahuoytahwsisihT

__END__

=head1 NAME

Строки

=head2 NAME

Обратная перестановка слов и символов

=head1 DESCRIPTION

Требуется изменить порядок символов или слов в строке на противоположный.

=cut
