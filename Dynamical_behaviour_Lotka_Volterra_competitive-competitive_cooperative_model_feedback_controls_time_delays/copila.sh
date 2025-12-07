#!/bin/bash

rm *.aux
rm *.log
rm $1".pdf"
pdflatex $1".tex"
open $1".pdf"
