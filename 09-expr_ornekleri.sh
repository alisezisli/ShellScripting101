#! /bin/bash

#Konu anlatımı: https://alisezisli.com.tr/shell-script-6-matematiksel-islemler/


#expr kullanımı:
#expr programı, çıktıyı ekrana verir.
#Ancak bu davranışı değiştirmek için command substitution kullanılabilir.
#Önemli bir nokta daha. expr programı, işleçler arasında boşluk karakteri görmek ister.
#Hatırlarsanız, bash'te ise tam tersine boşluk görmek istemiyorduk.

#Değişken tanımları:
sayi1=19
sayi2=28

#İki değeri topla ve sonucu yaz:
expr $sayi1+$sayi2
#Ekrana 19+28 yazar.
expr $sayi1 + $sayi2
#Ekrana 47 yazar.


#İfadeyi yorumla ve sonucu değişkene ata:
toplam=$(expr $sayi1 + $sayi2)
#toplam değişkeninin değeri 47 oldu.
#Ekrana toplam = 47 yazar.
echo toplam = $toplam



#Çarpma işlemi biraz sorunlu.
#Command substitution sırasında çarpma işlemi için * karakterini kullanamayız.
#Çünkü * karakteri, bash için bir özel karkater (wildcard olarak kullanıyoruz hatırlarsanız)

#Dolayısıyla bir escape yapmamız gerekecek:

expr $sayi1*$sayi2
#Ekrana 19*28 yazar.

expr $sayi1 * $sayi2
#Syntax hatası

expr $sayi1 \* $sayi2
#Ekrana 532 yazar



carpim=$(expr $sayi1 \* $sayi2)
echo "19 * 28 = $carpim"
#Ekrana 19 * 28 = 532 yazar
