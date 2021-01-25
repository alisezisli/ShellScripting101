#!/bin/bash

#Konu anlatımı: https://alisezisli.com.tr/shell-script-2-degiskenler-bazi-ozel-karakterler-ve-cikis-kodlari/

#Bu script'te, "değişkenler" konusuna değiniyoruz.

#Bash script'lerinde değişken tanımı aşağıdaki gibi yapılır. Her dilde olduğu gibi, bu dilde de değişken tanımlarken dikkat edilmesi gereken noktalar vardır.
#Bunlardan bazıları:
#Değişkenlerinizi tanımlarken boşluk karakterinden kaçının. = karakterinin sağında ve solundaki boşluklar da buna dâhil.
#Rezerve kelimeleri kullanmaktan kaçının.


#Değişkenler tanımlanırken başında herhangi bir işaret olmaz.
#Değerleri çağırılırken ise başına $ işareti konulur:

degisken="Ali"
echo $degisken
#Ekrana Ali yazar.


#FORZA BUCA!!!
sayi1=19
sayi2=28


echo "$sayi1$sayi2"
#Ekrana 1928 yazar.


echo "$sayi1 $sayi2"
#Ekrana 19 28 yazar.


#Peki boşluklar söz konusu olduğunda ne yapıyoruz?

bosluklu="S           E    Z   İŞ L                            İ"
echo $bosluklu
#Ekrana S E Z İŞ L İ" yazar. Çünkü aralardaki tüm boşlukları yok sayar.


#Boşlukların dikkate alınmasını istiyorsak, değişken ismini çift tırnak işaretleri arasına almalıyız:
echo "$bosluklu"

#Peki ya ekrana, gerçekten de "$bosluklu" yazmak istersek? O zaman da tek tırnak işaretlerinden faydalanalacağız:
echo '$bosluklu'
#Ekrana $bosluklu yazar
