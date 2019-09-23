#!/usr/bin/env bash

start=`date +%s`

cd ..
ls -ls
dir=cpputest_example
rm -r $dir
git clone https://github.com/stefaneicher/cpputest_example.git $dir
cd $dir

./run.sh

end=`date +%s`
echo Execution time was `expr $end - $start` seconds.