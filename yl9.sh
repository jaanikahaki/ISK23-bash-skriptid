#!/bin/bash
#yl9 - numbrite ära arvamine
#autor: Jaanika Haki
#loodud: 13.04.2024


# suvalise numbri genereerimine, vahemikus 1 kuni 20
target=$(( RANDOM % 20 + 1 ))
# palume kasutajal number ära arvata
echo "Arva ära üks number 1st 20ni:"

# kasutajalt küsitakse numbreid kuni ta õige ära arvab ning pakkumiste arv loetakse kokku
attempts=0
while true; do
	read guess
	(( attempts++ ))
# kui kasutaja pakub väiksema või suurema numbri, kui genereeritud siis palutakse uuesti arvata
	if (( guess < target )); then
		echo "Pakutud number on suurem kui $guess. Paku uuesti:"
	elif (( guess > target )); then
		echo "Pakutud number on väiksem kui $guess. Paku uuesti:"
	else # kui kasutaja vastab õigesti, saab kiita ja talle öeldakse ka mitme korraga ära arvas
		echo "Õige! Number on tõesti $guess"
		echo "Arvasid ära $attempts katsega!"
		break
	fi
done
