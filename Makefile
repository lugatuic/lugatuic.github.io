.PHONY: all clean demo

# Define desired extensions here.
EXT := .org .md

# Name of content folder
CONTENT := content 

# Name of output/public folder
PUBLIC := public

# Name of the scripts folder
SCRIPT_DIR := scripts

# Sanitize
CONTENT := $(strip $(CONTENT))
PUBLIC := $(strip $(PUBLIC))
SCRIPT_DIR := $(strip $(SCRIPT_DIR))

include **/*.mk


# Convert extensions to `find` command syntax
EXT_FIND := $(foreach e, $(EXT), -name \"*$(e)\" -o)
EXT_FIND := $(shell E="$(EXT_FIND)"; echo "$${E%*-o}")
# the first foreach adds an extra -o

${info EXT_FIND $(EXT_FIND)}

# List of files in the form `content/file.ext`
FILES := $(shell find $(CONTENT) -type f \( $(strip $(EXT_FIND)) \) -print )

# List of output HTML files
HTMLFILES := $(patsubst $(CONTENT)/%, $(PUBLIC)/%.html, $(basename $(FILES)))

# List of scripts to run
SCRIPTS := $(shell find $(SCRIPT_DIR) -type f -name "*.sh" -print)

${info SCRIPTS $(SCRIPTS)}

PANDOC_FILE_SPECIFIC=$(strip $($(basename $(notdir $^))_CMDS))

# Pandoc Setup
PANDOC_FLAGS := --template template.html # Template to use
PANDOC_FLAGS += -s # Standalone document
PANDOC_FLAGS += --metadata-file metadata.yml
PANDOC = pandoc $(PANDOC_FLAGS) # final pandoc command

# Mirror directory structure of content
# Exclude the "content/" folder itself
DIRS_CONTENT := $(shell find $(CONTENT) ! -path $(CONTENT) ! -path $(CONTENT)/static* -type d)
DIRS_PUBLIC := $(patsubst $(CONTENT)/%, $(PUBLIC)/%, $(DIRS_CONTENT))

# Make any subdirectories needed in public
$(foreach d, $(DIRS_PUBLIC), $(shell mkdir -p $(d)))

# Metaprogramming maddness
define MAKE_HTML

$(PUBLIC)/%.html: $(join $(CONTENT)/%, $(1))
	$(PANDOC) $$(PANDOC_FILE_SPECIFIC) $$^ -o $$@

endef

${info RULES: $(foreach i, $(EXT), $(call MAKE_HTML, $(i)))}

$(foreach i, $(EXT), $(eval $(call MAKE_HTML, $(i))))



all: $(HTMLFILES)
	@echo -e "FILES: $(FILES) \nHTML: $(HTMLFILES)"
	rsync -avzh $(CONTENT)/static/ $(PUBLIC)/static
	$(foreach s, $(SCRIPTS), $(shell $(s) $(HTMLFILES)))

clean:
	rm -rf $(PUBLIC)

demo: all
	python -m http.server -d public/ -b 127.0.0.1 8080
