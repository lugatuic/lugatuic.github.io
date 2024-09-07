#!/usr/bin/env bash

set -xeu

LINKS=$""

for files in $(echo "$@" | tr ' ' '\n' | sort -V); do
	F="${files#public/}"; 
	TMP=""
	printf -v TMP "[${F%.html}]($F)  \n"
	LINKS="${LINKS}${TMP}"
done
		
pandoc -s --template template.html --metadata-file metadata.yml --metadata-file sitemap.yml -o public/sitemap.html <<< "${LINKS}"
