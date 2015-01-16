PDFLATEX ?= lualatex -halt-on-error
PDFLATEXFULL = $(PDFLATEX) -jobname build/$(TARGET) $(TARGET).tex
VIEWER ?= xdg-open

build/$(TARGET).pdf: $(TARGET).tex
	mkdir -p build
	$(PDFLATEXFULL)

do-build: build/$(TARGET).pdf

full: build/$(TARGET).pdf
	$(PDFLATEXFULL)

view: build/$(TARGET).pdf
	$(VIEWER) $<

clean:
	rm -rf build
