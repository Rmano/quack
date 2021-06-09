GIT_REV:=$(shell git rev-parse --short HEAD)
GIT_FULLREV:=$(shell git rev-parse HEAD)
GIT_DATE:=$(shell export LC_ALL=C;date +"%Y\/%m\/%d" --date=@`git show -s --format=%ct`)

.PHONY: clean

build:
	cd doc; echo 'revision \\texttt{' $(GIT_FULLREV) '} date ' $(GIT_DATE) " built at " `date` > data.itx  
	cd doc; pdflatex lots_of_circuits.tex

clean:
	cd doc; rm -f *.aux *.log *.pdf



