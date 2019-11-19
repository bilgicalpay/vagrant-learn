
# Öncelikle öğrenmemdeki ilk adımı attığım kaynağı ekleyeyim.

https://mehmetseven.net/berkshelf-paket-yonetimi/


# Vagrant ile python uygulaması

# Amaç:

flask app-->gunicorn (WSGI server)-->nginx
DB: MySql with persistent volume
Platform: K8


# Kurulumlar

# Vagrant

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

vagrant halt

vagrant provision

(arada cookbook vs değiştirirsek "vagrant destroy" ve ardından "vagrant up" da yapabiliriz veya "vagrant --reload provision" da diyebiliriz.)


