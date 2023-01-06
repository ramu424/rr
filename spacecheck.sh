#!/bin/bash
a=$(pwd)
b=$(du -ah)
c=$(ls -ltra)
echo "current directory is $a"
echo "Directory size is $b"
echo "Displaying total Number of Files and Directories is $c"
