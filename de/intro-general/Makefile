TARGET = intro-general
INKSCAPE ?= inkscape -z

SVGSRC = $(wildcard img-src/*.svg)
SVGDST = $(addsuffix .pdf,$(basename $(SVGSRC)))

COMMONDEPS += $(SVGDST)

include ../slides.Makefile

img-src/%.pdf: img-src/%.svg
	$(INKSCAPE) -f $< --export-pdf $@
