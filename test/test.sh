#!/bin/bash
# fswatch -xr . | xargs -L1 ./test.sh
path=$1

if [[ $path == *.rb* ]]
then
  ruby $path < input.txt
elif [[ $path == *.py* ]]
then
  python3 $path < input.txt
fi