!/usr/bin/env bash
# apt-get update
# install python
sudo apt install python2.7-dev -q -y
sudo apt install python-pip -q -y
sudo pip install virtualenv
#sudo source bin/active
#sudo pip install -r requirements.txt
#sudo pip install --upgrade pip bu başa bela 
# düzeltmek için pip install pip==1.5.6  python 2.7 için 1.5.6
sudo pip install pip==1.5.6
sudo apt install python-mysqldb -q -y
sudo pip install gunicorn
sudo apt install nginx -q -y 
sudo pip install Flask 
sudo apt-get install libmysqlclient-dev -q -y
sudo pip install MySQL-python 
sudo pip install mysql-connector-python
## amac: flask(web app)-->gunicorn(WSGI server):port-->nginx(web server):port
cd /var/www/codebase
sudo virtualenv --no-site-packages ..
sudo mkdir /var/www/codebase
sudo cp /vagrant/* /var/www/codebase
sudo cd /var/www/codebase
git clone https://gist.github.com/vedit/32f37e0b8f842521fbc89e9d8e2bfaf9
sudo cp /var/www/codebase/32f37e0b8f842521fbc89e9d8e2bfaf9/application.py ../
## asagidaki çalıştı
python application.py
#  gunicorn istemişler onda kod hata veriyore gunicorn ile
###Traceback (most recent call last):
###  File "/home/vagrant/.local/bin/gunicorn", line 7, in <module>
###    from gunicorn.app.wsgiapp import run
###  File "/home/vagrant/.local/lib/python2.7/site-packages/gunicorn/app/wsgiapp.py", line 9, in <module>
###    from gunicorn.app.base import Application
###  File "/home/vagrant/.local/lib/python2.7/site-packages/gunicorn/app/base.py", line 38
###    print("\nError: %s" % str(e), file=sys.stderr)
###                                      ^
###SyntaxError: invalid syntax
###
###