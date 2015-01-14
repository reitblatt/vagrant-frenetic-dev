# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  config.vm.box = "Ubuntu-14.04.1-64-Desktop"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  # config.vm.box_url = "http://www.cs.cornell.edu/~reitblatt/saucy-desktop-amd64-mark.box"

  config.vm.provision :shell, :path => "bootstrap.sh"
  config.vm.provision :shell, privileged: false, :path => "setup-opam.sh"
  config.vm.provision :shell, privileged: false, :path => "setup-frenetic.sh"  
  config.vm.provision :shell, privileged: false, :path => "setup-of13.sh"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network :forwarded_port, guest: 80, host: 8080

  # If true, then any SSH connections made will enable agent forwarding.
  # Default value: false
  config.ssh.forward_agent = true

  config.vm.provider :virtualbox do |vb|
    vb.gui = true
  
    vb.customize ["modifyvm", :id, "--memory", "4096"]
    vb.customize ["modifyvm", :id, "--cpus", "2"]
    vb.customize ["modifyvm", :id, "--graphicscontroller", "vboxvga"]
    vb.customize ["modifyvm", :id, "--accelerate3d", "on"]
    vb.customize ["modifyvm", :id, "--ioapic", "on"]
    vb.customize ["modifyvm", :id, "--vram", "128"]
    vb.customize ["modifyvm", :id, "--hwvirtex", "on"]    
  end

  config.vm.synced_folder "~/Projects/Cornell/frenetic/updates-experiments", "/home/vagrant/updates-experiments"
  
end
