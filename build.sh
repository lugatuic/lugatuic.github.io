#!/bin/sh
set -xe
TZ="America/Chicago"
emacs -Q --script build-site.el
cp content/style.xsl public/ && echo "Copied style.xsl!"
cp content/logo.svg public/ && echo "Copied logo!"
cp content/favicon.png public/ && echo "Copied Favicon!"

# Build calendar
./run.sh
