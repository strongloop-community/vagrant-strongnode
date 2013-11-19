#StrongNode with Ubuntu precise 64 VirtualBox - Vagrant

###What

Vagrant virtual box of StrongLoop Node.js server.

Vagrant is a command line VM wrapper around VirtualBox/VMWare that makes it easy to:

- Load existing templates ( boxes ) check out [Vagrantbox.es](http://www.vagrantbox.es/)
- Create snapshots package your machine configurations
- Fine tune VM settings such as CPU and RAM
- Easy to share Vagrantfile configurations to setups boxes on init

You can find more information at the official Vagrant Site [VagrantUp](http://www.vagrantup.com/)

###Why

Standup StrongLoop virtual server fast for demo's or dev.

###How

If you already have Vagrant installed then getting started with the StrongLoop Vagrant configurations is a simple as 

```
git clone https://github.com/strongloop-community/vagrant-strongnode
cd vagrant-strongnode
vagrant up
vagrant ssh
```
**requires Vagrant 1.3.5 **

If you don't have Vagrant on your machine the process takes about 10 minutes.  Follow the instructions below to configure Vagrant on your machine.

1. Download and install VirtualBox by [clicking here](https://www.virtualbox.org/wiki/Downloads)
2. Download and install Vagrant by [clicking here](http://downloads.vagrantup.com/)
3. Clone this repository.
4. cd vagrant-strongnode-mongodb/
5. vagrant up


###After you have your Vagrant instance up

1. Vagrantfile configures private network at http://33.33.33.10/
2. place your StrongLoop node apps in vagrant-strongnode/strongnode-app-folder ( such as vagrant-strongnode/strongnode-app-folder/myApp/app.js)
3. login into the machine via 'vagrant ssh'
4. Start the default node app from the cli with 'sudo slc run /var/default-node-app/app.js' 
5. open http://33.33.33.10/ on your host machine and verify 'Hello, From your Vagrant Box!' message.
	
###Further Reading
- [Strong Node ](http://StrongLoop.com)
- [Vagrant Documentation](http://docs.vagrantup.com/v2/getting-started/index.html)
- [How to debug Node.js from within Vagrant](http://neilk.net/blog/2013/08/21/how-to-debug-node-dot-js-from-within-vagrant)
- [vagrant-ssh-node](https://gist.github.com/neilk/6311127)


