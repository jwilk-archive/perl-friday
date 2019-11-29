use Time::Piece;

BEGIN {
    *f = (localtime->wdayname eq 'Fri')
        ? sub() {}
        : sub {};
}

f/1;#/;+
