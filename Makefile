
all:
	pdflatex -synctex=1 main.tex
	bibtex main
	pdflatex -synctex=1 main.tex
	pdflatex -synctex=1 main.tex

	evince main.pdf

clean:
	rm -f *.log *.aux *.bbl *.blg *.dvi *.bak *.toc
	rm -f *.ps *.pdf
	rm -f *~
