# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.define :elastic1 do |mybox|
    mybox.vm.box = "precise64"
    mybox.vm.box_url = "http://files.vagrantup.com/precise64.box"
    mybox.vm.provision :puppet, :module_path => "modules", :options => ["--debug"]
    mybox.vm.host_name = 'elastic1'
    mybox.vm.customize ["modifyvm", :id, "--memory", 1024]
    mybox.vm.network :hostonly, "33.33.33.33"
  end
end
