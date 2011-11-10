.SUFFIXES: .fig .tex .eps .pdf
FIGS=
PDFFIGS=

.eps.pdf:
	epstopdf $^
.tex.pdf:
	pdflatex $* && pdflatex $*
.fig.eps:
	fig2dev -L eps $^ $@

all: pp.pdf

pp.pdf: $(PDFFIGS)

clean:
	rm -f *.aux *.log *.pdf *.eps *.bak *.dvi

