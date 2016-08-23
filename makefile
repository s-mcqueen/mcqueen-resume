TEX = pdflatex -shell-escape -interaction=nonstopmode -file-line-error

all : pdf view

pdf :
	# Create file named "sean_mcqueen.pdf", which is a nicer name for my resume.
	# Just in case, you know, anyone ever downloads it.
	$(TEX) --jobname=sean_mcqueen res.tex

clean:
	rm -f sean_mcqueen.pdf sean_mcqueen.log

view :
	open sean_mcqueen.pdf