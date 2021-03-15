#!/bin/sh -l

echo "Hello, about to build UAMP"
#time=$(date)
#echo "::set-output name=time::$time"

ls -al ./

echo "Assembling"

./gradlew assemble

echo "Debug tests"
./gradlew testDebugUnitTest

echo "Release tests"
./gradlew testReleaseUnitTest

echo "Done."
