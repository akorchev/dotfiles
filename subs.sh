#!/bin/bash

for file in {*.sub,*.srt}
do
    if file -I $file | grep -q utf; then
        echo "Converting $file"
        iconv -f UTF8 -t CP1251 -c "$file" > "$file.new"
        mv "$file.new" "$file"
    else
        echo "Skipping $file"
    fi
done
