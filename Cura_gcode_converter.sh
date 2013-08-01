#!/bin/bash

file="${1}"

# Replace M109 S{X} by M104 S{X} T0

sed -i.bak -e "s/M109 S\([0-9\.]*\)/M104 S\1 T0/g" "${file}"

# ;G21 Comment G21

sed -i.bak -e "s/^G21/;&/g" "${file}"

# ;G90 Comment G90

sed -i.bak -e "s/^G90/;&/g" "${file}"

# M107 --> M127 T0 (fan off)

sed -i.bak -e "s/M107/M127 T0 ;M107/g" "${file}"

# M106 S255 --> M126 T0

sed -i.bak -e "s/M106 S\([0-9\.]*\)/M126 T0 ; value = \1/g" "${file}"

# G28 --> G162 X Y F2000

sed -i.bak -e "s/^G28/G162 X Y F2000 ;&/g" "${file}"
