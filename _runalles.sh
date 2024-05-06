#!/bin/bash
fswatch -o /Users/lonlrn/Desktop/AIDocumentatie4006/asciidocsite/4006curriculum.adoc | while read f
do
    echo "Bestand is gewijzigd, script wordt uitgevoerd..."
    echo "Huidige datum en tijd:"
    date
    asciidoctor index.adoc
    asciidoctor 4006curriculum.adoc
    asciidoctor 4006labs.adoc

    git add .
    git commit -m "volgende commit"
    git pull
    git push
done
