#! /usr/bin/env sh

pandoc -f markdown+lhs --standalone --css=http://benjam.info/pan-am/styling.css -V lang=en -V --mathjax --to=html5 01-heim.lhs -o 01-heim.html
