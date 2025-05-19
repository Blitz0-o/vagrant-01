# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  (1..3).each do |i|
    config.vm.define "vm#{i}" do |vm|
      vm.vm.box = "ubuntu/trusty64"
      vm.vm.box_version = "20191107.0.0"
      vm.vm.hostname = "vm#{i}"
      vm.vm.network "private_network", type: "dhcp"
      vm.vm.synced_folder ".", "/vagrant"
      vm.vm.provider "virtualbox" do |vb|
        vb.memory = "512"
      end
    end
  end
end