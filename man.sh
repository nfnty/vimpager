#!/usr/bin/bash

set -o errexit -o noclobber -o noglob -o nounset -o pipefail
IFS=$'\n'

if [[ "${#}" -gt 0 ]]; then
    separator='--'
fi
perl -p -e 's/(?:\x1B\x5B|\x9B)[\x30-\x3F]*[\x20-\x2F]*[\x40-\x7E]//g' | \
    nvim -R -c 'set noswapfile filetype=man' ${separator:-} "${@:--}"
