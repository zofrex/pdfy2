# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "puppetlabs/debian-8.2-64-puppet"

  config.vm.synced_folder ".", "/home/vagrant/pdfy2"

  config.vm.provider "vmware_fusion" do |vm|
    vm.vmx["memsize"] = 2048
    vm.vmx["numvcpus"] = 2
  end

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 2048
    vb.cpus = 2
  end

  config.vm.provision "shell", inline: "apt-get update"

  config.vm.provision "puppet" do |puppet|
    puppet.environment = "development"
    puppet.environment_path = "dev/environments"
  end

  config.vm.provision "shell" do |s|
    s.inline = "npm install -g coffee-script forever"
    s.privileged = false
  end
end
