#! /bin/bash

#Konu anlatımı: https://alisezisli.com.tr/shell-script-8-degiskenlerle-oynamak/

#Substring örnekleri:

#Bir string içinden belirli kısımları alabilmek için bu yöntemlerden faydalanırız:



dosyayolu="/opt/remi/php74/root/usr/lib64/php/modules/"

#Değişkenin değerini yaz:
echo $dosyayolu

#En SAĞDAN başlayarak, /php ile başlayan İLK pattern'ı bul ve at:
printf "${dosyayolu%/php*} \n"
#/opt/remi/php74/root/usr/lib64/

#En SAĞDAN başlayarak, /php ile başlayan SON pattern'ı bul ve at:
printf "${dosyayolu%%/php*} \n"
#/opt/remi/

#Aşağıdaki örnekler de, yukarıdakilerle aynı mantıkta.
#Fakat "#" karakteri SOLDAN İLK pattern'ı alacak.
#"##" karakteri ise SOLDAN SON pattern'ı alacak.

#Dikkatinizi çekmek istediğim bir nokta daha var.
#"%" karakteri kullanırken, pattern'ı /php* şeklinde vermiştik.
#"#" karakteri kullanırken ise, pattern'ı */php şeklinde veriyoruz.

printf "${dosyayolu#*/php} \n"
#php/ ile başlayan ilk kısmı gördü ve kalanını attı
#74/root/usr/lib64/php/modules/


printf "${dosyayolu##*/php} \n"
#php/ ile başlayan son kısmı gördü ve kalanını attı
#/modules/
