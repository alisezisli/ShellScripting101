#! /bin/bash

#Konu anlatımı: https://alisezisli.com.tr/shell-script-6-matematiksel-islemler/


#Bash üzerinde ondalıklı sayılarla işlem yapmak:
#bc kullanımı:


#Değişken tanımları:
#Buraya dikkat. let kullanamam.
#Çünkü bash, let'i matematiksel ifadelerde kullanılıyor
#ve ondalıklı sayıları tanımadığı için hata veriyor:
sayi1=29.2
sayi2=13.75

#Toplama işlemi:
#Burada, daha önceki örneklerde de karşımıza çıkan "command substitution" kullanılıyor.
#$() içerisinde yapılan işlemin sonucu, dışarıdaki değişkene atılıyor.
#$sayi1+$sayi2 ifadesi echo'lanıyor ve pipe üzerinden bc programına gönderiliyor.
#Dikkat edin, yine let yok. Çünkü bash'e göre, ortada matematiksel bir ifade yok:
toplama=$(echo "$sayi1+$sayi2" | bc -l)

#Çıkarma işlemi:
cikarma=$(echo "$sayi1-$sayi2" | bc -l)

#Çarpma işlemi:
carpma=$(echo "$sayi1*$sayi2" | bc -l)

#Bölme işlemi:
bolme=$(echo "$sayi1/$sayi2" | bc -l)

#Kalan bulma (modulus) işlemi:
modulus=$(echo "$sayi1%$sayi2" | bc -l)

#Üs alma (Buraya dikkat. İşlemi bc programına yaptıracağımız için, üs alma operatörü olarak ^ kullanıyoruz:
us=$(echo "$sayi1^3" | bc -l)


echo "$sayi1+$sayi2 işleminin sonucu: $toplama"
echo "$sayi1-$sayi2 işleminin sonucu: $cikarma"
echo "$sayi1*$sayi2 işleminin sonucu: $carpma"
echo "$sayi1/$sayi2 işleminin sonucu: $bolme"
echo "$sayi1%$sayi2 işleminin sonucu: $modulus"
echo "$sayi1^3 işleminin sonucu: $us"


#scale örneği.
#Virgülden sonra kaç basamak görüntüleneceğini belirtebilirsiniz:

birinci_sayi=22
ikinci_sayi=7

bolum=$(echo "$birinci_sayi/$ikinci_sayi" | bc -l)
echo $bolum

bolum=$(echo "scale=2; $birinci_sayi/$ikinci_sayi" | bc -l)
echo $bolum
