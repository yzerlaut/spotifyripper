#!/bin/bash

# string=$(echo "$1" | cut -d: -f3)
# string="http://open.spotify.com/track/$string"
wget -q -O tmp.html $1

# Echo out track number
tracknumber=$(grep -o -P '.{0,0}track_number.{0,7}' tmp.html | cut -d: -f2 | cut -d, -f1)
echo $tracknumber

# Fetch the covert-art
string=$(grep -o -P '.{0,0}background-image:url.{0,200}' tmp.html | cut -d"(" -f2 | cut -d")" -f1)
to_replace="//"
empty=""
string=${string/$to_replace/$empty}
wget -q -O cover.jpg "$string"

rm -f tmp.html
