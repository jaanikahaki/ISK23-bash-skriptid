#!/bin/bash
#yl2 - interaktiivne kopeerimine
#autor: Jaanika Haki
#loodud: 26.03.2024


echo "Millist kausta soovid kopeerida?"
read source
echo
echo "Kuhu soovid selle kopeerida?"
read dest

cp -r $source $dest
echo
echo "Kausta $source kopeerimine kausta $dest on lõppenud"
