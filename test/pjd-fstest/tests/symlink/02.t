#!/bin/sh
# $FreeBSD: src/tools/regression/fstest/tests/symlink/02.t,v 1.1 2007/01/17 01:42:11 pjd Exp $

desc="symlink returns ENAMETOOLONG if a component of the name2 pathname exceeded 255 characters"

dir=`dirname $0`
. ${dir}/../misc.sh

echo "1..7"

n0=`namegen`

expect 0 symlink ${name60} ${n0}
expect 0 unlink ${n0}
expect 0 symlink ${n0} ${name60}
expect 0 unlink ${name60}

expect ENAMETOOLONG symlink ${n0} ${name61}
expect 0 symlink ${name61} ${n0}
expect 0 unlink ${n0}
