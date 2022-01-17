#! /bin/bash

#Konu anlatımı: https://alisezisli.com.tr/shell-script-11-donguler-for-while-until


#break örneği:
#Aşağıdaki döngü, "/etc/passwd" dosyasında "sshd" kullanıcısını bulunca kırılacak:

for user in $(cat /etc/passwd | cut -d ":" -f 1)
do
	echo $user kullanıcısını buldum
	if [[ "$user" == "sshd" ]]
	then
		break
	fi
done

echo "==================================="

#continue örneği:
#Aşağıdaki döngü, "/etc/passwd" dosyasında "root" kullanıcısını bulunca yazdırmayacak:

for user in $(cat /etc/passwd | cut -d ":" -f 1)
do
	if [[ "$user" == "root" ]]
	then
		continue
	else
		echo "$user kullanıcınısı buldum"
	fi
done
