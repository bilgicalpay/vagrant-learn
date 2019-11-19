# Kurulumlar

#Vagrant

işletim sistemine göre developer arkadaşlar aşağıdaki linkten vagrant kurulumunu yapmalıdır.

https://www.vagrantup.com/downloads.html


# Berks

Berks maven gibi paket ve dependency management aracı.
cookbook ları yüklemek için berks plugini gerekmekte.
vagrant kurulduktan sonra  (cmd-bash tanımaya bilir. bash-cmd aç kapa veya os reboot sonrası aşağıdaki koumutu çalıştır.)
vagrant plugin install vagrant-berkshelf

# bootstrap.sh

Bu makine açıldığında içinde çalışacak bash dosyasıdır. 

içine kurlum, dosya ve yetki işlemleri gibi işlemleri koyacağız.

# ilk Vagrant Box

Bir kllasor olusturalım ve içine girip makinemize  vagrant, berks ve bootstrap dosyalarımızı koyalım.

mkdir vagrant-learn 

cd vagrant-learn

bash: vagrant init


git clone https://github.com/bilgicalpay/vagrant-learn.git

berks install 

vagrant up



