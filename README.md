
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


# Chef 

Chef kurulumu için aşağıdaki link kullanılabilir. 
Ansible, puppet, chef. Tercihim Ansible, ancak hızlı olması açısından chef'e aşinalığımdan chef seçtim .


https://packages.chef.io/files/stable/chefdk/4.5.0/windows/2012r2/chefdk-4.5.0-1-x64.msi



# Berks

Berks maven gibi paket ve dependency management aracı.
cookbook ları yüklemek için berks plugini gerekmekte.
chef kurulduktan sonra  (cmd-bash tanımaya bilir. bash-cmd aç kapa veya os reboot sonrası aşağıdaki koumutu çalıştır.)
vagrant plugin install vagrant-berkshelf

# bootstrap.sh

Bu makine açıldığında içinde çalışacak bash dosyasıdır. 

içine kurlum, dosya ve yetki işlemleri gibi işlemleri koyacağız.

# ilk Vagrant Box

Bir kllasor olusturalım ve içine girip makinemize  vagrant, berks ve bootstrap dosyalarımızı koyalım.

mkdir vagrant-learn 

cd vagrant-learn

bash: vagrant init (buna gerek yok. Template Vagrantfile oluşturuyor.)


git clone https://github.com/bilgicalpay/vagrant-learn.git

berks install 

vagrant up

vagrant halt

vagrant provision

(arada cookbook vs değiştirirsek "vagrant destroy" ve ardından "vagrant up" da yapabiliriz veya "vagrant --reload provision" da diyebiliriz.)



kurulumlar bitti ise aşağıdaki satırları cmd içinde çalıştır.

  mkdir deneme-app
  
  cd deneme-app
  
  git clone https://github.com/bilgicalpay/vagrant-learn.git
  
  cd vagrant-learn
  
  berks install
  
  vagrant up
  
  vagrant ssh
  
  
  Makinenin içindeyiz.
  
  bundan sonra linux ile devam.
  
  cd /var/www/
  
  ls -ltr
  




# Minikube ve Kubernetes Dashboard 

(Bunları elle bilgisayarımıza kuruyoruz. sonraki adımda bunları da vagrant içine alalım.)



# minikube install dosyası

https://github-production-release-asset-2e65be.s3.amazonaws.com/56353740/ed18e580-fbf2-11e9-9c5f-d918c15a0ef8?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20191119%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20191119T125252Z&X-Amz-Expires=300&X-Amz-Signature=1c2faabe44a94bbd5b2ba55131ba760bdfbc3b21e10e31ea8c8371dcae38e6d8&X-Amz-SignedHeaders=host&actor_id=5606760&response-content-disposition=attachment%3B%20filename%3Dminikube-installer.exe&response-content-type=application%2Foctet-stream

Normal şekilde kurun


# kubectl 

 https://storage.googleapis.com/kubernetes-release/release/v1.16.0/bin/windows/amd64/kubectl.exe
 
 env path'e ekleyin (eski ise güncelleyin.)
 
 
 
 sonra komut satısına 
 
 CMD> "minikube start"
 
 ardından 
 
 CMD> "minikube dashboard"
 
 bende kubernetes yönetim portali bu adreste açıldı. Sizde de  kendisi açılacaktır.
 
 http://127.0.0.1:50369/api/v1/namespaces/kubernetes-dashboard/services/http:kubernetes-dashboard:/proxy/#/persistentvolume?namespace=default
 
 
 
 
 # şimdi de development ortamında k8'i  vagrant ile kaldırıp python uygulamasını docker içinde çalıştıracağız.
 
 
herşey iyi ise developer docker image'ını tagleyip pushlayacak. (versionlu şekilde)

ardından prod ortamındaki kubernetes'e bu docker image'ı nı deploy edeceğiz.







 
 
 







