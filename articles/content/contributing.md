---
author: Neko
email: lowpolyneko@protonmail.ch
date: February 2nd, 2024
title: Contribution Guide
---
# Preface
This website is unique in that there is *no* content management system or
traditional static site generator backing it! Instead, there is a
[Makefile](make.html) that emulates the task of a static site generator
using `pandoc`'s extensive format conversion and templating. Currently both
`.org` and `.md` files have first-class support for content.

# Contributing
## Prerequisites
1. Text editor with support for either Markdown or Org-mode files. Common
   recommendations include [VS Code](https://code.visualstudio.com/), `vim`, or
   `emacs`.
2. Dependencies for building the website like `libxslt` or `pandoc`.
3. Basic usage of [Git](git2.html).

## Adding Content
1. Fork the [website repo](https://github.com/lugatuic/lugatuic.github.io) and make a
   development branch to pull-request from later.
2. Create a new `.md` or `.org` file in `content/`.
3. For every content file, include a header with a title, date, and author.
   Samples are provided below.
   - Markdown
   ```md
---
author: Neko
email: lowpolyneko@protonmail.ch
date: February 2nd, 2024
title: Contribution Guide
---
   ```
   - Org-mode
   ```org
#+TITLE: Contributing to this website.
#+DATE: <2023-01-02 Mon>
#+AUTHOR: Soham S Gumaste
#+EMAIL: sgumas2@uic.edu
   ```
4. Write out your content. You can reference other content files with a link
   (so a file like `content/a.md` would be referenced as `a.html` in your
   hyperlink). If you have static content, make a folder with the name of your
   content file and reference them from `/static/<name of your content
   file>/<static file>`. Put your static content in the `static/` folder with
   the equivalent folder structure.
5. Build the website by using `make`. The default `all` rule builds the entire
   site. You can then view your added content by opening a browser on
   `public/index.html`. You can use `make clean` aswell to clean all build
   artifacts.
6. Once you are satisfied with the look of your contribution, push and submit a
   [pull request](https://github.com/lugatuic/lugatuic.github.io/pulls)!

# Licensing
All content on the *LUG @ UIC* site is under the **MIT** license. You agree to make
__any__ content contributed to the website available under the same license. LUG
reserves the right to change the license of the website at any time, though in
practice it'll probably never happen...

---
# vim: set tw=80
...
