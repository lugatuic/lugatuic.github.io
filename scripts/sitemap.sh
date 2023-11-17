#!/usr/bin/env bash

set -xeu

LINKS=$""

for files in "$@"; do 
   F="${files#public/}"; 
	 TMP=""
   printf -v TMP "<a href=\"$F\">$(basename -s .html $F)</a><br />\n"
	 LINKS="${LINKS}${TMP}"
done
		

cat >"public/sitemap.html" <<EOF
<!DOCTYPE html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<html>
	<head>
		<title>LUG Sitemap</title>
		<link rel="stylesheet" href="static/main.css" />
		<style> a {font-size:2em; line-height:1.2;} </style>
	</head>
	<body>
		<main>

${LINKS}

		</main>
</body>
</html>
EOF
