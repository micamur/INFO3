#!/bin/bash

if [ $# -ne 2 ] 
then
    echo "Usage : $0 <input.md> <output.pdf>"
    exit
fi

if [ ! -f "$1" ] 
then
    echo "File $1 not found"
fi

pandoc $1 -o $2 --variable margin-left=80px --variable margin-rigt=50px --variable margin-top=80px --variable margin-bottom=50px -s --template=.template.latex
