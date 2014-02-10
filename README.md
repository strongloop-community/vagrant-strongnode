Sample StrongLoop Loopback Vagrant configuration
---

##Intro

Vagrant provides easy-to-configure, reproducible, and portable virtual machine environments. Vagrant VMs are provisioned on top of [VirtualBox](https://www.virtualbox.org/), [VMware](http://www.vmware.com/), AWS, and other [providers](http://docs.vagrantup.com/v2/providers/). You can use [configuration tools](http://) such as shell scripts, [Chef](http://www.opscode.com/chef/), or [Puppet](http://puppetlabs.com/), to automatically install and configure software on the virtual machine.

You can find more information at the official [Vagrant Site](http://www.vagrantup.com/).

Vagrant project to create sandbox/demo environment for StrongLoop and LoopBack Node apps.

##Installing Vagrant

If you don’t have Vagrant on your machine, it takes about 10 minutes to install the two primary dependencies [VirtualBox](https://www.virtualbox.org/wiki/Downloads) and [Vagrant](http://strongloop.com/strongblog/running-a-strongloop-demo-on-vagrant/).

1. Download and install VirtualBox by [clicking here](https://www.virtualbox.org/wiki/Downloads)
1. Download and install Vagrant (Recommend version 1.3.5) by [clicking here](http://downloads.vagrantup.com/)


##Running this Vagrant configuration 

1. Clone this github repo
``` git clone https://github.com/strongloop-community/vagrant-strongnode```
1. cd into the folder ```cd vagrant-strongnode```
1. Provision the vm `vagrant up`
1. Login to the vm with `vagrant ssh`
1. Start the example loopback Node server `slc run /var/strongnode-app-folder/loopback-node-app/app.js`
1. Open a browser on the host machine to [http://33.33.33.10:3000/explorer](http://33.33.33.10:3000/explorer)

machine configured. ":private_network" configured at http://33.33.33.10
to run the example app:
1. vagrant ssh
2. slc run /var/strongnode-app-folder/loopback-node-app/app.js
3. open a browser on your host machine: to http://33.33.33.10:3000/explorer/
4. 
##Additional configuration information:

- Vagrant 1.3.5
- Uses the precise64.box virtualbox ( automatically downloaded with the `vagrant up` command)
- Configures vm.network private_network at '33.33.33.10'
- Installs StrongLoop 1.1.0-1_amd64.deb distro
- Symlink `~/strongnode-app-folder` on host machine
- Creates example LoopBack app


Regarding the warning: 

``` 
The guest additions on this VM do not match the install version of
VirtualBox! This may cause things such as forwarded ports, shared
folders, and more to not work properly. If any of those things fail on
this machine, please update the guest additions and repackage the
box.
```

One option is to install the vbguest plugin by runing the command ```vagrant plugin install vagrant-vbguest``` in the directory that keeps holds the VagrantFile. 


##Some Vagrant basics


Vagrant sub commands often run from within the folder that contains your Vagrantfile. Below is a list of the most commonly used commands a full list of commands can be found at [docs.vagrantup.com](http://docs.vagrantup.com/v2/)

Vagrant basics:

- `vagrant up` : creates and configures a machine according to the Vagrantfile
- `vagrant ssh` : SSH into a running Vagrant machine and give you access to a shell
- `vagrant suspend` : suspend the machine Vagrant is managing
- `vagrant resume` : resume a suspended Vagrant machine
- `vagrant destroy` : stop the running machine and destroy all resources that were created
- An additional VirtualBox command `VBoxManage list runningvms` is handy for listing current Vagrant Boxes. This is useful when you’re jumping from machine to machine and cannot remember the state of your last Vagrant Box.

###References  & Further Reading
- [StrongLoop docs ](http://docs.StrongLoop.com)
- [Vagrant Documentation](http://docs.vagrantup.com/v2/getting-started/index.html)
- [Blog Post](post.md)

[![githalytics.com alpha](https://cruel-carlota.pagodabox.com/7ca7c2f6aef75c2cb0d821319461978b "githalytics.com")](http://githalytics.com/strongloop-community/vagrant-strongnode)


