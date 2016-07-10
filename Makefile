MAIN = main
TARGET = slide
LATEX = pdflatex

all: $(TARGET).article.pdf $(TARGET).beamer.pdf

$(TARGET).article.pdf: article.tex $(MAIN).tex
	$(LATEX) --jobname=$(TARGET).article article

$(TARGET).beamer.pdf: beamer.tex $(MAIN).tex
	$(LATEX) --jobname=$(TARGET).beamer beamer

clean:
	@rm -f $(TARGET).article.aux $(TARGET).article.log $(TARGET).article.pdf $(TARGET).article.nav $(TARGET).article.out $(TARGET).article.snm $(TARGET).article.toc $(TARGET).article.vrb *~
	@rm -f $(TARGET).beamer.aux $(TARGET).beamer.log $(TARGET).beamer.pdf $(TARGET).beamer.nav $(TARGET).beamer.out $(TARGET).beamer.snm $(TARGET).beamer.toc $(TARGET).beamer.vrb *~
	@rm -f pygments.aux
