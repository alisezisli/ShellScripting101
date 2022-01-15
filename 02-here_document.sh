#!/bin/bash

#Konu anlatımı: https://alisezisli.com.tr/shell-script-1-yorumlar-here-document-ve-debugging/

#Bu script'te, "here document" konusuna değiniyoruz.

#Here document, özel bir amaca hizmet eden kod bloğudur. Bir çeşit I/O yönlendirmesi yapar. Bu sayede interaktif bir komutu besleyebilmenizi sağlar.

#wc programına bir input bloğu göndereceğiz. Bu bloğun ismi girdi olsun.
#wc'nin -l parametresi ile bu girdideki satır sayısını göreceğiz.

wc -l <<girdi
Altı üstü beş metreydi
Dertlerinin birikimi
Belki biter dedin ama
Sen kaparsan gözlerini

Hayko Cepkin
girdi

#Ekrana 6 yazar. Çünkü "girdi" başlangıcı ve bitişi arasında toplam 6 satır var.


#Peki bir girdi bloğu tanımlasak, fakat bu girdiyi hiçbir yere yönlendirmezsek ne olur? Çok satırlı yorum olur :)


<<yorumlar
 Bu blokta kalan içerik, tamamen yorum olarak kalacaktır.
 Bu sayede birden fazla satıra yayılmış yorumlar oluşturabilirsiniz.
 Bunu yaparken her satırın başına # eklemenize de gerek olmaz.
yorumlar
