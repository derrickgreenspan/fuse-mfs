#!/bin/sh
# $FreeBSD: src/tools/regression/fstest/tests/open/02.t,v 1.1 2007/01/17 01:42:10 pjd Exp $

desc="open returns ENAMETOOLONG if a component of a pathname exceeded 255 characters"

dir=`dirname $0`
. ${dir}/../misc.sh

echo "1..4"

expect 0 open ${name60} O_CREAT 0620
expect 0620 stat ${name60} mode
expect 0 unlink ${name60}
expect ENAMETOOLONG open ${name61} O_CREAT 0620
