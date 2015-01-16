TARGETS = $(subst /,,$(dir $(wildcard */*.tex)))

all: $(TARGETS)

$(TARGETS):
	$(MAKE) -C $@

.PHONY: $(TARGETS)
