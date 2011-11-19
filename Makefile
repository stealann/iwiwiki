SRCS := $(shell find . -name '*.att' -prune -o \( -type f -name '*.markdown' -print \))
OBJS := $(patsubst %.markdown, %.html, $(SRCS))
DIRS := $(shell find . \( -name '.?*' -o -name '*.att' \) -prune -o \( -type d -print \))
ATTDIRS := $(shell find . \( -type d -name '*.att' -print \))
OUTPUT_DIR := ../html
IWIWIKI := ./iwiwiki

.DELETE_ON_ERROR:

.PHONY: all
all: create-dirs link-att-dirs $(OBJS)

.PHONY: create-dirs
create-dirs:
	@test -d $(OUTPUT_DIR) || mkdir -p $(OUTPUT_DIR)
	@for d in $(DIRS); do \
		test -d $(OUTPUT_DIR)/$$d || mkdir -p $(OUTPUT_DIR)/$$d; \
	done

.PHONY: link-att-dirs
link-att-dirs: create-dirs
	@for d in $(ATTDIRS); do \
		test -d $(OUTPUT_DIR)/$$d || ( cd $(OUTPUT_DIR)/`dirname $$d`; ln -s $(CURDIR)/$$d ) \
	done

%.html: %.markdown
	$(IWIWIKI) $< > $@
