.PHONY: all clean

# Define desired extensions here.
EXT := .org .md

# Name of content folder
CONTENT := content 
# Name of output/public folder
PUBLIC := public

# Sanitize
CONTENT := $(strip $(CONTENT))
PUBLIC := $(strip $(PUBLIC))

# Convert extensions to `find` command syntax
EXT_FIND := $(foreach e, $(EXT), -name \"*$(e)\" -o)
EXT_FIND := $(shell E="$(EXT_FIND)"; echo "$${E%*-o}")
# the first foreach adds an extra -o

${info EXT_FIND $(EXT_FIND)}

# List of files in the form `content/file.ext`
FILES := $(shell find $(CONTENT) -type f \( $(strip $(EXT_FIND)) \) -print )

# List of output HTML files
HTMLFILES := $(patsubst $(CONTENT)/%, $(PUBLIC)/%.html, $(basename $(FILES)))
# HTMLFILES := $(FILES:.org=.html)

# Pandoc Setup
PANDOC_FLAGS := --template template.html # Template to use
PANDOC_FLAGS += -s # Standalone document
PANDOC := pandoc $(PANDOC_FLAGS) # final pandoc command

# Mirror directory structure of content
DIRS_CONTENT := $(shell find $(CONTENT) ! -path $(CONTENT) -type d)
# Exclude the "content/" folder itself
DIRS_PUBLIC := $(patsubst $(CONTENT)/%, $(PUBLIC)/%, $(DIRS_CONTENT))

# Make any subdirectories needed in public
$(foreach d, $(DIRS_PUBLIC), $(shell mkdir -p $(d)))

# Metaprogramming maddness
define MAKE_HTML

$(PUBLIC)/%.html: $(join $(CONTENT)/%, $(1))
	$(PANDOC) $$^ -o $$@

endef

${info RULES: $(foreach i, $(EXT), $(call MAKE_HTML, $(i)))}

$(foreach i, $(EXT), $(eval $(call MAKE_HTML, $(i))))



all: $(HTMLFILES)
	echo "FILES: $(FILES) HTML $(HTMLFILES)"
	rsync -avzh $(CONTENT)/static/ $(PUBLIC)/static
	cat sitemap.head.html > $(PUBLIC)/sitemap.html
	for files in $^; do \
	    F="$${files#public/}"; \
	    echo "<a href=\"$$F\">$$(basename -s .html $$F)</a><br />" >> $(PUBLIC)/sitemap.html; \
	done
	cat sitemap.tail.html >> $(PUBLIC)/sitemap.html
	echo "Running calendar.sh..."
	$(shell ./calendar.sh)

clean:
	rm -rf $(PUBLIC)
