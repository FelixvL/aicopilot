#!/bin/bash
echo "Huidige datum en tijd:"
date
asciidoctor index.adoc
asciidoctor 4006curriculum.adoc

git add .
git commit -m "volgende commit"
git pull
git push
