#!/bin/bash
pdflatex /tex/thesis
pdflatex /tex/thesis
makeglossaries /tex/thesis
bibtex /tex/thesis
pdflatex /tex/thesis
pdflatex /tex/thesis

rm *.toc
rm -r *.aux
rm -r ./tex/*.aux
rm -r ./conf/*.aux
rm *.acn
rm *.glo
rm *.bbl
rm *.out
rm *.ist
rm *.blg
rm *.syi
rm *.syg
rm *.slg
rm *.gls
rm *.glg
rm *.alg
rm *.acr
rm *.lot
rm *.lol
rm *.lof
rm *.idx
