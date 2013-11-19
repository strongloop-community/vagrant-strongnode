#StrongNode on Vagrant, Ubuntu precise 64 VirtualBox

![image](http://www.vagrantup.com/images/logo_vagrant-81478652.png) 

###Why Vagrant is great for more that just Sys Ops

Vagrant provides easy to configure, reproducible, and portable work environment. Vagrant machines are simple to use and easy to share.  

For **developers** Vagrant can isolate your server machine environment making it easy for you ( or someone else ) to create development environments from the same configuration. This whether your working on Linux, Mac OS X, or Windows, you can be confided your running in the same environment, allowing you to combat the every present "it works on my machine" response that occurs in modern complex machine configurations.

Vagrant VM's are also great for **designer's**, **manager's** and **product stakeholder's** since Vagrant will automatically setup a demo or stage machine with a since `vagrant up` command.  Once your engineering team configures the Vagrantfile you can get access to the latest and greatest and focus on getting your work done instead of bothering a developer to get access to the product.

Vagrant Machines are provisioned on top of [VirtualBox](https://www.virtualbox.org/), [VMware](http://www.vmware.com/), AWS, or [any other provider](http://docs.vagrantup.com/v2/providers/). [Provisioning tools](http://docs.vagrantup.com/v2/provisioning/) such as shell scripts, Chef, or Puppet, can be used to automatically install and configure software on the virtual machine.

the `Vagrant` command wrapper uses VirtualBox/VMWare making it easy to:

- Load existing templates ( boxes ) check out [Vagrantbox.es](http://www.vagrantbox.es/)
- Create snapshots package your machine configurations
- Fine tune VM settings such as CPU and RAM
- Easy to share Vagrantfile configurations to setups boxes on init

You can find more information at the official Vagrant Site [VagrantUp](http://www.vagrantup.com/)

###What

A preconfigured Vagrant virtual box of the StrongLoop Node platform can be found at [strongloop-community/vagrant-strongnode](https://github.com/strongloop-community/vagrant-strongnode) allowing you to try, test and develop with 4 commands

###How

If you already have Vagrant installed (*requires Vagrant 1.3.5*) then getting started with the StrongLoop Vagrant configurations is a simple as:

```
git clone https://github.com/strongloop-community/vagrant-strongnode
cd vagrant-strongnode
vagrant up
vagrant ssh
```

If you don't have Vagrant on your machine the process takes about 10 minutes by installing the two primary dependancies.

- Download and install VirtualBox at [virtualbox.org/wiki/Downloads](https://www.virtualbox.org/wiki/Downloads)
- Download and install Vagrant at [downloads.vagrantup.com ](http://downloads.vagrantup.com/)

###The basic Vagrant subcommands

If you followed the instructions above you have already been introduced to the  ```Vagrant Up```, and ```Vagrant ssh``` Vagrant sub commands. Vagrant commands need to be run from within the Vagrant folder, often this is the same folder the Vagrantfile resides in.  A full list of commands can be found at [docs.vagrantup.com](http://docs.vagrantup.com/v2/cli/index.html)

####The basics are 
- `Vagrant up` : creates and configures a machines according to the Vagrantfile
- `Vagrant ssh` : SSH into a running Vagrant machine and give you access to a shell 
- `Vagrant suspend` :  suspends the machine Vagrant is managing 
- `Vagrant resume` : resumes a suspended Vagrant machine
- `Vagrant destroy` : stops the running machine and destroys all resources that were created

Additionally the VBOXManage command ```VBoxManage list runningvms``` is handy for listing current Vagrant Boxes.   This is useful when your jumping from machine to machine and cannot remember the state of your last Vagrant Box.

###After you have your Vagrant instance up via the `vagrant up` command You can immediately start to use the machine.

The [vagrant-strongnode](https://github.com/strongloop-community/vagrant-strongnode) Vagrantfile pre-configures a private network at [http://33.33.33.10/](http://33.33.33.10/) so you only need to open a local browser to access server.

![image](http://strongloop.com/wp-content/uploads/2013/04/logo-strongloop.png)

You can place additional StrongLoop node apps in `vagrant-strongnode/strongnode-app-folder`.  The [bootstrap-strongnode.sh](https://github.com/strongloop-community/vagrant-strongnode/blob/master/bootstrap-strongnode.sh) file maps this local folder to your Vagrant VM `/var/strongnode-app-folder` making it easy to add new StrongLoop and LoopBack node applications to your running Vagrant Box.

From your dev machine command line you can exit the existing Vagrant executing application or create a new LoopBack application with:

```
cd ~/vagrant-strongnode/strongnode-app-folder/
slc lb project myNewApp
cd myNewApp
slc lb install
```

Log into your Vagrant Box by running `vagrant ssh` from within the `~/vagrant-strongnode` folder.  Once you have ssh'ed into the Box you have full access to the SLC command line.  Allowing your to run applications 'sudo slc run /var/default-node-app/app.js'; run the slc node-inspector debugger `sudo slc debug /var/default-node-app/app.js` or configure StrongOps via `slc`

So get started `Vagrant up` and `open http://33.33.33.10/` and get started with StrongLoop in Vagrant.
	
###Further Reading
- [Strong Node ](http://StrongLoop.com)
- [Vagrant Documentation](http://docs.vagrantup.com/v2/getting-started/index.html)
- [How to debug Node.js from within Vagrant](http://neilk.net/blog/2013/08/21/how-to-debug-node-dot-js-from-within-vagrant)
- [vagrant-ssh-node](https://gist.github.com/neilk/6311127)


