#!/bin/bash
#yl5 - kausta kopeerimine või liigutamine
#autor: Jaanika Haki
#loodud: 05.04.2024
# kasutaja peab tegema valiku a või b vahel
echo
echo "Kas soovid kausta kopeerida või liigutada? Tee oma valik:"
echo
echo "a = kausta kopeerimine"
echo "b = kausta liigutamine"
echo
# kasutaja valiku  muutujaks lugemine
read choice
# case skript, mis käivitub vastavalt kasutaja valikule.
# valikus on a ja b ning typomeistrile ka *...
#...kui kasutaja peaks sisestama valiku, mis erineb a'st või b'st
case $choice in
      a)
	echo "Millist kausta soovid kopeerida?"
	read source
	echo "Kuhu kausta tuleks see kopeerida?"
	read dest
	cp -r "$source" "$dest"
	echo "Kausta $source kopeerimine kausta $dest on lõppenud."
	;;
      b)
	echo "Millist kausta soovid liigutada?"
	read source
	echo "Kuhu kausta soovid seda liigutada?"
	read dest
	mv "$source" "$dest"
	echo "Kausta $source liigutamine kausta $dest on lõppenud."
	;;
      *)
	echo "Tundmatu valik! Skript lõpetab oma töö ja pead uuesti proovima."
	;;
esac
