path := $(shell pwd)
filename ?= main

all:
	make pdf bib gls
	make pdf open

proposta:
	make pdf filename=proposta
	make -B submit filename=proposta

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

submit:
	cp $(path)/out/$(filename).pdf $(path)/submit/$(filename).pdf

clean:
	rm -rf aux/*
	rm -rf out/*
