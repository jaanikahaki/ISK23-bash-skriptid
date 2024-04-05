#!/bin/bash
#boonus1 - failist koopia loomine
#autor: Jaanika Haki
#loodud: 02.04.2024

echo "Sisestage failinimi, mida soovite kopeerida:"
read filename

base=$(basename "$filename")
new_filename="${base%}_$(date +"%d-%m-%y").${base##*.}"

cp "$filename" "$new_filename" && echo "Fail $filename on kopeeritud ja saanud uue nime $new_filename."
#ls -l "$new_filename"
