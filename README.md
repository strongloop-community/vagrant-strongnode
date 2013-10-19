#StrongNode with Ubuntu precise 64 VirtualBox - Vagrant

###What

Vagrant virtual box of StrongLoop

###Why

Because vagrant boxes are sweet!

###How

**requires Vagrant 1.3.5 **

1. Download and install VirtualBox by [clicking here](https://www.virtualbox.org/wiki/Downloads)
2. Download and install Vagrant by [clicking here](http://downloads.vagrantup.com/)
3. Clone this repository.
4. cd vagrant-strongnode-mongodb/
5. vagrant up

###After Vagrant Box is up
1. Vagrantfile configures private network at http://33.33.33.10/
2. place your StrongLoop node apps in vagrant-strongnode/strongnode-app-folder ( such as vagrant-strongnode/strongnode-app-folder/myApp/app.js)
3. login into the machine via 'vagrant ssh'
4. Start the default node app from the cli with 'sudo slc run /var/default-node-app/app.js' 
5. open http://33.33.33.10/ on your host machine and verify 'Hello, From your Vagrant Box!' message.
	
###Further Reading
- [Strong Node ](http://StrongLoop.com)
- [Vagrant Documentation](http://docs.vagrantup.com/v2/getting-started/index.html)
