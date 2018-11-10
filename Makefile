#
LATEX=latex
BIBLIO=bibtex
DVIPS=dvips
DVIPDF=dvipdf
 
thesis:	
	$(LATEX) thesis
	$(LATEX) thesis

biblio:
	$(LATEX) thesis
	$(BIBLIO) thesis

postscript: thesis.dvi
	$(DVIPS) -t letter thesis.dvi > thesis.ps

pdf: thesis.dvi
	$(DVIPDF) -f thesis.dvi > thesis.pdf


clean:
	rm -f *~
	rm -f *.dvi
	rm -f *.aux
	rm -f *.toc
	rm -f *.tof
	rm -f *.loc
	rm -f *.lof
	rm -f *.log
	rm -f *.lot
	rm -f *.bak
	rm -f *.bbl
	rm -f *.blg



