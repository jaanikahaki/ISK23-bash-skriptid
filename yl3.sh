#!/bin/bash
#yl3 - lihtne interaktiivne varundus
#autor: Jaanika Haki
#loodud: 26.03.2024

echo "Millist kausta soovid varundada?" #lisan tekstid "" vahele
read source #teeb skripti interaktiiveks, küsides kasutajalt varundatava kausta asukohta
echo #tühi rida
echo "Kuhu soovid selle varundada?"
read dest #skripti tegemine interaktiivseks, küsides kasutajalt teekonda kausta, kuhu eelnevalt küsitud kausta sisu varundada

backup="logbu_$(date +"%d%m%y_%H%M%S").tar.gz" #varunudsfaili nimetus kuupäevade ja kellaaajaga
tar -czvpf "$dest/$backup" "$source" > /dev/null 2>&1 #varundamine source kaustast dest kausta ning logi saadetakse linuxi 'musta auku', k.a errorid

echo #tühi rida
echo "Kausta $source varundamine kausta $dest on lõppenud."  #teavitus kasutajale, et tema poolt sisestatud kausta varundamine soovitud sihtkohta on lõppenud
echo "Varundusfaili nimi on $backup" # kuvab kasutajale varundufaili nimetuse
