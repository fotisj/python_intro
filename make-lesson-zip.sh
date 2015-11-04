#!/bin/bash
lesson=`basename $1 .ipynb`

jupyter nbconvert --to html "$1"
zip ${lesson}.zip ${lesson}.html `sed -ne 's/^.*img src="\([^"]*\)".*$/\1/p' ${lesson}.html`
