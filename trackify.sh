#!/bin/bash

TN=$(grep -o -P '.{0,0}track_number.{0,7}' tmp.html | cut -d: -f2 | cut -d, -f1)
echo $TN  

# string=$(echo "$1" | cut -d: -f3)
# string="http://open.spotify.com/track/$string"
# wget -q -O tmp.html "$string"

# # Echo out track number
# grep open.spotify.com/track tmp.html | cut -d\" -f4 | \
#   awk "{if (\$0 == \"$string\") {print NR}}"

# string=$(grep background: tmp.html | cut '-d/' -f 3,4,5 | cut '-d)' -f1)
# wget -q -O cover.jpg "$string"

rm -f tmp.html
