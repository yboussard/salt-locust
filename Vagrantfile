# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    ## Choose your base box
    config.vm.box = "precise64"
    config.vm.box_url = "http://files.vagrantup.com/precise64.box"
    config.vm.host_name = "locust-host" 
    ## For masterless, mount your salt file root
    config.vm.synced_folder "provision", "/provision",  mount_options: ["dmode=777,fmode=666"]
    config.vm.synced_folder "scenario", "/scenario",  mount_options: ["dmode=777,fmode=666"]
    
    config.vm.network :forwarded_port, guest: 80, host: 1080
    config.vm.network :forwarded_port, guest: 8089, host: 8089

    ## Use all the defaults:
    config.vm.provision :salt do |salt|

      salt.minion_config = "provision/minion"
      salt.run_highstate = true
      salt.verbose = true
    end
  end
