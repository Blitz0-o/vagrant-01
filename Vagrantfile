Vagrant.configure("2") do |config|
  nodes = [
    { :hostname => "web1", :ip => "192.168.3.11" },
    { :hostname => "web2", :ip => "192.168.3.12" },
    { :hostname => "web3", :ip => "192.168.3.13" }
  ]

  nodes.each do |node|
    config.vm.define node[:hostname] do |node_config|
      node_config.vm.box = "ubuntu/bionic64"
      node_config.vm.hostname = node[:hostname]
      node_config.vm.network "private_network", ip: node[:ip]

      node_config.vm.provider "virtualbox" do |vb|
        vb.memory = "512"
        vb.cpus = 1
      end

      node_config.vm.provision "shell", path: "scripts/install_nginx.sh"
    end
  end
end
