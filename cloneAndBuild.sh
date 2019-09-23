#!/usr/bin/env bash

dir=8
rm -r $dir
cd ..
git clone https://github.com/stefaneicher/cpputest_example.git $dir
cd $dir

./run.sh
