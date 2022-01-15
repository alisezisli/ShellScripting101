#! /bin/bash

#Konu anlatımı: https://alisezisli.com.tr/shell-script-5-local-ve-environment-variables/

#2 adet değişken tanımlıyoruz. Değişken tanımlarken = işaretinin sağ ve sol tarafında boşluk bulunmamalı:
semt=Buca
sehir=İzmir

#Değişkenleri export ediyoruz. Bu sayede bu değişkenler, subshell'ler tarafından da görülebilecektir.
#Aynı anda birden fazla değişkeni export edebiliriz.
#Şöyle de yapabilirdik: export semt=Buca (Atama ve export işlemi aynı anda)
export semt sehir

#Bir değişken daha oluşturuyoruz fakat export etmiyoruz:
test=geldi

#Bu satır, ekrana Buca / İzmir yazacak:
echo $semt / $sehir

#Buraya kadar olan kısım yalnızda export işlemi için. Sonrasında yeni bir shell'e geçin.
#Subshell'de semt ve sehir değişkenlerini görebileceksiniz. Fakat test değişkenini göremeyeceksiniz.

#Bu scripti çalıştırırken başında "." kullanmalısınız.
#Aksi takdirde export işlemi anlamsız olacaktır.
#Ayrıntılı bilgi için: https://alisezisli.com.tr/shell-script-3-shell-scriptlerin-calisma-mantigi/
