# LaTex Makefile

FILE = The_spirit_of_the_Chinese_people

#all: pdf view vim clean

pdf: $(FILE).tex
	xelatex -interaction=nonstopmode $(FILE).tex

view: 
	evince $(FILE).pdf &

vim:
	apvlv $(FILE).pdf &

clean: 
	rm *.aux *.bbl *.blg *.bcf *.log *.nav *.out *.snm *.toc *.run.xml *.gp~ Makefile~ *.tex~ *.bib~
	@echo "all cleaned up"
