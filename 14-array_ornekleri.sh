#! /bin/bash

#Konu anlatımı: https://alisezisli.com.tr/shell-script-8-degiskenlerle-oynamak/

#Array tanımlama:
dizi[0]="Domates"
dizi[1]="Biber"
dizi[2]="Patlıcan"


#BU KULLANIM HATALI!
echo $dizi[1]
#Ekrana Domates[1] yazar.


#Dizinin bir elemanını yazdırmak için:
echo ${dizi[1]}

#Dizinin tüm elemanlarını yazdırmak için:
echo ${dizi[*]}


#Dizinin eleman sayısını yazdırmak için:
echo ${#dizi[*]}


#Dizilere değer verirken, index sırasını takip etmek zorunda değilsiniz.
#Atlanan değerler yok sayılacaktır:

dizi[26]="Roka"
dizi[38]="Nane"

#Roka yazar:
echo ${dizi[26]}
#Boş değer yazar:
echo ${dizi[27]}
#Eleman sayısını 5 gösterecek:
echo ${#dizi[*]}


