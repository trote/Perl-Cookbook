#!/usr/bin/perl -w

use warnings;
use strict;

my ( $alpha, $beta, $production ) = qw( January March August );
# move beta       to alpha,
# move production to beta,
# move alpha      to production
($alpha, $beta, $production) = ($beta, $production, $alpha);

__END__

=head1 NAME

Строки

=head2 NAME

Перестановка значений без использования временных переменных

=head1 DESCRIPTION

Требуется поменять значения двух скалярных переменных, без использования временной переменной.

=cut
