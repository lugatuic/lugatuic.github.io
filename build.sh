#!/bin/sh
emacs -Q --script build-site.el
cp content/style.xsl public/ && echo "Copied style.xsl!"
