vpath
vpath % ./content
vpath %.html ./public

.PHONY: all clean

EXT := .org .md

EXT_FIND := $(foreach e, $(EXT), -name "*$(e)" -o)

EXT_FIND2 := $(shell E="$(EXT_FIND)"; echo "$${E%*-o}")

${info EXT_FIND $(EXT_FIND2)}

FILES  := $(shell find content -type f \( $(EXT_FIND2) \) -print )
FILES_BASE := $(basename $(FILES))
HTMLFILES := $(patsubst content/%, public/%.html, $(FILES_BASE))
PANDOC_FLAGS := --template template.html
PANDOC_FLAGS += -s

PANDOC := pandoc $(PANDOC_FLAGS)

DIRS_CONTENT := $(shell find content ! -path content -type d)
DIRS_PUBLIC := $(patsubst content/%, public/%, $(DIRS_CONTENT))

# ${info DIRS PUBLIC $(DIRS_PUBLIC)}
# ${info DIRS CONTENT $(DIRS_CONTENT)}

$(foreach d, $(DIRS_PUBLIC), $(shell mkdir -p $(d)))

# ${info FILES IS $(FILES)}
# ${info HTMLFILES IS $(HTMLFILES)}


define MAKE_HTML

public/%.html: $(join content/%, $(1))
	$(PANDOC) $$^ -o $$@

endef

${info RULES: $(foreach i, $(EXT), $(call MAKE_HTML, $(i)))}

$(foreach i, $(EXT), $(eval $(call MAKE_HTML, $(i))))



all: $(HTMLFILES)
	echo "FILES: $(FILES) HTML $(HTMLFILES)"
	rsync -avzh content/static/ public/static
	cat sitemap.head.html > public/sitemap.html
	for files in $^; do \
	    F="$${files#public/}"; \
	    echo "<a href=\"$$F\">$$(basename -s .html $$F)</a><br />" >> public/sitemap.html; \
	done
	cat sitemap.tail.html >> public/sitemap.html
	echo "Running calendar.sh..."
	$(shell ./calendar.sh)

clean:
	rm -rf public/*
