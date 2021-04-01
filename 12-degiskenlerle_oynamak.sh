#! /bin/bash

#Konu anlatımı: https://alisezisli.com.tr/shell-script-8-degiskenlerle-oynamak/


#Bir değişken tanımlıyoruz:
degisken=göz

#Değişkenin değerini yazdırıyoruz:
printf "$degisken \n"

#Bu satır, beklediğimiz gibi bir çıktı vermeyecek.
#Çünkü değişken isminin sonuna eklediğimiz karakterler anlamsız oldu:
printf "$degisken $degiskenlük $degiskencü \n"

#Ancak bu satırda, değişken isimleri ile değişkenlere
#eklenen karakterleri birbirinden ayırdık.
#Bu nedenle "göz gözlük gözcü" çıktısını alabileceğiz:
printf "$degisken ${degisken}lük ${degisken}cü \n\n"




#typeset örnekleri

#-l parametresi ile, değişkene atanacak değerdeki tüm karakterleri küçük harfe çevirebiliriz (lower):
typeset -l kucuk

#Benzer şekilde -u parametresi ile, değişkene atanacak değerdeki tüm karakterleri büyük harfe çevirebiliriz (upper):
typeset -u buyuk

kucuk="BuyukHarflerYok"
buyuk="kUCUKharflerYOK"

echo $kucuk
echo $buyuk


#Değişkeni, integer değer tutacak şekilde hazırlıyoruz:
typeset -i sayi
sayi=5
echo $sayi

#Yukarıdaki örnek, rahatlıkla 5 yazabilirken; aşağıdaki örnek, string değerden bir integer üretmeyi deneyecek:
typeset -i sayi2
sayi2=3,14
echo $sayi2

#Bu örnekte ise, "yirmi8" ifadesini integer'a çeviremeyen bash, bize 0 dönecek:
typeset -i sayi3
sayi3=yirmi8
echo $sayi3



#declare örnekleri

#Değişkeni, integer değer tutacak şekilde hazırlıyoruz:
declare -i yenisayi
yenisayi=20
echo $yenisayi

#Yukarıdaki örnek, 20 yazacak. Ancak aşağıdaki örnek, 20+5 ifadesini integer'a cast edecek ve değişkene 25 değerini atayacak:
yenisayi=20+5
echo $yenisayi

#Benzer şekilde, buradaki işlem de yapılacak ve değişkenin değeri 15 olacak:
yenisayi=1+2+3+4+5
echo $yenisayi

#Bu kısımda, değişkene string bir değer vermeyi deniyoruz. Integer'a cast edemeyeceği için 0 dönecek:
yenisayi="ali"
echo $yenisayi

#Şimdi ise, "integer" attribute'ünü kapatıyoruz. Değişken, artık integer değer tutmak zorunda değil:
declare +i yenisayi
yenisayi="ali"
echo $yenisayi
#Bu sayede string ifadeyi tutabilecek ve ekrana "ali" yazacak.


#-r parametresi ile salt okunur (read-only) bir değişken tanımlama şansımız var:
declare -r saltokunur
saltokunur="test"
echo $saltokunur

#Yukarıdaki blok hata verecek. Çünkü read-only tanımlanan bir değişkene sonradan değer vermeyi deniyoruz.

#Read-only olsun, ancak ilk değerini de verelim istersek; aşağıdaki gibi bir tanımlama yapmamız gerekiyor:
declare -r ilkdeger="test"
echo $ilkdeger


#Constant tanımlama:
#Bir değişken oluşturalım ve ilk değerini verelim:
sabit="sabit değer"
echo $sabit
#Var olan bu değişkeni constant hâle getirelim:
readonly sabit
sabit="yeni değer"
