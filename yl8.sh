#!/bin/bash
#yl8 - lihtne interaktiivne varundus, yl3 täiendatud versioon
#autor: Jaanika Haki
#loodud: 05.04.2024

echo "Millist kausta soovid varundada?" # Lisatakse tekst ""
read source # Küsitakse kasutajalt varundatava kausta asukohta

# Kontrollitakse, kas sisestatud varundatav kaust on olemas
if [ ! -d "$source" ]; then
	echo "Kausta ei leitud, skript lõpetab oma töö."
	exit 1 #lõpetame skripti veakoodiga 1, mis ei olnud küll kohustuslik
fi

echo # Tühi rida
echo "Kuhu soovid selle varundada?"
read dest # Skripti tegemine interaktiivseks, küsitakse kasutajalt teekonda kausta, kuhu eelnevalt varundatakse

# Kontrollitakse, kas sisestatud kaust kuhu varundada on olemas
if [ ! -d "$dest" ]; then
	echo "Kausta ei leitud, skript lõpetab oma töö."
	exit 1 # lõpetame skripti veakoodiga 1, mis ei olnud küll kohustuslik
fi

backup="logbu_$(date +"%d%m%y_%H%M%S").tar.gz" # Varundusfaili nimetus kuupäevade ja kellaaajaga
tar -czvpf "$dest/$backup" "$source" > /dev/null 2>&1 # Varundamine source kaustast dest kausta tar abil
# Kontrollitakse, kas varundusfailid tekkisid kausta kuhu varundada oli vaja
if [ ! -f "$dest/$backup" ]; then
	echo "Varundamine ebaõnnestus, varundusfaili ei leitud kaustast $dest."
	exit 1 #lõpetame skripti veakoodiga 1, mis ei olnud küll kohustuslik
fi

echo # Tühi rida
echo "Kausta $source varundamine kausta $dest on edukalt lõppenud." # Teavitus kasutajale, et tema poolt varundamine on lõppenud
