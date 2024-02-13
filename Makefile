filename = main
ext_ignored = ps log aux out dvi bbl blg toc bcf run.xml fls gz latexmk

all:
	latexmk -pdf ${filename}.tex > /dev/null
	make clean

clean:
	for ext in $(ext_ignored); do find . -type f -name "*$$ext" -exec rm -f {} +; done
	rm -rf tmp