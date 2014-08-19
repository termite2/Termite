#!/bin/sh

pdflatex tutorial.tex
bibtex tutorial.aux
pdflatex tutorial.tex
pdflatex tutorial.tex

