# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant::Config.run do |config|
  config.vm.define :mybox do |mybox|
    mybox.vm.box = "precise64"
    mybox.vm.box_url = "http://files.vagrantup.com/precise64.box"
    mybox.vm.provision :puppet, :module_path => "modules", :options => ["--debug"]
    mybox.vm.host_name = 'mybox'
    mybox.vm.customize ["modifyvm", :id, "--memory", 4096]
    mybox.vm.network :hostonly, "192.168.1.10"
  end
end
