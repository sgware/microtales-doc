del microtales.pdf
del docs/index.html
pdflatex microtales.tex
bibtex microtales
pdflatex microtales.tex
pdflatex microtales.tex
pandoc microtales.tex -f latex -t html -s -o docs/index.html ^
--toc -V toc-title=Contents ^
--bibliography bibliography.bib --citeproc -M reference-section-title=Bibliography ^
--lua-filter codeenv.lua
del microtales.aux
del microtales.bbl
del microtales.blg
del microtales.log
del microtales.out
del microtales.toc