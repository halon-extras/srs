#!/bin/sh

set -e

echo "--- HSL"
hsh --rootpath .. test.hsl

echo "--- Perl"
LANG="" perl test.pl