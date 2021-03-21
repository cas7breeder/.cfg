#!/bin/bash

TMPFILE=`mktemp /tmp/vipe.XXXXXXXX`

# cat stdin (default)
cat > ${TMPFILE}

# open with the default editor
${VISUAL} ${TMPFILE} < /dev/tty > /dev/tty

cat ${TMPFILE}

rm ${TMPFILE}

