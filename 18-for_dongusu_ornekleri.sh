#! /bin/bash

#Konu anlatımı: https://alisezisli.com.tr/shell-script-11-donguler-for-while-until


#for döngüsü örnekleri:


#Listedeki tüm elemanları ekrana yazdır:
for oyuncu in Neville Ferdinand Giggs Scholes Rooney "van Nistelrooy"
do
	echo "Sıradaki oyuncu: $oyuncu"
done


#Script'te gelen tüm argümanları ekrana yazdır:

counter=1
for arg in $*
do
	echo "$counter. argüman: $arg"
	let counter=counter+1
done


#Sistemdeki tüm kullanıcıları ekrana yazdır:

counter=1
for kullanici in $(cat /etc/passwd | cut -d ":" -f 1)
do
	echo "Dosyadaki $counter. kullanıcı: $kullanici"
	let counter=counter+1
done


#Wildcard kullanım örneği:

for dosya in $(ls /var/log/s*)
do
	echo $dosya
done




#Sayılarla kullanım örneği:
echo "Beni seq kullanarak yazdılar:"
for sayi in $(seq 5)
do
	echo $sayi
done


echo "Beni bir sayı aralığı kullanarak yazdırdılar:"
for sayi in {6..10}
do
	echo $sayi
done


echo "Beni tek satırda yazdılar:"
for sayi in {11..15}; do echo $sayi; done
