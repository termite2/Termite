#!/bin/bash

pushd lib/cudd

if [ "`getconf LONG_BIT`" == "64" ]; 
    then cp Makefile.64bit Makefile;
    else cp Makefile.32bit Makefile;
fi

make libso
popd

LD_LIBRARY_PATH=`pwd`/lib/cudd/libso cabal install termite --extra-include-dirs=`pwd`/lib/cudd/include --extra-lib-dirs=`pwd`/lib/cudd/libso --bindir=`pwd`/bin 

