#!/usr/bin/env bash

# Useful functions
# ----------------------------------------------------------------------
function get_name()
{
    filename=$(basename $1)
    echo "${filename%.*}"
}

mkdir -p build

# Root files
# ----------------------------------------------------------------------
for file in *.md; do
    [ -f "$file" ] || break

    filename=`get_name $file`
    if [ "$filename" == "README" ]; then
        filename=index
    fi
    pandoc "$file" -s --css pandoc.css -o build/"$filename".html;
done

# Daily reports
# ----------------------------------------------------------------------
rm -fr build/daily-reports
cp -r daily-reports build/daily-reports

for file in $(find build/daily-reports -type f); do
    [ -f "$file" ] || break

    pandoc "$file" -s --css "../../pandoc.css" -o $(echo $file | cut -f 1 -d '.').html
    rm $file
done

# CSS
# ----------------------------------------------------------------------
for file in *.css; do
    [ -f "$file" ] || break

    cp "$file" build/
done