#!/bin/sh
# $FreeBSD: src/tools/regression/fstest/tests/unlink/03.t,v 1.1 2007/01/17 01:42:12 pjd Exp $

desc="unlink returns ENAMETOOLONG if an entire path name exceeded 1023 characters"

dir=`dirname $0`
. ${dir}/../misc.sh

echo "1..12"

expect 0 mkdir ${name60} 0755
expect 0 mkdir ${name60}/${name60} 0755
expect 0 mkdir ${name60}/${name60}/${name60} 0755
expect 0 mkdir ${component4} 0755
expect 0 create ${component5} 0644
expect 0 unlink ${component5}
expect ENOENT unlink ${component5}
create_too_long
expect ENAMETOOLONG unlink ${too_long}
unlink_too_long
expect 0 rmdir ${component4}
expect 0 rmdir ${name60}/${name60}/${name60}
expect 0 rmdir ${name60}/${name60}
expect 0 rmdir ${name60}
