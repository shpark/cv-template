ALL: cv.pdf

%.tex: %-template.tex cv.yaml
	pandoc --template $< -t latex cv.yaml > $@

%.pdf: %.tex
	lualatex -shell-escape $<

clean:
	rm -f *.aux *.fdb_latexmk *.fls *.log *.out *.pdf vc.tex *.synctex.gz *.dvi