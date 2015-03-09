ICONS_SVG=$(wildcard *_europass_icon.svg)
ICONS_PDF=$(ICONS_SVG:.svg=.pdf)

all: class documentation

pictures: icons europasslogo2013.pdf

europasslogo2013.pdf: europasslogo2013.svg
	inkscape $< --export-area-drawing --export-pdf $@

# convert from pdf to ps then back to pdf to avoid the pdftex warning "PDF
# inclusion: multiple pdfs with page group included in a single page"
icons: $(ICONS_SVG) $(ICONS_PDF)

%_europass_icon.pdf.temp : %_europass_icon.svg
	inkscape $< --export-area-page --export-pdf $@

%_europass_icon.ps : %_europass_icon.pdf.temp
	pdf2ps $< $@

%_europass_icon.pdf : %_europass_icon.ps
	ps2pdf $<

documentation: class europasscv.pdf europasscv_en.pdf

europasscv.pdf: europasscv.tex
	pdflatex $<
	pdflatex $<

europasscv_en.pdf: europasscv_en.tex
	pdflatex $<
	pdflatex $<

class: pictures

package: class documentation
	mkdir -p europasscv/example
	cp *.svg europasscv
	cp *_europass_icon.pdf europasscv
	cp europasslogo2013.pdf europasscv
	cp europasscv.cls europasscv
	cp europasscv*.def europasscv
	cp europasscv.tex europasscv
	cp europasscv.pdf europasscv
	cp europasscv_en.tex europasscv/example
	cp europasscv_en.pdf europasscv/example
	cp README europasscv
	cp Makefile europasscv/Makefile.europasscv
	tar -cvf europasscv.tar europasscv
	gzip -f europasscv.tar
	rm -fr europasscv

distclean:
	rm -f *~ *.synctex.gz *.aux *.log *.out *.backup *.toc *.temp

clean: distclean
	rm -f *.pdf