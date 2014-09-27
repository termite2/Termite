#!/bin/sh

git submodule init
git submodule update

cabal sandbox init
cabal update
cabal sandbox add-source lib/bdd lib/bv lib/code-widget lib/debug lib/graph-draw lib/haskell_cudd lib/hast lib/synthesis lib/tsl lib/util tools/termite-app
