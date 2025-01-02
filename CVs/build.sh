#!/bin/bash
xelatex CV_example.tex
pdftoppm -png -f 1 -l 1 CV_example.pdf > CV_example_p1.png
pdftoppm -png -f 2 -l 2 CV_example.pdf > CV_example_p2.png
