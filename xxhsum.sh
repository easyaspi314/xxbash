#!/bin/bash

set -euo pipefail

. "$(dirname $0)/xxhash.sh"

if [ $# -eq 0 ]; then
    set -- "$(dirname $0)/xxhash.sh"
fi

FILE=$(hexdump -e '/1 "%02X"' -v "$1")

XXH64 "$FILE"  0
echo "  $1"
XXH32 "$FILE"  0
echo "  $1"
