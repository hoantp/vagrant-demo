# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.hostname = "demo"

  config.vm.network "forwarded_port", guest: 80, host: 4221
  # config.vm.network "private_network", ip: "192.168.33.10"
  # config.vm.network "public_network"

  config.vm.synced_folder "../app", "/var/www/app", type: "virtualbox"
  config.vm.synced_folder ".", "/vagrant", type: "virtualbox"

  config.vm.provider "virtualbox" do |vb|
    vb.name = "Demo Example"
    vb.cpus = 4
    vb.memory = "1536"
  end

  config.vm.provision "shell", path: "provisions/common.sh"
  config.vm.provision "shell", path: "provisions/nginx.sh"
  config.vm.provision "shell", path: "provisions/php.sh"
  config.vm.provision "shell", path: "provisions/mariadb.sh"
end
