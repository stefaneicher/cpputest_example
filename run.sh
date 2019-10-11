#!/usr/bin/env bash

rm -r build
mkdir build
cd build

cmake -DCMAKE_BUILD_TYPE=Debug -G "Unix Makefiles" ..

cmake --build . --target all -- -j 4
./tests/pythagorean_ut/pythagorean_ut