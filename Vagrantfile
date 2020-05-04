Vagrant.configure("2") do |config|
  config.vm.box = "archlinux/archlinux"
  config.vm.provision "shell", :path => "setup.sh" :privileged => false
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  end
  config.ssh.forward_x11 = true
  config.ssh.forward_agent = true
end
