path =
filename = main

all:
	make pdf bib gls
	make pdf open

pdf:
	pdflatex \
		-file-line-error \
    	-interaction=nonstopmode \
    	-synctex=1 \
    	-output-format=pdf \
    	-output-directory=$(path)/out \
    	-aux-directory=$(path)/aux \
        $(filename).tex

bib:
	cd $(path)/aux && \
		bibtex -include-directory=$(path) $(filename)
	cd $(path)

gls:
	makeglossaries -d $(path)/aux $(filename)

open:
	open $(path)/out/$(filename).pdf

clean:
	rm -rf aux/*
	rm -rf out/*
