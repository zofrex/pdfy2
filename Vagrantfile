# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "puppetlabs/debian-8.2-64-puppet"

  config.vm.synced_folder ".", "/home/vagrant/pdfy2"

  # config.vm.provider "virtualbox" do |vb|
  #   vb.memory = "1024"
  # end

  config.vm.provision "puppet" do |puppet|
    puppet.environment = "development"
    puppet.environment_path = "dev/environments"
  end
end
