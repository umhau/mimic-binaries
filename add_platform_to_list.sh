#!/bin/bash

# add the current platform to the list of available platforms

platform_string="$(uname -m)_$(uname -r)_$(uname -s)"
echo $platform_string >> ./available_platforms.txt
