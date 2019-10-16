# CppUTest Example

# Performance Measurements on Revision 48581f5c
Measured by running runTimed.sh or runInDockerTimed.sh on Linux and Mac, buildTimed.cmd on Windows

| Computer                         | Measurements -j4         | Measurements -j2  | Measurements -j1 | 
| -------------------------------- |:----------------:|:-------------------------:|:----------------:|
| Dell          - Cygwin           | 311s, 249s, 291s,        | 407s              |                  |
| HP Elitebook  - Cygwin           | 272s 277s                |                   |                  |
| Lenovo X1     - Native           | 7.4s, 7,7s               |                   |      17s         |
| Lenovo X1     - Native mit Strom | 4,2s, 4,6                |                   |      6,2         |
| Lenovo X1     - Docker mit Strom | 3,9s                     |                   |      10,7s       |
| Mac Book Pro - native AppleClang | 4,1s, 4,04s              | 5,9s              |      9,2s        |
| Yoga         - Cygwin            | 31s, 31s, 32s            | 35s               |      45s         |
| Jenkins      - Cygwin            | 181s, 168s, 173s, 170s   |
| Mac Book Pro - Docker GCC        | 23s, 19s,19s             |
| Mac Book Pro - Docker Clang 9    | 20s                      |
| Windows and VisualStudio TODO    |                          |

 
| Computer           | CPU                   | RAM  | OS          |
| -------------------|:--------------------- | ----:|------------:|
|Dell                | Intel-Core-i5-6300U   | 8GB  | Win 8.1     |
|Jenkins             | Intel-Core-i5-6600    | 4GB  | Win 8.1     |
|Mac Book Pro        | Intel-Core-i7-7700HQ  | 16GB | OS X        |
|Yoga                | Intel-Core-i7-7500U   | 8GB  | Win 10 Home |
|HP Elitebook Win10  | Intel-Core-i7 7600U   | 16GB | Win 10 Enterprise |
|Lenovo X1           | Intel-Core-i7 8550U   | 16GB | Linux Manjaro |


- https://cpu.userbenchmark.com/Compare/Intel-Core-i7-7700HQ-vs-Intel-Core-i5-6300U/m211019vsm27864
- https://cpu.userbenchmark.com/Compare/Intel-Core-i5-6300U-vs-Intel-Core-i7-7500U/m27864vsm171274
- https://cpu.userbenchmark.com/Compare/Intel-Core-i5-6300U-vs-Intel-Core-i5-6600/m27864vs3514



# Bash  One Liner
```console
bash <(curl -s https://raw.githubusercontent.com/stefaneicher/cpputest_example/master/cloneAndBuild.sh)
```

```console
bash <(curl -s https://raw.githubusercontent.com/stefaneicher/cpputest_example/master/cloneAndBuildInDockerTimed.sh)
```

# Travis build example <10s:

https://travis-ci.org/maxpeng/cpputest_example/jobs/328475477

# Local run cloneAndBuildTimed.sh on OS X Macbook  < 6s

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

# Local run cloneAndBuildInDockerTimed.sh on OS X Macbook  < 30s

```console
MBP:cpputest_example stefaneicher$ /bin/bash  /Users/stefaneicher/CLionProjects/cpputest_example/cloneAndBuildInDockerTimed.sh 
rm: cpputest_example: No such file or directory
Klone nach 'cpputest_example' ...
remote: Enumerating objects: 62, done.
remote: Counting objects: 100% (62/62), done.
remote: Compressing objects: 100% (46/46), done.
remote: Total 207 (delta 28), reused 44 (delta 14), pack-reused 145
Empfange Objekte: 100% (207/207), 448.97 KiB | 980.00 KiB/s, Fertig.
Löse Unterschiede auf: 100% (74/74), Fertig.
Building gdbserver
Step 1/14 : FROM ubuntu:bionic
 ---> 2ca708c1c9cc
Step 2/14 : RUN apt-get update && apt-get upgrade -y && apt-get install -y     apt-utils gcc g++ openssh-server cmake build-essential gdb gdbserver rsync vim
 ---> Using cache
 ---> 0e5a5648e0ea
Step 3/14 : ADD . /code
 ---> a66f4da58ade
Step 4/14 : WORKDIR /code
 ---> Running in 206421c6b236
Removing intermediate container 206421c6b236
 ---> 00fd90ccc9b9
Step 5/14 : RUN mkdir /var/run/sshd
 ---> Running in d79345261925
Removing intermediate container d79345261925
 ---> b43124fc5081
Step 6/14 : RUN echo 'root:root' | chpasswd
 ---> Running in baa305324892
Removing intermediate container baa305324892
 ---> 68850d958abe
Step 7/14 : RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
 ---> Running in faad08e9bf86
Removing intermediate container faad08e9bf86
 ---> 8f20efee742b
Step 8/14 : RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
 ---> Running in bc897f1bede5
Removing intermediate container bc897f1bede5
 ---> 789e5bf1518b
Step 9/14 : ENV NOTVISIBLE "in users profile"
 ---> Running in 413cb4d06c7b
Removing intermediate container 413cb4d06c7b
 ---> d6e5cc290deb
Step 10/14 : RUN echo "export VISIBLE=now" >> /etc/profile
 ---> Running in 152e84ca3cbc
Removing intermediate container 152e84ca3cbc
 ---> 8a886b7e3b64
Step 11/14 : EXPOSE 22 7777
 ---> Running in 7cebfbd1f946
Removing intermediate container 7cebfbd1f946
 ---> 43da1bba2030
Step 12/14 : RUN useradd -ms /bin/bash debugger
 ---> Running in af3843ab6dd3
Removing intermediate container af3843ab6dd3
 ---> 263822fdb3c3
Step 13/14 : RUN echo 'debugger:pwd' | chpasswd
 ---> Running in 2fa080ada0eb
Removing intermediate container 2fa080ada0eb
 ---> 8cca2910d24e
Step 14/14 : CMD ["/usr/sbin/sshd", "-D"]
 ---> Running in 37bd2883ca13
Removing intermediate container 37bd2883ca13
 ---> c08b4341853d
Successfully built c08b4341853d
Successfully tagged cpputest_example_gdbserver:latest
Recreating debug ... done
./run.sh: line 3: rm-: command not found
-- The C compiler identification is GNU 7.4.0
-- The CXX compiler identification is GNU 7.4.0
-- Check for working C compiler: /usr/bin/cc
-- Check for working C compiler: /usr/bin/cc -- works
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Detecting C compile features
-- Detecting C compile features - done
-- Check for working CXX compiler: /usr/bin/c++
-- Check for working CXX compiler: /usr/bin/c++ -- works
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- Configuring done
-- Generating done
-- Build files have been written to: /code/cmake-build-debug
Scanning dependencies of target cpputest_example_pythagorean
[  4%] Building C object src/CMakeFiles/cpputest_example_pythagorean.dir/main.c.o
[  4%] Building C object src/CMakeFiles/cpputest_example_pythagorean.dir/pythagorean.c.o
[  6%] Building C object src/CMakeFiles/cpputest_example_pythagorean.dir/square_root.c.o
[  9%] Linking C executable cpputest_example_pythagorean
[  9%] Built target cpputest_example_pythagorean
Scanning dependencies of target CppUTestExt
[ 11%] Building CXX object testtools/cpputestext/CMakeFiles/CppUTestExt.dir/CodeMemoryReportFormatter.cpp.o
[ 13%] Building CXX object testtools/cpputestext/CMakeFiles/CppUTestExt.dir/IEEE754ExceptionsPlugin.cpp.o
[ 15%] Building CXX object testtools/cpputestext/CMakeFiles/CppUTestExt.dir/MemoryReporterPlugin.cpp.o
Scanning dependencies of target CppUTest
[ 18%] Building CXX object testtools/cpputest/CMakeFiles/CppUTest.dir/CommandLineArguments.cpp.o
[ 20%] Building CXX object testtools/cpputestext/CMakeFiles/CppUTestExt.dir/MockFailure.cpp.o
[ 22%] Building CXX object testtools/cpputestext/CMakeFiles/CppUTestExt.dir/MockSupportPlugin.cpp.o
[ 25%] Building CXX object testtools/cpputestext/CMakeFiles/CppUTestExt.dir/MockActualCall.cpp.o
[ 27%] Building CXX object testtools/cpputest/CMakeFiles/CppUTest.dir/MemoryLeakWarningPlugin.cpp.o
[ 29%] Building CXX object testtools/cpputestext/CMakeFiles/CppUTestExt.dir/MockSupport_c.cpp.o
[ 31%] Building CXX object testtools/cpputestext/CMakeFiles/CppUTestExt.dir/MemoryReportAllocator.cpp.o
[ 34%] Building CXX object testtools/cpputest/CMakeFiles/CppUTest.dir/TestHarness_c.cpp.o
[ 36%] Building CXX object testtools/cpputestext/CMakeFiles/CppUTestExt.dir/MockExpectedCall.cpp.o
[ 38%] Building CXX object testtools/cpputestext/CMakeFiles/CppUTestExt.dir/MockNamedValue.cpp.o
[ 40%] Building CXX object testtools/cpputestext/CMakeFiles/CppUTestExt.dir/OrderedTest.cpp.o
[ 43%] Building CXX object testtools/cpputest/CMakeFiles/CppUTest.dir/TestRegistry.cpp.o
[ 45%] Building CXX object testtools/cpputestext/CMakeFiles/CppUTestExt.dir/MemoryReportFormatter.cpp.o
[ 47%] Building CXX object testtools/cpputestext/CMakeFiles/CppUTestExt.dir/MockExpectedCallsList.cpp.o
[ 50%] Building CXX object testtools/cpputest/CMakeFiles/CppUTest.dir/SimpleString.cpp.o
[ 52%] Building CXX object testtools/cpputest/CMakeFiles/CppUTest.dir/CommandLineTestRunner.cpp.o
[ 54%] Building CXX object testtools/cpputestext/CMakeFiles/CppUTestExt.dir/MockSupport.cpp.o
[ 56%] Building CXX object testtools/cpputest/CMakeFiles/CppUTest.dir/TestMemoryAllocator.cpp.o
[ 59%] Building CXX object testtools/cpputest/CMakeFiles/CppUTest.dir/TestResult.cpp.o
[ 61%] Building CXX object testtools/cpputest/CMakeFiles/CppUTest.dir/JUnitTestOutput.cpp.o
[ 63%] Building CXX object testtools/cpputest/CMakeFiles/CppUTest.dir/TeamCityTestOutput.cpp.o
[ 65%] Linking CXX static library libCppUTestExt.a
[ 68%] Building CXX object testtools/cpputest/CMakeFiles/CppUTest.dir/TestFailure.cpp.o
[ 70%] Building CXX object testtools/cpputest/CMakeFiles/CppUTest.dir/TestOutput.cpp.o
[ 70%] Built target CppUTestExt
[ 75%] Building CXX object testtools/cpputest/CMakeFiles/CppUTest.dir/MemoryLeakDetector.cpp.o
[ 75%] Building CXX object testtools/cpputest/CMakeFiles/CppUTest.dir/TestFilter.cpp.o
[ 77%] Building CXX object testtools/cpputest/CMakeFiles/CppUTest.dir/TestPlugin.cpp.o
[ 79%] Building CXX object testtools/cpputest/CMakeFiles/CppUTest.dir/TestTestingFixture.cpp.o
[ 81%] Building CXX object testtools/cpputest/CMakeFiles/CppUTest.dir/SimpleMutex.cpp.o
[ 84%] Building CXX object testtools/cpputest/CMakeFiles/CppUTest.dir/Utest.cpp.o
[ 86%] Building CXX object testtools/cpputest/CMakeFiles/CppUTest.dir/UtestPlatform.cpp.o
[ 88%] Linking CXX static library libCppUTest.a
[ 88%] Built target CppUTest
Scanning dependencies of target pythagorean_ut
[ 90%] Building CXX object tests/pythagorean_ut/CMakeFiles/pythagorean_ut.dir/main.cpp.o
[ 93%] Building CXX object tests/pythagorean_ut/CMakeFiles/pythagorean_ut.dir/pythagorean_ut.cpp.o
[ 95%] Building C object tests/pythagorean_ut/CMakeFiles/pythagorean_ut.dir/__/__/src/pythagorean.c.o
[ 97%] Building CXX object tests/pythagorean_ut/CMakeFiles/pythagorean_ut.dir/square_root_mock.cpp.o
[100%] Linking CXX executable pythagorean_ut
[100%] Built target pythagorean_ut

SquareRoot_sqrt gets called with parameter: 100.000000.
.
SquareRoot_sqrt gets called with parameter: 25.000000.
.
OK (2 tests, 2 ran, 6 checks, 0 ignored, 0 filtered out, 0 ms)


real    0m29.410s
user    0m0.641s
sys     0m0.218s
MBP:cpputest_example stefaneicher$ 

```

# Local run on Windows
TODO

## Remote Build in Docker
# Preferences | Build, Execution, Deployment  | Toolchains
ssh://debugger@localhost:7776
user: debugger
password: pwd

# Preferences | Build, Execution, Deployment  | Toolchains