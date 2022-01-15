# .bash_profile

#Konu anlatımı: https://alisezisli.com.tr/shell-script-4-bashin-yapilandirma-dosyalari/

#VARSAYILAN OLARAK GELEN KISIMLAR:

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH

#VARSAYILAN OLARAK GELEN KISIMLAR SONU


#Karşılama kısmımız burada başlıyor:

#Çevre değişkenlerini kullanarak bir mesaj yazdırıyoruz:
echo Hoş geldin $USER, $HOSTNAME cihazına bağlandın.

#date programını çalıştırıp çıktısını echo'ya veriyoruz. Ayrıntılı bilgi için: https://alisezisli.com.tr/shell-script-1-yorumlar-here-document-ve-debugging/
echo Bugün: $(date)

#Kullandığın DNS'ler: mesajını yazdırıyoruz:
echo "Kullandığın DNS'ler:"

#/etc/resolv.conf içeriğini oku ve grep'e gönder
#İçinde nameserver geçen satırları grep'le. Bu satırlarda, kullandığımız DNS sunucuları yer alıyor. Bu çıktıyı cut'a gönder.
#nameserver 208.67.222.222 gibi görünecek çıktıyı boşluğa göre böl, ikinci kısmını al:

cat /etc/resolv.conf | grep nameserver | cut -d " " -f 2

