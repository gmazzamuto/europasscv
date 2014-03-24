ICONS_SVG=$(wildcard *_icon.svg)
ICONS_PDF=$(ICONS_SVG:.svg=.pdf)

all: class documentation

pictures: icons europasslogo2013.pdf

europasslogo2013.pdf: europasslogo2013.svg
	inkscape $< --export-area-drawing --export-pdf $@

# convert from pdf to ps then back to pdf to avoid the pdftex warning "PDF
# inclusion: multiple pdfs with page group included in a single page"
icons: $(ICONS_SVG) $(ICONS_PDF)

%_icon.pdf.temp : %_icon.svg
	inkscape $< --export-area-page --export-pdf $@

%_icon.ps : %_icon.pdf.temp
	pdf2ps $< $@

%_icon.pdf : %_icon.ps
	ps2pdf $<

documentation: class europecv2013.pdf

europecv2013.pdf: europecv2013.tex
	pdflatex $<
	pdflatex $<

class: pictures

distclean:
	rm -f *~ *.synctex.gz *.aux *.log *.out *.backup

clean: distclean
	rm -f *.pdf