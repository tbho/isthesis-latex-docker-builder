#!/bin/bash

#  -----
#  Copyright 2019 Tobias Hoge

#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at

#      http://www.apache.org/licenses/LICENSE-2.0

#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
#  -----

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
