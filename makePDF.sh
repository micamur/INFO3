#!/bin/bash

if (($# < 1))
then
    echo "Usage : $0 input.md [input2.pdf] [...]"
    exit
fi

OPTIONS="--variable margin-left=80px --variable margin-rigt=50px --variable margin-top=80px --variable margin-bottom=50px -s --template=.template.latex" # --highlight-style my.theme

for f in $*
do
  if [ ! -f "$f" ]
  then
      echo "File $f not found"

  else
    echo "File $f found"
    OUT="${f%%.*}.pdf"
    pandoc $f -o $OUT $OPTIONS

    if (($? == 0))
    then
      git add $f $OUT
      echo "Files $f and $OUT added"
    fi
  fi
done

exit
