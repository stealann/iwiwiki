SRCS := $(shell find . -name '*.att' -prune -o \( -type f -name '*.markdown' -print \))
OBJS := $(patsubst %.markdown, %.html, $(SRCS))
IWIWIKI := ./iwiwiki

.PHONY: all
all: $(OBJS)

%.html: %.markdown
	$(IWIWIKI) $< > $@
