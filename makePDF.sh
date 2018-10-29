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
    pandoc $f -o `basename $f md`pdf $OPTIONS

    if (($? == 0))
    then
      git add $f `basename $f md`pdf
      echo "Files $f and `basename $f md`pdf added"
    fi
  fi
done

exit
