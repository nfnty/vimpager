#!/usr/bin/bash
sed -r 's/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g' | col -x -b | vim -R -c 'set noswf ft= nomod fdl=99' -
