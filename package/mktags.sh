#!/bin/sh
###############################
######Sean: mktags.sh mktags
###############################
PWD=`pwd`
filename=`basename $PWD`
cscope_flist=${filename}.files

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

find ./ -name '*.cpp' -o -name '*.hh' -o -name '*.[ch]' > ${cscope_flist}

cscope -bkq -i $cscope_flist

