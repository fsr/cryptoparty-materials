PDFLATEX ?= lualatex -halt-on-error
PDFLATEXFULL = $(PDFLATEX) -jobname build/$(TARGET) $(TARGET).tex
VIEWER ?= xdg-open

COMMONDEPS += $(wildcard ../../tex-inc/common/*.tex)
COMMONDEPS += $(wildcard ../tex-inc/common/*.tex)
COMMONDEPS += $(wildcard ../../tex-inc/beamer/*.tex)
COMMONDEPS += $(wildcard ../tex-inc/beamer/*.tex)

build/$(TARGET).pdf: $(TARGET).tex $(COMMONDEPS)
	mkdir -p build
	$(PDFLATEXFULL)

do-build: build/$(TARGET).pdf

full: build/$(TARGET).pdf
	$(PDFLATEXFULL)

view: build/$(TARGET).pdf
	$(VIEWER) $<

clean:
	rm -rf build
