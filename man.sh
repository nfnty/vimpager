#!/usr/bin/bash

set -o errexit -o noclobber -o noglob -o nounset -o pipefail
IFS=$'\n'

sed --regexp-extended 's/\x1B\[([0-9]{1,2}(;[0-9]{1,2})*)?[m|K]//g' | \
    col --spaces --no-backspaces | \
    nvim -R -c 'set noswf nomod ft=man' -
