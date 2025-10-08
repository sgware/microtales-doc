rm microtales.pdf
rm index.html
pdflatex microtales.tex
bibtex microtales
pdflatex microtales.tex
pdflatex microtales.tex
pandoc microtales.tex -f latex -t html -s -o index.html \
--toc -V toc-title=Contents \
--bibliography bibliography.bib --citeproc -M reference-section-title=Bibliography \
--lua-filter codeenv.lua
rm microtales.aux
rm microtales.bbl
rm microtales.blg
rm microtales.log
rm microtales.out
rm microtales.toc