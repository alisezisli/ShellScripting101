#!/bin/bash

#Konu anlatımı: https://alisezisli.com.tr/shell-script-0-giris/

#Bu script'te, echo komutunun davranışlarını inceliyoruz.
#En üstte yer alan ve #! ile başlayan satır, shebang satırıdır.
#Bu satır sayesinde shell, bu dosyayı hangi program ile yorumlayacağını bilir diyebiliriz.
#Shebang tanımı #! ile başlar ve script'in en başında bulunmalıdır.
#Bu noktaya kadar okuduğunuz ve # karakteriyle başlayan satırlar ise yorum satırlarıdır.
#Shell, bu satırları işlemez.



#echo komutu, ekrana (standart çıktıya, standart output'a, stdout'a) çıktı verebilmemizi sağlar.
#Aşağıdaki komutlarda, tırnak işaretlerinin farklı davranışlar sergileyebileceğini göreceğiz.


echo Shell scripting öğreniyoruz
#Ekrana Shell scripting öğreniyoruz yazar.

echo 'Shell scripting öğreniyoruz'
#Ekrana Shell scripting öğreniyoruz yazar.

echo "Shell scripting öğreniyoruz"
#Ekrana Shell scripting öğreniyoruz

echo 'Shell scripting öğreniyoruz!'
#Ekrana Shell scripting öğreniyoruz! yazar

echo "Shell scripting öğreniyoruz!"
#Bu komutu script içinde değil de, doğrudan shell'inize verirseniz hata verir!
#Bash, ünlem işaretiyle başlayan bir komutu, komut geçmişinde arar.
#Çift tırnak işaretleri, ünlem işaretinin bu davranışı değiştirmez.
#Ünlem işareti sonrasında " karakteri olduğu için, shell'iniz " ile başlayan en son komutu çalıştırmayı dener.
#Yüksek ihtimalle history'nizde böyle bir komut olmadığı için aşağıdaki hatayı alacaksınız:
#-bash: !": event not found
#Fakat script içerisinde çalıştırıldığında yorumlama şekli değişiyor olsa gerek. Çünkü sorunsuzca çalışıyor.
