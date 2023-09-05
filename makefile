vpath
vpath % ./content
vpath %.html ./public

.PHONY: all clean

EXT := .org .md

FILES := $(foreach e, $(EXT), $(wildcard ./content/*$(e)))
FILES_BASE := $(basename $(FILES))
HTMLFILES := $(patsubst ./content/%, ./public/%.html, $(FILES_BASE))
# HTMLFILES := $(notdir $(HTMLFILES))
PANDOC_FLAGS := --template template.html
# PANDOC_FLAGS := --metadata-file metadata.yaml
PANDOC_FLAGS += -s

PANDOC := pandoc $(PANDOC_FLAGS)


# ${info FILES IS $(FILES)}
# ${info HTMLFILES IS $(HTMLFILES)}


define MAKE_HTML

public/%.html: $(join content/%, $(1))
	@mkdir -p ./public
	$(PANDOC) $$^ -o $$@

endef

# ${info RULES: $(foreach i, $(EXT), $(call MAKE_HTML, $(i)))}

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
	echo "Running run.sh..."
	$(shell ./run.sh)

clean:
	rm -rf public/*
