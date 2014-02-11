Vagrant.configure("2") do |config|
    config.vm.box = "strongnode"
    config.vm.box_url = "http://files.vagrantup.com/precise64.box"
    
		config.vm.provision :shell, :path => "bootstrap-strongnode.sh"
    
	  # Assign this VM to a host-only network IP, allowing you to access it
	  # via the IP. Host-only networks can talk to the host machine as well as
	  # any other machines on the same network, but cannot be accessed (through this
	  # network interface) by any external networks.
    
		config.vm.network :private_network, ip: '33.33.33.10'
    
    #config.vm.forward_port("node-inspector", 8080, 8080)
    config.vm.network :forwarded_port, host:8080, guest:8080
    
    #config.vm.forward_port("node-debugger", 5858, 5858)
    config.vm.network :forwarded_port, host:5858, guest:5858
		
    config.vm.provider :virtualbox do |vb|
        vb.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
        vb.customize ["modifyvm", :id, "--memory", "512"]
    end
end
