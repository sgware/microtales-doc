# MicroTales Documentation

MicroTales is a collection of modular elements that can be combined to create a
variety of story planning problems of varying size and difficulty. This
documentation explains the design goals of MicroTales and precisely defines all
elements.

MicroTales documentation is available in [PDF](microtales.pdf) and
[HTML](https://sgware.github.io/microtales-doc/) formats.

# Compiling

This documentation is written in [LaTeX](https://en.wikipedia.org/wiki/LaTeX).
It needs to be compiled 3 times to construct the index, cross-references, and
bibliography.

```
pdflatex microtales.tex
bibtex microtales
pdflatex microtales.tex
pdflatex microtales.tex
```

This documentation can also be converted into HTML using
[Pandoc](https://pandoc.org/):

```
pandoc microtales.tex -f latex -t html -s -o microtales.html \
--toc -V toc-title=Contents \
--bibliography bibliography.bib --citeproc -M reference-section-title=Bibliography \
--lua-filter codeenv.lua
```

# License

The first version of this documentation was written by Stephen G. Ware and Molly
Siler of the [Narrative Intelligence Lab](http://cs.uky.edu/~sgware) at the
[University of Kentucky](http://www.uky.edu) in September, 2025. The University
of Kentucky holds the copyright to this document. It is released under a
[Creative Commons Attribution-ShareAlike 4.0 International](https://creativecommons.org/licenses/by-sa/4.0/)
license (CC BY-SA 4.0). In short, this means anyone is free to distribute it and
to adapt it, even for commercial purposes, as long as they give appropriate
credit to the original authors. Full details can be found in `license.txt`. The
University of Kentucky reserves all rights not explicitly granted by the
license.