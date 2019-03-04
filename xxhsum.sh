#!/bin/bash

set -euo pipefail
algorithm=XXH64
if [ $# -gt 1 ] && [ "$1" = "-H0" ]; then
    algorithm=XXH32
    shift
elif [ $# -gt 1 ] && [ "$1" = "-H1" ]; then
    algorithm=XXH64
    shift
fi

# get the hashes
. "$(dirname $0)/xxhash.sh"

if [ $# -eq 0 ]; then
    set -- "$(dirname $0)/xxhash.sh"
fi

for file in $@; do
    DATA=$(hexdump -e '/1 "%02X"' -v -- "$file")
    echo "$($algorithm "$DATA" 0)   $file"
done
