#!/bin/sh -l

echo "Hello, about to build UAMP"
#time=$(date)
#echo "::set-output name=time::$time"

cd uamp
ls -al ./

./gradlew assemble
./gradlew testDebugUnitTest
./gradlew testReleaseUnitTest

cd ..
