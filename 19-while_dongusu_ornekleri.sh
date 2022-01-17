#! /bin/bash

#Konu anlatımı: https://alisezisli.com.tr/shell-script-11-donguler-for-while-until

#while döngüsü örnekleri

#sayi değişkeninin değeri 10'dan küçük olduğu sürece döngü çalışır:

sayi=0

while [[ $sayi -lt 10 ]]
do
	echo $sayi
	let sayi=sayi+1
done


#Kullanıcıdan alınan sayıların toplamı:

toplam=0
echo "Çıkmak için Ctrl+D kombinasyonunu kullanın"
printf "Bir sayı girin: "

while read sayi
do
	let toplam=toplam+sayi
	printf "Bir sayı girin: "
done
echo ""
echo "Girdiğiniz sayıların toplamı: $toplam"

#while döngüsüne input yönlendirme

#/etc/passwd dosyasından kullanıcı adı ve ID'lerini al:
#Internal Field Seperator
IFS=:

while read user id
do
	echo "$id ID'li kullanıcı: $user"
done < /root/users.txt
