#!/bin/bash

# a quickie to generate a folder with the specs of the current platform.

main() {

    local foldername="$(uname -m)_$(uname -r)_$(uname -s)"
    mkdir ./$foldername 2>/dev/null || ( echo "folder already exists!" && exit 1 )
    echo "Created folder: $foldername"

}

main
