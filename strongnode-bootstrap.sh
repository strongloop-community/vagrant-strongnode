#!/usr/bin/env bash

# root su yourself
sudo su

# way of checking if you we need to install everything
if [ ! -d "/var/www" ]
then
		
    # Update and begin installing some utility tools
    apt-get -y update
    apt-get install -y python-software-properties
    apt-get install -y vim git subversion curl
    apt-get install -y memcached build-essential

    #install git
    sudo apt-get --yes --force-yes install git
		
    # Install StrongLoop Node
    cd /opt
		# strongloop-node_1.1.4-1_amd64.deb 
		sudo wget -O strongloop-node_amd64.deb http://45ec19d3127bddec1c1d-e57051fde4dbc9469167f8c2a84830dc.r36.cf1.rackcdn.com/strongloop-suite_1.0.0-1_amd64.deb
		sudo dpkg -i strongloop-node_amd64.deb
		
		#install some npm components
		sudo npm install -g forever
		
		# Symlink our host strongnode-app-folder to the guest /var/strongnode-app-folder folder
    ln -s /vagrant/strongnode-app-folder /var/strongnode-app-folder
		
    echo "You can place other node apps in gthe strongnode-app-folder/ and find them at /var/node-app-folder/"
    echo " 'slc run /var/strongnode-app-folder/myApp/app.js' to run the strong node node app in strongnode-app-folder/myApp"
		
    # build and run your first StrongLoop App
		# cd /var/strongnode-app-folder
		# slnode create web myApp
		# cd myApp
    # lsnode run app.js
		# open a browser on your host machine to http://33.33.33.10:3000	

fi
