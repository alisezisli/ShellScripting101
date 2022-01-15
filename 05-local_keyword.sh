#! /bin/bash

#Konu anlatımı: https://alisezisli.com.tr/shell-script-5-local-ve-environment-variables/

#Global değişken:
tarih=1928


#Fonksiyon örneği:
ornek_fonksiyon(){
	#local anahtar kelimesi, yalnızca fonksiyon içinde kullanılabilir.
	#Burada, yine "tarih" isminde bir değişken tanımlıyoruz.
	#Sonrasında bu değeri ekrana yazıdırıyoruz:
	local tarih=1992
	echo "Beni fonksiyon yazdı. tarih=$tarih"
}

#Fonksiyon çağrılmadan önce, tarih'in değeri 1928:
echo "Fonksiyon çağrılmadan önce tarih: $tarih"

#Fonksiyonu çağırıyoruz. Bu fonksiyon, ekrana bir mesaj yazdıracak ve bu mesajda lokal değişken değeri kullanılacak:
ornek_fonksiyon

#Fonksiyonun işi tamamlandı. Ancak tarih değişkeninin değeri değişmedi:
echo "Fonksiyon çağrıldıktan sonra tarih: $tarih"
