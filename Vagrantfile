# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "CentOS-6.4-x86_64-minimal"
  config.vm.box_url = "http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-x86_64-v20130427.box"

  config.vm.synced_folder ".", "/etc/puppet/modules/phpmemcachedadmin"

  config.vm.provision :shell, :inline => "test -d /etc/puppet/modules/epel || puppet module install stahnma/epel"

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "tests"
    puppet.manifest_file  = "init.pp"
  end

end
