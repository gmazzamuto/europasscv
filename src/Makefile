ICONS_SVG=$(wildcard icons/*_europass_icon.svg)
ICONS_PDF=$(ICONS_SVG:.svg=.pdf)

INSTALL = install -m 644
INSTALLDIR = install -d

all: class documentation

pictures: icons europasslogo2013.pdf

europasslogo2013.pdf: europasslogo2013.svg
	inkscape $< --export-area-drawing --export-type="pdf" --export-filename="$@"

# convert from pdf to ps then back to pdf to avoid the pdftex warning "PDF
# inclusion: multiple pdfs with page group included in a single page"
icons: $(ICONS_SVG) $(ICONS_PDF)

%_europass_icon.temp.pdf: %_europass_icon.svg
	inkscape $< --export-area-page --export-type="pdf" --export-filename="$@"

%_europass_icon.ps : %_europass_icon.temp.pdf
	pdf2ps $< $@

%_europass_icon.pdf : %_europass_icon.ps
	ps2pdf $< $@

documentation: class europasscv.pdf examples

%.pdf: %.tex
	latexmk -pdf $<

examples: europasscv_en.pdf europasscv_bib_en.pdf

class: pictures

package: class documentation tds
	git diff --exit-code || (echo "Please commit or stash changes\n" && false)
	$(INSTALLDIR) europasscv/example
	$(INSTALLDIR) europasscv/icons
	$(INSTALL) icons/*_europass_icon.pdf europasscv/icons
	$(INSTALL) europasslogo2013.pdf europasscv
	$(INSTALL) europasscv.cls europasscv
	$(INSTALL) europasscv-bibliography.sty europasscv
	$(INSTALLDIR) europasscv/def
	$(INSTALL) def/*.def europasscv/def
	$(INSTALL) europasscv.tex europasscv
	$(INSTALL) europasscv.pdf europasscv
	$(INSTALL) europasscv_*en.tex europasscv/example
	$(INSTALL) europasscv_*en.pdf europasscv/example
	$(INSTALL) europasscv_example.bib europasscv/example
	$(INSTALL) ../README.md europasscv
	$(INSTALL) ../CHANGELOG.md europasscv
	$(INSTALL) Makefile europasscv/Makefile.europasscv
	$(INSTALL) Makefile europasscv/Makefile.europasscv
	tar -cvf europasscv.tar --owner=0 --group=0 europasscv europasscv.tds.zip
	gzip -f europasscv.tar
	rm -fr europasscv
	rm -fr europasscv.tds.zip

tds: class documentation
	$(INSTALLDIR) tds/tex/latex/europasscv
	$(INSTALLDIR) tds/tex/latex/europasscv/icons
	$(INSTALL) icons/*_europass_icon.pdf tds/tex/latex/europasscv/icons
	$(INSTALL) europasslogo2013.pdf tds/tex/latex/europasscv
	$(INSTALL) europasscv.cls tds/tex/latex/europasscv
	$(INSTALL) europasscv-bibliography.sty tds/tex/latex/europasscv
	$(INSTALLDIR) tds/tex/latex/europasscv/def
	$(INSTALL) def/*.def tds/tex/latex/europasscv/def
	$(INSTALLDIR) tds/doc/latex/europasscv/example
	$(INSTALL) europasscv_*en.pdf tds/doc/latex/europasscv/example
	$(INSTALL) europasscv_*en.tex tds/doc/latex/europasscv/example
	$(INSTALL) europasscv_example.bib tds/doc/latex/europasscv/example
	$(INSTALL) ../README.md tds/doc/latex/europasscv
	$(INSTALL) ../CHANGELOG.md tds/doc/latex/europasscv
	$(INSTALL) europasscv.pdf tds/doc/latex/europasscv
	$(INSTALL) europasscv.tex tds/doc/latex/europasscv
	cd tds && zip -r europasscv.tds.zip * && mv europasscv.tds.zip ..
	rm -fr tds

distclean:
	rm -f *~ *.synctex.gz *.aux *.log *.out *.backup *.toc *.temp *.bbl *.bcf *.blg *.fls *.run.xml *.fdb_latexmk

clean: distclean
	rm -f *.pdf
	rm -f icons/*.pdf

.PHONY: all clean distclean tds package class documentation examples pictures
