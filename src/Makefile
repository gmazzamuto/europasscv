ICONS_SVG=$(wildcard *_europass_icon.svg)
ICONS_PDF=$(ICONS_SVG:.svg=.pdf)

INSTALL = install -m 644
INSTALLDIR = install -d

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
	latexmk -pdf $<

europasscv_en.pdf: europasscv_en.tex
	latexmk -pdf $<

class: pictures

package: class documentation tds
	$(INSTALLDIR) europasscv/example
	$(INSTALL) *.svg europasscv
	$(INSTALL) *_europass_icon.pdf europasscv
	$(INSTALL) europasslogo2013.pdf europasscv
	$(INSTALL) europasscv.cls europasscv
	$(INSTALL) europasscv*.def europasscv
	$(INSTALL) europasscv.tex europasscv
	$(INSTALL) europasscv.pdf europasscv
	$(INSTALL) europasscv_en.tex europasscv/example
	$(INSTALL) europasscv_en.pdf europasscv/example
	$(INSTALL) ../README.md europasscv
	$(INSTALL) ../CHANGELOG.md europasscv
	$(INSTALL) Makefile europasscv/Makefile.europasscv
	$(INSTALL) Makefile europasscv/Makefile.europasscv
	tar -cvf europasscv.tar europasscv europasscv.tds.zip
	gzip -f europasscv.tar
	rm -fr europasscv
	rm -fr europasscv.tds.zip

tds: class documentation
	$(INSTALLDIR) tds/tex/latex/europasscv
	$(INSTALL) *_europass_icon.pdf tds/tex/latex/europasscv
	$(INSTALL) europasslogo2013.pdf tds/tex/latex/europasscv
	$(INSTALL) europasscv.cls tds/tex/latex/europasscv
	$(INSTALL) europasscv*.def tds/tex/latex/europasscv
	$(INSTALLDIR)  tds/doc/latex/europasscv/example
	$(INSTALL) europasscv_en.pdf tds/doc/latex/europasscv/example
	$(INSTALL) europasscv_en.tex tds/doc/latex/europasscv/example
	$(INSTALL) ../README.md tds/doc/latex/europasscv
	$(INSTALL) ../CHANGELOG.md tds/doc/latex/europasscv
	$(INSTALL) europasscv.pdf tds/doc/latex/europasscv
	$(INSTALL) europasscv.tex tds/doc/latex/europasscv
	cd tds && zip -r europasscv.tds.zip * && mv europasscv.tds.zip ..
	rm -fr tds

distclean:
	rm -f *~ *.synctex.gz *.aux *.log *.out *.backup *.toc *.temp

clean: distclean
	rm -f *.pdf

.PHONY: all clean distclean tds package class documentation pictures
