#!/usr/bin/env bash

pandoc -s --mathjax -i -t revealjs slides.md -o slides_noninlined.html -V revealjs-url=./reveal.js -V theme=beige
node node_modules/inliner/cli/index.js -m slides_noninlined.html > slides.html
#inliner -m example16d.html > slides.html
