# Makefile for building the LaTeX article

MAIN = main
LATEX = pdflatex

.PHONY: all pdf clean distclean rebuild

all: pdf

pdf:
	$(LATEX) $(MAIN).tex
	$(LATEX) $(MAIN).tex

clean:
	rm -f *.aux *.bbl *.bcf *.blg *.log *.out *.run.xml *.toc *.lof *.lot *.fls *.fdb_latexmk *.synctex.gz texput.log

distclean: clean
	rm -f $(MAIN).pdf

rebuild: distclean all

