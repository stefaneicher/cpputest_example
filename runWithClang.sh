#!/usr/bin/env bash

rm -r build
mkdir build
cd build


cmake -DCMAKE_BUILD_TYPE=Debug  -DCMAKE_C_COMPILER=/clang_9.0.0/bin/clang -DCMAKE_CXX_COMPILER=/clang_9.0.0/bin/clang++ -G "Unix Makefiles" ..
cmake --build . --target all -- -j 4
./tests/pythagorean_ut/pythagorean_ut