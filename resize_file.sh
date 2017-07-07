#!/bin/bash

# this should split a binary file into pieces of a given size. 
#
#   bash resize_file.sh -split filename foldername
#   bash resize_file.sh -join filename foldername
#
# =============================================================================

option=$1
filename=$2
foldername=$3

split_binary() {

    local piece_size="50MB"

    split -b $piece_size $filename
    rm -fr $foldername && mkdir $foldername
    mv x* $foldername/ 2>/dev/null

    # tar cvzf - dir/ | split -b 200MB - sda1.backup.tar.gz.

}

join_binary() {

    local binary_file="$1"

    cat ./$foldername/x* > ./$foldername/$filename

}

main() {

    if [ "$option" == "-split" ]; then split_binary;
    
    elif [ "$option" == "-join" ]; then join_binary;

    fi

}

main