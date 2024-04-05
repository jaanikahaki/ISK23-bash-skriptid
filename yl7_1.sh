#!/bin/bash
#yl7.1 - valikuline skript if-lause abil
#autor: Jaanika Haki
#loodud: 05.04.2024

# Kontrollib, kas kaust /var/vanadfailid on olemas(kaust eelnevalt loodud ning katseks sai sinna ka üks txt fail tekitatud)
if [ -d "/var/vanadfailid" ]; then
# Kui kaust olemas, siis tar pakib kausta ja selle sisu varundus.tar.gz'ks
	tar -czf /var/backups/varundus.tar.gz -C /var/vanadfailid .

	# Kui varundatud, kustutab skript kõik failid kaustast /var/vanadfailid
	rm -rf /var/vanadfailid/*
# Kui skript edukas, siis saab kasutaja teate, et failid on varundatud ja /vanadfailid kaust tühjendatud
# Kui aga skript ei leidnud /vanadfailid kausta, siis saab kasutaja vastava teate
	echo "Varundus teostatud ja kaust tühjendatud."
else
	echo "Kausta ei leitud, skript seiskub."
fi
