#!/bin/sh

libname=$1
objfile="$libname.o"

if [ ! -f $objfile ]; then
    exit
fi

var=`nm $objfile | cut -d ' ' -f3`

for word in $var
do
    echo "#define $word ${libname}_${word}"
done
echo "#include \"$libname.h\""
for word in $var
do
    echo "#undef $word"
done
