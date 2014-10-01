#!/bin/bash

pushd lib/cudd

if [ "`getconf LONG_BIT`" == "64" ]; 
    then make -f Makefile.64bit
    else make -f Makefile.32bit
fi

popd

LD_LIBRARY_PATH=`pwd`/lib/cudd/libso cabal install termite --extra-include-dirs=`pwd`/lib/cudd/include --extra-lib-dirs=`pwd`/lib/cudd/libso --bindir=`pwd`/bin 

