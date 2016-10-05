NOTEBOOKS=$(wildcard *.ipynb)
PDFS=$(NOTEBOOKS:.ipynb=.pdf)

default : pdf

pdf : $(PDFS)


%.pdf : %.md
	pandoc --latex-engine=lualatex --filter=pandoc-svg -o $@ $<

%.md : %.ipynb
	jupyter nbconvert --to markdown $<
