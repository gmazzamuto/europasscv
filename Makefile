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

package: class documentation
	mkdir europecv2013
	cp *_icon.pdf europecv2013
	cp europasslogo2013.pdf europecv2013
	cp europecv2013.cls europecv2013
	cp ecv*.def europecv2013
	cp europecv2013.tex europecv2013
	cp europecv2013.pdf europecv2013
	cp example_en.tex europecv2013
	cp example_en.pdf europecv2013
	tar -cvf europecv2013.tar europecv2013
	gzip -f europecv2013.tar
	rm -fr europecv2013

distclean:
	rm -f *~ *.synctex.gz *.aux *.log *.out *.backup *.toc

clean: distclean
	rm -f *.pdf