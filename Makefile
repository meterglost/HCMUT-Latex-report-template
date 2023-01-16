SHELL 	= /bin/sh


.PHONY: all
all: clean build summary


.PHONY: clean
clean:
	latexmk -outdir=/latex/out -c /latex/src/main.tex


.PHONY: build
build:
	latexmk -outdir=/latex/out -silent -cd -bibtex -xelatex -shell-escape -halt-on-error /latex/src/main.tex


.PHONY: summary
summary:
#	texlogsieve --only-summary ./out/main.log
	texlogfilter --box --ref --filename ./out/main.log
