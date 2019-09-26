#!/bin/bash
###############################
######Sean: mktags.sh mktags
###############################
PWD=`pwd`
filename=`basename $PWD`
cscope_flist=${filename}.files

if [ "$1" == "clean" ]
then 
    [ -f $cscope_flist ] && rm $cscope_flist 
    for f in "cscope.in.out"  "cscope.out"  "cscope.po.out" "tags"
    do 
        [ -f $f ] && rm $f
    done
    exit 0
fi

if [ -z $cscope_flist ]
then
    echo "*.files is null"
    echo "please check cur dir."
    exit
fi
if [ -f "$cscope_flist" ]
then
    #update files.
    echo "update ctags"
fi

ctags -R

find ./ -name '*.cpp' -o -name '*.cc' -o -name '*.hh' -o -name '*.[ch]' > ${cscope_flist}

cscope -bkq -i $cscope_flist

