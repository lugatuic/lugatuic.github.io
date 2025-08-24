#!/usr/bin/env bash

# Verbose
set -xeu

# Variable to collect all the markdown links into
# Format: [Article Title](Article Link)
LINKS=$""

for files in $(echo "$@" | tr ' ' '\n' | sort -V); do
  # Parameter Expansion; Remove 'public/' from filename and store into variable F
  F="${files#public/}"
  # "TMP" stores the current markdown link to be appended to the list
  TMP=""

  # Title extraction from HTML. Operates on assumption that each webpage has a title meta tag.

  # find title meta tag with awk
  TITLE="$(awk '/<title>/ {print $0}' $files)"
  # abuses awk reformatting - just removes trailing & leading whitespace :)
  TITLE="$(echo $TITLE | awk '{$1=$1};1')"
  # parameter expansion again, remove title html tags
  # e.g. <title>My Title</title> becomes "My Title"
  TITLE=${TITLE#<title>}
  TITLE=${TITLE%</title>}

  # Store current markdown link with newline in TMP
  printf -v TMP "[$TITLE]($F)  \n"
  # Append TMP to list
  LINKS="${LINKS}${TMP}"
done

pandoc -s --template template.html --metadata-file metadata.yml --metadata-file sitemap.yml -o public/sitemap.html <<<"${LINKS}"
