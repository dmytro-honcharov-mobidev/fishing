Vagrant.configure("2") do |config|
  config.vm.define "master1" do |host|
    host.vm.box = "ubuntu/bionic64"
    host.vm.hostname = 'master1'
    host.vm.box_url = "ubuntu/bionic64"

    host.vm.network :public_network, ip: "192.168.0.201"

    host.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 1024]
      v.customize ["modifyvm", :id, "--name", "master1"]
    end
  end

  config.vm.define "worker1" do |host|
    host.vm.box = "ubuntu/bionic64"
    host.vm.hostname = 'worker1'
    host.vm.box_url = "ubuntu/bionic64"

    host.vm.network :public_network, ip: "192.168.0.211"

    host.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 1024]
      v.customize ["modifyvm", :id, "--name", "worker1"]
    end
  end
end
