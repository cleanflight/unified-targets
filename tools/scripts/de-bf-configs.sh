#!/bin/sh

FILEPATTERN=*.config
SEARCH='# Betaflight'
REPLACEMENT='# Cleanflight'

find . -type f -name $FILEPATTERN -print0 | xargs -0 perl -pi -e "s/$SEARCH/$REPLACEMENT/g"

