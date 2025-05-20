#!/bin/sh

# install Mail::SRS
# apt-get install -y make
# yes | cpan Mail::SRS

set -e

hsh --rootpath .. test.hsl
LANG="" perl test.pl