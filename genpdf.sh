#!/bin/bash

rm -f *.bbl *.blg *.log *.xml *.aux main-blx.bib
texi2pdf main.tex
rm -f *.bbl *.blg *.log *.xml *.aux main-blx.bib
texcount main.tex MainBody/*.tex Support/*.tex
open main.pdf
