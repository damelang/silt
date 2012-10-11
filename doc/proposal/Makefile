TITLE := uncol-proposal

$(TITLE).pdf: $(TITLE).tex *.tex bib.bbl
	@if [ ! -r $(subst tex,aux,$<) ]; then pdflatex $<; fi
	pdflatex $<

bib.bbl: bib.bib
	pdflatex $(TITLE)
	bibtex --min-crossrefs=100 $(TITLE)
	pdflatex $(TITLE)

spell-check:
	for f in *.tex; do aspell -t -c $$f; done

clean:
	/bin/rm -f *.aux *.lof *.log *.lot *.out *.toc $(TITLE).pdf *.blg *.bbl *.bak
