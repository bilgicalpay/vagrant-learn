it's python application that runs in docker container, container is scheculed by kubernetes and it is provisioned by vagrant


# Her bir dosyanın içinde açıklamları yaptım. 
Dockerhub'a push eylemi var. 
öncesinde docker login olmalı. bir de kodun içinde docker adresi push edilecek yer kendi user/reponuz olmalı.

# dockerhub yerine jfrog (veya nexus) repoya tokenli bir auth koyar push ederdik.

Bir de bazı env.'ları  (db bilgileri vs).  Hashicorp Vault,Cyberark veya openshift de env. secure kısmına geçilebilir. veya bunları TFS, jenkins den tetikleyeceksek de oradan çektirebilirdik.  

(makinede oracle virtualbox olmalı. Docker desktop ve kitematic varsa sorunlu. hyperv kapatılmalı. Windows10 pro da registiry bir fix ve windows defender core isolation kapalı olmalı)

(Not: en sonunda ikinci bir disk aldım ve makineye centos kurdum. o şekilde projeye devam edebildim.)
### build


klasorun içinde aşağıdaki komut çalıştırılır.

`. vagrant up`



