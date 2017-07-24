This contains mimic binaries, sorted by folder by platform.  Scripts, such as 
are used to split files into palatable sizes, are kept in the ./scripts folder.

usage
-----

add another binary:

    cd ~/Documents; git clone https://github.com/umhau/mimic-binaries.git
    cd mimic-binaries

    cp ~/mimic/mimic . ; bash create_folder.sh
    foldername="$(uname -m)_$(uname -r)_$(uname -s)"
    bash resize_file.sh -split mimic $foldername

The end result of all this should be another cryptically-named folder in the 
directory, with a ton of tiny files in it.

