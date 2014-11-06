#!/bin/bash
lesson=`basename $1 .ipynb`

ipython3 nbconvert --to html "$1"
zip ${lesson}.zip ${lesson}.html `sed -ne 's/^.*img src="\([^"]*\)".*$/\1/p' ${lesson}.html`
