#! /bin/bash


#Konu anlatımı: https://alisezisli.com.tr/shell-script-7-interaktif-scriptler/

#printf örnekleri

#printf Beni printf yazdı.
#Yukarıdaki kullanım hatalıdır.

#printf varsayılan davranış olarak alt satıra GEÇMEZ:
printf "Beni printf yazdı."
printf 'Beni printf yazdı.'
#Yukarıdaki ifadeler yan yana yazılacaktır.

#Yeni satır için "\n" ifadesini kullanabiliriz:

#Önce bir satır aşağıya inelim ki üstteki örneklerle aynı satırda kalmayalım:
printf "\n"
printf "Merhaba\ndünya!\n"
#Merhaba yaz, alt satıra geç. -> Merhaba\n
#dünya! yaz, alt satıra geç. Çünkü shell prompt'umun yeni satıra düşmesini istiyorum. -> dünya!\n


#tab (sekme) karakteri için "\t":
printf "Aramızda \t tab var.\n"

#Backspace, bildiğimiz bir karakter silme tuşu. Kendinden bir önceki karakteri siler. "\b"
printf "Ak\bli\n"
#Akbilin falan değil ne ilgisi var :)
#Akli yazıp \n ile yeni satıra geçmek istiyor.
#Ancak "k" harfinden sonra bir backspace var. Yani bu karakter silinecek.


#Çift tırnak escape'i:
printf 'Bu "konu" çok önemli.\n'
#ya da
printf "Bu \"konu\" çok önemli.\n"

#Backslash (\) escape'i:
printf 'Yeni satıra geçmek için \\n kullanılır.\n'


#printf format örnekleri

#string ifadenin geleceği alana %s ekleriz:
printf "Sistemde oturum açmış kullanıcı: %s\n" "$LOGNAME"

#Birden fazla ifade varsa, değişkenleri ya da değerleri sırasıyla veririz:

printf "Sisteme bağlı kullanıcı: %s\n%s kullanıcısının SSH istemcisi: %s\nSistem dili: %s\nBunu da öylesine yazmak istedim: %s\n" "$LOGNAME" "$LOGNAME" "$SSH_CLIENT" "$LANG" "sabit değer"

#Sayısal ifadeleri yazdırmak için ise farklı formatlar kullanabiliriz.
#Örneğin, tam sayılar için %d
#Hexadecimal sayılar için %x
#Octal sayılar için %o
#Hatta işi biraz daha ileriye taşımak için şunu yapabiliriz:

printf "Decimal değer: %d\nHexadecimal değer: %x\nOctal değer: %o\n" 100 100 100


#Yazılacak değerlerin kaç karakterlik yer tutmasını istediğinizi de belirtebilirsiniz:
#Karakter sayısı belirtilmeden:
printf "\n\n\n"
printf "%s\t%s\n" "Value" "MD5"
printf "%s\t%s\n" "1" "86318e52f5ed4801abe1d13d509443de"
printf "%s\t%s\n" "2" "a53487374865fb304e96c84045ea32a2"
printf "%s\t%s\n" "3" "Hash yok"
printf "%s\t%s\n" "4" "7a9b46ab6d983a85dd4d9a1aa64a3945"

#Bu kısımda, ikinci kolondaki değerlerin 32 karakterlik yer tutmasını istediğimizi belirtiyoruz.
printf "**********\n"
printf "%s\t%32s\n" "Value" "MD5"
printf "%s\t%32s\n" "1" "86318e52f5ed4801abe1d13d509443de"
printf "%s\t%32s\n" "2" "a53487374865fb304e96c84045ea32a2"
printf "%s\t%32s\n" "3" "Hash yok"
printf "%s\t%32s\n" "4" "7a9b46ab6d983a85dd4d9a1aa64a3945"
