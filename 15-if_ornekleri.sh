#! /bin/bash

#Konu anlatımı: https://alisezisli.com.tr/shell-script-9-karar-yapilari 

#isim değişkeninin değerine göre bir komut çalıştıralım:

isim="Khabib"

if [[ "$isim" = "Khabib" ]]
then
	echo "I'm gonna smash your boy."
fi


#if-else örneği:

isim="Not Khabib"

if [[ "$isim" = "Khabib" ]]
then
	echo "I'm gonna smash your boy."
else
	echo "What's your name again?!?"
fi


#if-elif-else örneği:

isim="Hamilton"

if [[ "$isim" = "Hamilton" ]]
then
	echo "Leave it to me, Bono..."
elif [[ "$isim" = "Bottas" ]]
then
	echo "To whom it may concern..."
elif [[ "$isim" = "Ricciardo" ]]
then
	echo "Shooooeeeeyyy!!!"
else
	echo "Mazepin sucks."
fi

#isim değeri, kullanıcıdan alınacak:

printf "Bugün kim olmak istersin?: "
read isim

if [[ "$isim" = "Hamilton" ]]
then
	echo "Leave it to me, Bono..."
elif [[ "$isim" = "Bottas" ]]
then
	echo "To whom it may concern..."
elif [[ "$isim" = "Ricciardo" ]]
then
	echo "Shooooeeeeyyy!!!"
else
	echo "Mazepin sucks."
fi



# komuta bağlı koşullar

# /etc/passwd dosyasında "root" kelimesini ara

if grep root /etc/passwd > /dev/null
then
	echo "root bulundu"
else
	echo "dosyada root yok"
fi


#sayısal değerlerin karşılaştırılması

sayi1=35
sayi2=28

if [[ $sayi1 -gt $sayi2 ]]
then
	echo $sayi1 büyüktür $sayi2
elif [[ $sayi1 -lt $sayi2 ]]
then
	echo $sayi1 küçüktür $sayi2
else
	echo $sayi1 eşittir $sayi2
fi



#string değerlerin karşılaştırılması

str1="Ali"
str2="Gnu"

if [[ "$str1" < "$str2" ]]
then
	echo $str1 önce geliyor
else
	echo $str2 önce geliyor
fi
