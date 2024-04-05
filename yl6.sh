#!/bin/bash
#yl6 - varundus vastavalt nädalapäevale
#autor: Jaanika Haki
#loodud: 05.04.2024
#crontab'i lisatud rida: 0 4 * * * /home/student/skriptid/yl6.sh

backup="logsbu_$(date +"%d.%m.%y_%H.%M.%S").tar.gz" #varundusfaili nimetus "logsbu" kuupäevade ja kellaaajaga
source="/var/log"  # kust võetakse varundatavad failid
dest="/varundus"  # kuhu varundatakse (eelnevalt mkdir abil loodud kaust)
# nädalapäeva kontrollimine ja sellele vastava kausta määramine (kaustad eelnevalt mkdir abil loodud)
case $(date +%u) in
	1|3|5) dest="/varundus/esimene" ;;
	2|4|6) dest="/varundus/teine" ;;
	7) dest="/varundus/kolmas" ;;
esac
# varundamine tar'iga
tar -czpf "$dest/$backup" "$source" > /dev/null 2>&1 #varundamine source kaustast dest kausta ning logi saadetakse linuxi 'musta auku', k.a errorid
