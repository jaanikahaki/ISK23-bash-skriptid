#!/bin/bash
#yl3 - lihtne interaktiivne varundus
#autor: Jaanika Haki
#loodud: 02.04.2024
#mkdir'iga eelnevalt /varundus kaust loodud
#crontab -e lisatud käivitusrida: 0 4 * * * /home/student/skriptid/yl4.sh

backup="logsbu_$(date +"%d.%m.%y_%H.%M.%S").tar.gz" #varunudsfaili nimetus kuupäevade ja kellaaajaga
source="/var/log"
dest="/varundus"

tar -czpf "$dest/$backup" "$source" > /dev/null 2>&1 #varundamine source kaustast dest kausta ning logi saadetakse linuxi 'musta auku', k.a errorid
