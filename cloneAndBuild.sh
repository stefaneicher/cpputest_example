#!/usr/bin/env bash

start=`date +%s`


#cd ..
dir=cpputest_example2
rm -r $dir
cd ..
git clone https://github.com/stefaneicher/cpputest_example.git $dir
cd $dir

./run.sh

end=`date +%s`
echo Execution time was `expr $end - $start` seconds.