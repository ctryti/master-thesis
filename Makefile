all:
	pdflatex -synctex=1 main.tex
	bibtex main
	pdflatex -synctex=1 main.tex
	pdflatex -synctex=1 main.tex

draft:
	pdflatex -draftmode main.tex
	bibtex main # or biber
	pdflatex -draftmode main.tex
	pdflatex main.tex

clean:
	rm -f *.log *.aux *.bbl *.blg *.dvi *.bak *.toc
	rm -f *.ps *.pdf
	rm -f *~
