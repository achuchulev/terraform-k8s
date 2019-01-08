Vagrant.configure(2) do |config|
  #config.vm.box = "xenial"
  #config.vm.box_url = "https://cloud-images.ubuntu.com/xenial/current/xenial-server-cloudimg-amd64-vagrant.box"
  config.vm.box = "achuchulev/xenial64"
  config.vm.box_version = "0.0.1"
  config.vm.provision "shell", path: "scripts/provision.sh" , privileged: false
  #config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.network "private_network", ip:"172.17.8.104"
  config.vm.synced_folder ".", "/vagrant", disabled: false
end
