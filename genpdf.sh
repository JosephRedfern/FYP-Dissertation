#!/bin/bash

pdflatex --shell-escape main.tex
texcount main.tex MainBody/*.tex Support/*.tex
open main.pdf
