#!/bin/bash

CONFIG=$1
if [[ "release" != "$CONFIG" ]] && [[ "debug" != "$CONFIG" ]]; then
    echo "Specify \"release\" or \"debug\""
    exit -1
fi

exitWithError()
{
    echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
    echo "$@"
    echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
    exit -1
}

exitOnError()
{
    if [[ 0 -eq $? ]]; then return 0; fi
    exitWithError $@
}

BUILDTARGETS=("arm64-apple-ios12.0" \
              "arm64-apple-macos12.0" \
              "x86_64-apple-ios12.0-simulator" \
             )
for target in "${BUILDTARGETS[@]}"; do
    ./build.sh build $CONFIG $target
    exitOnError "Failed to build $target"
done