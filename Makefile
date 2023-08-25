SHELL 	= /bin/sh

OUTDIR	= ${PWD}/out
INPDIR	= ${PWD}/src

.PHONY: test
test: build summary


.PHONY: full
full: clean test


.PHONY: archive
archive:
	7z a -tzip ${OUTDIR}/HCMUT-Latex-Report-Template.zip ${INPDIR}/*


.PHONY: clean
clean:
	rm -rf ${INPDIR}/_minted*
	rm -rf ${OUTDIR}/*


.PHONY: build
build:
	latexmk -outdir=${OUTDIR} -silent -cd -xelatex -shell-escape -halt-on-error -synctex=1 ${INPDIR}/main.tex


.PHONY: summary
summary:
	texlogfilter --box --ref --filename ${OUTDIR}/main.log
