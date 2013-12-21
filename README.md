Summary
---

Vagrant project to create sandbox/demo environment for StrongLoop and LoopBack Node apps.

- Reccomend Vagrant 1.3.5
- Uses the precise64.box virtualbox
- Configures vm.network private_network at '33.33.33.10'
- Installs StrongLoop 1.1.0-1_amd64.deb distro
- Symlink `~/strongnode-app-folder` on host machine
- Creates example LoopBack app

##Installing Vagrant

1. Download and install VirtualBox by [clicking here](https://www.virtualbox.org/wiki/Downloads)
1. Download and install Vagrant by [clicking here](http://downloads.vagrantup.com/)

##Running Vagrantfile

1. Clone this github repo
``` git clone https://github.com/strongloop-community/vagrant-strongnode; cd vagrant-strongnode ```
1. Provision the vm `vagrant up`
1. Login to the vm `vagrant ssh`
1. Start the example loopback Node server `slc run /var/strongnode-app-folder/loopback-node-app/app.js`
1. Open a browser on the host machine to [http://33.33.33.10:3000/explorer](http://33.33.33.10:3000/explore)

###References  & Further Reading
- [StrongLoop docs ](http://docs.StrongLoop.com)
- [Vagrant Documentation](http://docs.vagrantup.com/v2/getting-started/index.html)
- [Blog Post](post.md)

[![githalytics.com alpha](https://cruel-carlota.pagodabox.com/7ca7c2f6aef75c2cb0d821319461978b "githalytics.com")](http://githalytics.com/strongloop-community/vagrant-strongnode)


