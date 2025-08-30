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

# Metaprogramming madness

# MAKE_HTML exists so that a seperate rule for each supported extension does not have to exist.
# Instead, the template for such a rule for any valid extension is written here where it is thereby evaluated just below its definition.
# Basically, as long as a file type can actually be converted by pandoc into an HTML file, simply appending the proper extension to EXT will effectively introduce a rule supporting it.

define MAKE_HTML

$(PUBLIC)/%.html: $(join $(CONTENT)/%, $(1))
	$(PANDOC) $$(PANDOC_FILE_SPECIFIC) $$^ -o $$@

endef

# For every extension, scour the content folder for files which match, then run MAKE_HTML on all of them!
${info RULES: $(foreach i, $(EXT), $(call MAKE_HTML, $(i)))}

$(foreach i, $(EXT), $(eval $(call MAKE_HTML, $(i))))

# Build website
all: $(HTMLFILES)
	@echo -e "FILES: $(FILES) \nHTML: $(HTMLFILES)"
	rsync -avzh $(CONTENT)/static/ $(PUBLIC)/static
	rsync -avzh $(CONTENT)/*.html $(PUBLIC)
	$(foreach s, $(SCRIPTS), $(shell $(s) $(HTMLFILES)))

# Clean build folder
clean:
	rm -rf $(PUBLIC)

# Build website, then run locally for testing.
demo: all
	python -m http.server -d public/ -b 127.0.0.1 8080
