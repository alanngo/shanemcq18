.PHONY: all clean


# main.tex + auxiliary files --> main.pdf via latexmk.
%.pdf: %.tex $(wildcard *.cls) $(wildcard *.bib)
	latexmk -pdf -g $<

all: ShaneMcQuarrieCV.pdf

# Delete extra latex files and generated figure pdfs.
clean:
	latexmk -c -quiet
	rm -fv *-diff.*

