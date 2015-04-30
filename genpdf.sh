#!/bin/bash
pdflatex --shell-escape main.tex
bibtex main
pdflatex --shell-escape main.tex
pdflatex --shell-escape main.tex
rm main-blx.bib main.aux main.bbl main.blg main.lol main.out main.run.xml main.toc main.log
texcount main.tex MainBody/*.tex Support/*.tex
open main.pdf
