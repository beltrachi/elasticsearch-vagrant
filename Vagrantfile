# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant::Config.run do |config|
  config.vm.define :mybox do |mybox|
    mybox.vm.box = "precise64"
    mybox.vm.box_url = "http://files.vagrantup.com/precise64.box"
    mybox.vm.provision :puppet, :module_path => "modules", :options => ["--debug"], :facter => { "riak_node_name" => "riak@33.33.33.33" }
    mybox.vm.host_name = 'mybox'

    # riak ports
    mybox.vm.forward_port(8098, 8098)
    mybox.vm.forward_port(8087, 8087)

    # redis ports
    mybox.vm.forward_port(6379, 6379)

    # elastic search ports
    (9200..9400).each do |port|
        mybox.vm.forward_port(port, port)
    end

#    mybox.vm.forward_port(54328, 54328)
    mybox.vm.customize ["modifyvm", :id, "--memory", 1024]
    mybox.vm.network :hostonly, "33.33.33.33"
  end

end
