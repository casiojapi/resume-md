#!/bin/bash
pandoc template.md --pdf-engine=pdflatex -f markdown+smart -t pdf -o msantoro-cv.pdf
