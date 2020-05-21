#!/bin/bash

base_dir=$PWD
tool_dir=$base_dir/tools
sevenzip="$tool_dir/darwin/7za"

rm -rf ./eufix-base/system
mkdir ./eufix-base/system

for f in *.zip; do
    arr=(${f//_/ })
    if [[ "${arr[0]}" != "miui" ]]; then
        continue
    fi
    if [ -f $f.aria2 ]; then
        echo "--> skip incomplete file: $f"
        continue
    fi
    model=${arr[1]}
    ver=${arr[2]}
    ./cleaner-fix.sh --clock
    cp -R ./miui-$model-$ver/deodex/system ./eufix-base/
    ./extract.sh --appvault
    cp -R ./miui-$model-$ver/deodex/system ./eufix-base/
    cd eufix-base/
    zip -r ../eufix-magisk.zip ./*
    cd ..
    rm -rf ./eufix-base/system
done