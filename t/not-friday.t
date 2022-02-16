#!/bin/sh

set -e -u
echo 1..1
pdir="${0%/*}/.."
mod="$pdir/friday.pm"
date='2019-11-30 00:03:06'
xs=0
out=$(faketime -f "$date" perl -MO=Deparse "$mod" 2>&1) || xs=$?
sed -e 's/^/# /' <<EOF
$out
EOF
if [ $xs -eq 255 ]
then
    echo ok 1
else
    echo not ok 1 exit status $xs
fi

# vim:ts=4 sts=4 sw=4 et ft=sh
