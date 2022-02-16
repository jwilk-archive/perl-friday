# general idea shamelessly stolen from Randal L. Schwartz:
# https://www.perlmonks.org/index.pl?node_id=44722

use Time::Piece;

BEGIN {
    *f = (localtime->wdayname eq 'Fri')
        ? sub() {}
        : sub {};
}

f/1;#/+
