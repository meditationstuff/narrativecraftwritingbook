#!/bin/bash

#"make" the document from *.md to a single index.html

# run as so:
# ./m.sh

./pandoc -f commonmark+autolink_bare_uris main.md footer.md -o intermediate.html

cat header.html intermediate.html > index.html

rm ./intermediate.html
