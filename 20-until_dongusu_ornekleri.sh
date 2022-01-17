#! /bin/bash

#Konu anlatımı: https://alisezisli.com.tr/shell-script-11-donguler-for-while-until


#until döngüsü örneği:
#Aşağıdaki döngü, sayi değişkeninin değeri 10 olmadıkça çalışacaktır:

sayi=1

until [[ sayi -eq 10 ]]
do
	echo $sayi
	let sayi=sayi+1
	sleep 0.5
done
