it's python application that runs in docker container, container is scheculed by kubernetes and it is provisioned by vagrant



Dockerhub'a push eylemi var. 
öncesinde docker login olmalı. birde docker adresi push edilecek yer kendi reponuz olmalı.

dockerhub yerine jfrog (veya nexus) repoya tokenli bir auth koyar push ederdik.

Bir de bazı env. ları statik başka bir dosyadan çektirdim.  Hashicorp Vault,Cyberark veya openshift de env. secure kısmına geçilebilir. veya bunları TFS, jenkins den tetikleyeceksek de oradan çektirebilirdik.  

### build
`. vagrant up`


klasorun içinde 

