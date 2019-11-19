Vagrant.configure("2") do |config|
  config.vm.box = "geerlingguy/ubuntu1604"
  config.vm.network :private_network, ip: "172.22.22.23"
	config.vm.provider :virtualbox do |vb|
      vb.gui = true
  end
  # Berkshelf
  config.berkshelf.enabled = true
  config.berkshelf.berksfile_path = "./Berksfile"

  # Senkronizasyon
  config.vm.synced_folder "E:\\vagrant-apps\\mn\\public" , "/var/www/"
   
   # Provision
  config.vm.provision :chef_solo do |chef|
    chef.add_recipe "flask"
    chef.add_recipe " MySQL-python"
    chef.add_recipe "python"
	
	# Provision
  config.vm.provision :shell, :path => "/vagrant/bootstrap.sh" 
  end
  
end