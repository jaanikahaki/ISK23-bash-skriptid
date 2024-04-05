#!/bin/bash
#yl7.2 - valikuline skript if-lause abil, keerulisem skript
#autor: Jaanika Haki
#loodud: 05.04.2024
#skritpi testimiseks sai mkdir abil kaust /var/vanadfailid loodud

# Kõigepealt skript kontrollib kas kaust /var/vanadfailid on olemas
if [ -d "/var/vanadfailid" ]; then
	echo "Mida soovid kaustaga teha?"
	echo "a = Soovin kausta varundada"
	echo "b = Soovin kausta sisu kustutada"
	echo
	read -p "" choice

	case $choice in
              a)
		# Varundamine
		backup="/var/backups/varundus_$(date +"%d%m%y").tar.gz"
		tar -czf "$backup" -C /var/vanadfailid .
		echo "Varundus asukohta $backup teostatud"
		;;
              b)
		# Kausta sisu kustutamine
		rm -rf /var/vanadfailid/*
		echo "Kausta /var/vanadfailid sisu kustutatud"
		;;
              *)
		echo "Vale valik. Skript lõpetab töö."
		;;
	esac
else # Skript ei leia kausta
	echo "Kausta ei leitud, skript seiskub."
fi
