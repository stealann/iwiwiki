SRCS := $(shell find . -type f -name '*.markdown')
OBJS := $(patsubst %.markdown, %.html, $(SRCS))
IWIWIKI := ./iwiwiki

.PHONY: all
all: $(OBJS)

%.html: %.markdown
	$(IWIWIKI) $< > $@
