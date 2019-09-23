#!/usr/bin/env bash

start=`date +%s`



if [ -n "$1" ]; then
  dir=$1
else
  dir=cpputest_example
fi

rm -r $dir
git clone https://github.com/stefaneicher/cpputest_example.git $dir
cd $dir

./run.sh

end=`date +%s`
echo Execution time was `expr $end - $start` seconds.
