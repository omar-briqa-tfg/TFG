path := $(shell pwd)
filename ?= main

all:
	make pdf bib gls
	make pdf open

propostatfe:
	make pdf filename=proposta
	make move filename=proposta
	make open filename=proposta

resum:
	make pdf filename=article
	make move filename=article
	make open filename=article

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

move:
	cp $(path)/out/$(filename).pdf $(path)/submit/$(filename).pdf

clean:
	rm -rf aux/*
	rm -rf out/*
