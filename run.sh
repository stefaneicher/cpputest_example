#!/usr/bin/env bash

mkdir cmake-build-debug
mkdir cmake-build-debug
cd cmake-build-debug

cmake -DCMAKE_BUILD_TYPE=Debug -G "CodeBlocks - Unix Makefiles" ..

cmake --build . --target all -- -j 4
./tests/pythagorean_ut/pythagorean_ut