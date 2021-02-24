#! /bin/bash

#Konu anlatımı: https://alisezisli.com.tr/shell-script-6-matematiksel-islemler/


#İki farklı değişken tanımlıyoruz:
sayi1=35
sayi2=42


#Bu değişkenleri toplamayı denersek, sonuç pek de tatmin edici olmuyor:
toplam=$sayi1+$sayi2
echo $toplam


#İfadelerin bir matematiksel ifade olarak görülmesini sağlamak için let kullanırız:

let toplam=$sayi1+$sayi2
echo $toplam
#Ekrana 77 yazacaktır.

#Hem kodumuzun okunabilirliği açısından, hem de henüz bilmediğimiz
#ama ortalıkta gezmesi muhtemel bazı ihtimallerden korktuğumuz için;
#matematiksel ifadelerde kullanacağımız her şeyi "let" ile tanımlamakta fayda var:

#Değişken tanımları:
let sayi1=35
let sayi2=42

#Toplama işlemi:
let toplama=$sayi1+$sayi2

#Çıkarma işlemi:
let cikarma=$sayi1-$sayi2

#Çarpma işlemi:
let carpma=$sayi1*$sayi2

#Bölme işlemi (Buraya dikkat. Bash tam bölme işlemi yapar, virgüllü sayılarla ilgilenmez):
let bolme=$sayi1/$sayi2

#Kalan bulma (modulus) işlemi:
let modulus=$sayi1%$sayi2

#Üs alma (Buraya dikkat. Bu işleç, bash'te çalışıyor olabilir ancak her shell'de çalışacağının garantisi yok):
let us=$sayi1**3


echo "$sayi1+$sayi2 işleminin sonucu: $toplama"
echo "$sayi1-$sayi2 işleminin sonucu: $cikarma"
echo "$sayi1*$sayi2 işleminin sonucu: $carpma"
echo "$sayi1/$sayi2 işleminin sonucu: $bolme"
echo "$sayi1%$sayi2 işleminin sonucu: $modulus"
echo "$sayi1^3 işleminin sonucu: $us"
