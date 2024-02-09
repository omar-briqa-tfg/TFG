filename = main
ext_ignored = ps pdf log aux out dvi bbl blg toc bcf run.xml fls gz latexmk

all:
	latexmk -pdf ${filename}.tex > /dev/null

clean:
	for ext in $(ext_ignored); do find . -type f -name "*$$ext" -exec rm -f {} +; done
	rm -rf tmp