OUTPUT_DIRECTORY=out

HTML='-s --css killercup.css --css style.css'
TEX='--pdf-engine=xelatex'

if [ $# != 2 ] ; then
    echo "USAGE: $0 filename [pdf|html|tex]"
    exit 1
fi

mkdir -p $OUTPUT_DIRECTORY
pandoc $HTML $TEX -smart -f markdown+multiline_tables $1.md -o $OUTPUT_DIRECTORY/$1.$2
