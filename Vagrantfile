Vagrant.configure("2") do |config|

  config.vm.define "controlplane" do |controlplane|
    controlplane.vm.box = "ubuntu/jammy64"
    controlplane.vm.network "private_network", ip: "192.168.32.10"
    controlplane.vm.hostname = "controlplane"
    controlplane.vm.provider "virtualbox" do |vb|
        vb.memory = "2048"
        vb.cpus = 2
    end
  end

  config.vm.define "node01" do |node01|
    node01.vm.box = "ubuntu/jammy64"
    node01.vm.network "private_network", ip: "192.168.32.11"
    node01.vm.hostname = "node01"
    node01.vm.provider "virtualbox" do |vb|
        vb.memory = "1024"
        vb.cpus = 2
    end
  end

  config.vm.define "node02" do |node02|
    node02.vm.box = "ubuntu/jammy64"
    node02.vm.network "private_network", ip: "192.168.32.12"
    node02.vm.hostname = "node02"
    node02.vm.provider "virtualbox" do |vb|
        vb.memory = "1024"
        vb.cpus = 2
    end
  end

end