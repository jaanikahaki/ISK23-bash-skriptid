#!/bin/bash
#yl1, tegi Jaanika Haki, ISK23, 26.03.2024

echo "Tere tulemast Bash skriptimise kursusele!" #lisan teksti "" vaheel
echo  # tühi rida
echo "Täna on:"  #tekstirida, sissejuhatus järgneva rea kuupäevale:
formatted_date=$(date +"%a %b %d %T %Z %Y")  #kuupäev - nädalapäev, kuu, kuupäev, kell (t-m-s), Ida-Euroopa aeg, aasta
echo  "$formatted_date"  # käivitan "formatted_date" rea
echo # tühi rida
echo "See on hea päev Bash skriptimise alustamiseks!" # viimane rida teksti

#30 4 * * *  /home/student/skriptid/yl1.sh  crontab'i ajastamine
