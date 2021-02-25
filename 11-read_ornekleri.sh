#! /bin/bash

#Read örnekleri: https://alisezisli.com.tr/shell-script-7-interaktif-scriptler/


#Kullanıcıya bir mesaj göster:
printf "İsmin nedir?: "
#Gelen inputu isim değişkenine ata:
read isim
#Kullanıcıya yeni bir mesaj göster:
printf "Hangi yılda doğdun?: "
#Gelen inputu dogumyili değişkenine ata:
read dogumyili

#Şu anki yılı öğren:
let yil=$(date +"%Y")
#Yaşı hesapla
let yas=yil-dogumyili
#Kullanıcıya mesajını göster:
printf "E o zaman sen %d yaşındasın %s, öyle mi?\n" "$yas" "$isim"
