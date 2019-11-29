use Time::Piece;

BEGIN {
    *p = (localtime->wdayname eq 'Fri')
        ? sub() {}
        : sub {};
}

p/1;#/;+
