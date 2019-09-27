# CppUTest Example

```console
bash <(curl -s https://raw.githubusercontent.com/stefaneicher/cpputest_example/master/cloneAndBuild.sh)
```

```console
bash <(curl -s https://raw.githubusercontent.com/stefaneicher/cpputest_example/master/cloneAndBuildInDockerTimed.sh)
```

# Travis build example <10s:

https://travis-ci.org/maxpeng/cpputest_example/jobs/328475477

# Local run on OS X Macbook  < 6s

```console
MBP:cpputest_example user1$ ./cloneAndBuildTimed.sh
rm: cpputest_example: No such file or directory
Klone nach 'cpputest_example' ...
remote: Enumerating objects: 17, done.
remote: Counting objects: 100% (17/17), done.
remote: Compressing objects: 100% (11/11), done.
remote: Total 162 (delta 9), reused 13 (delta 6), pack-reused 145
Empfange Objekte: 100% (162/162), 151.10 KiB | 1.62 MiB/s, Fertig.
Löse Unterschiede auf: 100% (55/55), Fertig.
mkdir: cmake-build-debug: File exists
-- The C compiler identification is AppleClang 9.0.0.9000039
-- The CXX compiler identification is AppleClang 9.0.0.9000039
-- Check for working C compiler: /Library/Developer/CommandLineTools/usr/bin/cc
-- Check for working C compiler: /Library/Developer/CommandLineTools/usr/bin/cc -- works
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Detecting C compile features
-- Detecting C compile features - done
-- Check for working CXX compiler: /Library/Developer/CommandLineTools/usr/bin/c++
-- Check for working CXX compiler: /Library/Developer/CommandLineTools/usr/bin/c++ -- works
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- Configuring done
-- Generating done
-- Build files have been written to: /Users/user1/CLionProjects/cpputest_example/cpputest_example/cmake-build-debug
Scanning dependencies of target cpputest_example_pythagorean
Scanning dependencies of target CppUTestExt
Scanning dependencies of target CppUTest
[  4%] Building C object src/CMakeFiles/cpputest_example_pythagorean.dir/pythagorean.c.o
[  4%] Building C object src/CMakeFiles/cpputest_example_pythagorean.dir/main.c.o
[  6%] Building CXX object testtools/cpputestext/CMakeFiles/CppUTestExt.dir/CodeMemoryReportFormatter.cpp.o
[  9%] Building CXX object testtools/cpputest/CMakeFiles/CppUTest.dir/CommandLineArguments.cpp.o
[ 11%] Building CXX object testtools/cpputestext/CMakeFiles/CppUTestExt.dir/IEEE754ExceptionsPlugin.cpp.o
[ 13%] Building C object src/CMakeFiles/cpputest_example_pythagorean.dir/square_root.c.o
[ 15%] Linking C executable cpputest_example_pythagorean
[ 15%] Built target cpputest_example_pythagorean
[ 18%] Building CXX object testtools/cpputest/CMakeFiles/CppUTest.dir/MemoryLeakWarningPlugin.cpp.o
[ 20%] Building CXX object testtools/cpputest/CMakeFiles/CppUTest.dir/TestHarness_c.cpp.o
[ 22%] Building CXX object testtools/cpputestext/CMakeFiles/CppUTestExt.dir/MemoryReporterPlugin.cpp.o
[ 25%] Building CXX object testtools/cpputestext/CMakeFiles/CppUTestExt.dir/MockFailure.cpp.o
[ 27%] Building CXX object testtools/cpputestext/CMakeFiles/CppUTestExt.dir/MockSupportPlugin.cpp.o
[ 29%] Building CXX object testtools/cpputest/CMakeFiles/CppUTest.dir/TestRegistry.cpp.o
[ 31%] Building CXX object testtools/cpputestext/CMakeFiles/CppUTestExt.dir/MockActualCall.cpp.o
[ 34%] Building CXX object testtools/cpputest/CMakeFiles/CppUTest.dir/CommandLineTestRunner.cpp.o
[ 36%] Building CXX object testtools/cpputest/CMakeFiles/CppUTest.dir/SimpleString.cpp.o
[ 38%] Building CXX object testtools/cpputestext/CMakeFiles/CppUTestExt.dir/MockSupport_c.cpp.o
[ 40%] Building CXX object testtools/cpputestext/CMakeFiles/CppUTestExt.dir/MemoryReportAllocator.cpp.o
[ 43%] Building CXX object testtools/cpputest/CMakeFiles/CppUTest.dir/TestMemoryAllocator.cpp.o
[ 45%] Building CXX object testtools/cpputestext/CMakeFiles/CppUTestExt.dir/MockExpectedCall.cpp.o
[ 47%] Building CXX object testtools/cpputest/CMakeFiles/CppUTest.dir/TestResult.cpp.o
[ 50%] Building CXX object testtools/cpputestext/CMakeFiles/CppUTestExt.dir/MockNamedValue.cpp.o
[ 52%] Building CXX object testtools/cpputest/CMakeFiles/CppUTest.dir/JUnitTestOutput.cpp.o
[ 54%] Building CXX object testtools/cpputestext/CMakeFiles/CppUTestExt.dir/OrderedTest.cpp.o
[ 56%] Building CXX object testtools/cpputest/CMakeFiles/CppUTest.dir/TeamCityTestOutput.cpp.o
[ 59%] Building CXX object testtools/cpputest/CMakeFiles/CppUTest.dir/TestFailure.cpp.o
[ 61%] Building CXX object testtools/cpputestext/CMakeFiles/CppUTestExt.dir/MemoryReportFormatter.cpp.o
[ 63%] Building CXX object testtools/cpputest/CMakeFiles/CppUTest.dir/TestOutput.cpp.o
[ 65%] Building CXX object testtools/cpputestext/CMakeFiles/CppUTestExt.dir/MockExpectedCallsList.cpp.o
[ 68%] Building CXX object testtools/cpputest/CMakeFiles/CppUTest.dir/MemoryLeakDetector.cpp.o
[ 70%] Building CXX object testtools/cpputestext/CMakeFiles/CppUTestExt.dir/MockSupport.cpp.o
[ 72%] Building CXX object testtools/cpputest/CMakeFiles/CppUTest.dir/TestFilter.cpp.o
[ 75%] Building CXX object testtools/cpputest/CMakeFiles/CppUTest.dir/TestPlugin.cpp.o
[ 77%] Building CXX object testtools/cpputest/CMakeFiles/CppUTest.dir/TestTestingFixture.cpp.o
[ 79%] Building CXX object testtools/cpputest/CMakeFiles/CppUTest.dir/SimpleMutex.cpp.o
[ 81%] Building CXX object testtools/cpputest/CMakeFiles/CppUTest.dir/Utest.cpp.o
[ 84%] Linking CXX static library libCppUTestExt.a
[ 84%] Built target CppUTestExt
[ 86%] Building CXX object testtools/cpputest/CMakeFiles/CppUTest.dir/UtestPlatform.cpp.o
[ 88%] Linking CXX static library libCppUTest.a
[ 88%] Built target CppUTest
Scanning dependencies of target pythagorean_ut
[ 90%] Building CXX object tests/pythagorean_ut/CMakeFiles/pythagorean_ut.dir/pythagorean_ut.cpp.o
[ 95%] Building C object tests/pythagorean_ut/CMakeFiles/pythagorean_ut.dir/__/__/src/pythagorean.c.o
[ 95%] Building CXX object tests/pythagorean_ut/CMakeFiles/pythagorean_ut.dir/main.cpp.o
[ 97%] Building CXX object tests/pythagorean_ut/CMakeFiles/pythagorean_ut.dir/square_root_mock.cpp.o
[100%] Linking CXX executable pythagorean_ut
[100%] Built target pythagorean_ut

SquareRoot_sqrt gets called with parameter: 100.000000.
.
SquareRoot_sqrt gets called with parameter: 25.000000.
.
OK (2 tests, 2 ran, 6 checks, 0 ignored, 0 filtered out, 1 ms)

Execution time was 5 seconds.

real    0m5.559s
user    0m9.525s
sys     0m1.996s

```

# Local run on Windows
TODO