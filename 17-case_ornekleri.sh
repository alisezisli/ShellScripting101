#! /bin/bash

#Konu anlatımı: https://alisezisli.com.tr/shell-script-10-karar-yapilari-case



#Hangi aydayız?

#Öncekikle, içinde bulunduğumuz ayın sayısal değerini çekelim:

ay=$(date +%m)

#Şimdi de dönen sayısal değere göre ekrana bir çıktı yazdıralım:

case $ay in
01)
	echo "Ocak"
	;;
02)
	echo "Şubat"
	;;
03)
	echo "Mart"
	;;
04)
	echo "Nisan"
	;;
05)
	echo "Mayıs"
	;;
06)
	echo "Haziran"
	;;
07)
	echo "Temmuz"
	;;
08)
	echo "Ağustos"
	;;
09)
	echo "Eylül"
	;;
10)
	echo "Ekim"
	;;
11)
	echo "Kasım"
	;;
12)
	echo "Aralık"
	;;
*)
	echo "Bunu nasıl başardın gerçekten?!?"
esac


# SELINUX durumu
# /etc/selinux/config dosyasındaki SELINUX ifadesinin değerine göre
# çıktı verir:

durum=$(grep ^SELINUX= /etc/selinux/config  | cut -d "=" -f 2)

case $durum in
"enforcing")
	echo "SELinux security policy is enforced."
	;;
"permissive")
	echo "SELinux prints warnings instead of enforcing."
	;;
"disabled")
	echo "No SELinux policy is loaded."
	;;
*)
	echo "This script won't work anyway..."
esac
