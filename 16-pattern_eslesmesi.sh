#! /bin/bash

#Konu anlatımı: https://alisezisli.com.tr/shell-script-9-karar-yapilari-if-elif-else


#Pattern'lar üzerinden kıyaslama örneği:
#Bu script, içinde bulunulan ayın kaç günü olduğunu gösterir:

#Command substitution kullanarak, ay değerini alalım
#date +%m sayesinde, kaçıncı ayda olduğumuzu çift basamaklı bir 
#sayı olarak öğreniyoruz: 01, 07, 10, 12 gibi:

ay=$(date +%m)

#Şubat ayının özel durumunu belirtelim:
if [[ ${ay} -eq 2 ]]
then
	echo "Şubat ayında 28 gün vardır. Artık yıllarda 29 çeker."
#30 günlük aylar için bir pattern yazalım:
elif [[ ${ay} = @(04|06|09|11) ]]
then
	echo "Bu ayda 30 gün vardır."
else
	echo "Bu ayda 31 gün vardır."
fi
