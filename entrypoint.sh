#!/bin/sh -l

echo "Hello, about to build UAMP"
#time=$(date)
#echo "::set-output name=time::$time"

ls -al ./

cd uamp

echo "Assembling"

chmod +x gradlew
./gradlew assemble

echo "Debug tests"
./gradlew testDebugUnitTest

echo "Release tests"
./gradlew testReleaseUnitTest

cd ..

echo "Done."
