#!/bin/bash

string=$(grep -o -P '.{0,0}background-image:url.{0,200}' tmp.html | cut -d"(" -f2 | cut -d")" -f1)
to_replace="//"
empty=""
string=${string/$to_replace/$empty}
echo $string
wget -q -O cover.jpg "$string"
