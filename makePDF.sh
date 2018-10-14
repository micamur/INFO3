#!/bin/bash

if [ "$#" -ne "1" ] && [ "$#" -ne "2" ]
then
    echo "Usage : $0 <input.md>"
    echo "Usage : $0 <input.md> <output.pdf>"
    exit
fi

if [ ! -f "$1" ] 
then
    echo "File $1 not found"
    exit
fi

if [ $# -eq 1 ]
then
    fileNameMD="$1"
    fileNamePDF="${fileNameMD%%.*}.pdf"

    pandoc $fileNameMD -o $fileNamePDF --variable margin-left=80px --variable margin-rigt=50px --variable margin-top=80px --variable margin-bottom=50px -s --template=.template.latex
    exit
fi

if [ $# -eq 2 ]
then
    pandoc $fileNameMD -o $2 --variable margin-left=80px --variable margin-rigt=50px --variable margin-top=80px --variable margin-bottom=50px -s --template=.template.latex
    exit
fi
