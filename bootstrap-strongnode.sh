#!/usr/bin/env bash

# root su yourself
sudo su

# way of checking if you we need to install everything
if [ ! -d "/var/www" ]
then
	
	# Update apt and 
	apt-get -y update	
	
	# Required for StrongLoop 1.1.0
	sudo apt-get install libaio1
	
	# Install some utility tools
  apt-get install -y python-software-properties
  apt-get install -y vim git subversion curl
  apt-get install -y memcached build-essential
	
  #Install git
  sudo apt-get --yes --force-yes install git
	
  #Install StrongLoop Node
 	cd /opt
	# strongloop-node_1.1.0-1_amd64.deb
	sudo wget -O strongloop-node_amd64.deb http://45ec19d3127bddec1c1d-e57051fde4dbc9469167f8c2a84830dc.r36.cf1.rackcdn.com/strongloop-suite_1.1.0-1_amd64.deb
	sudo dpkg -i strongloop-node_amd64.deb
		
	# Symlink our host strongnode-app-folder to the guest /var/strongnode-app-folder folder
  sudo ln -s /vagrant/strongnode-app-folder /var/strongnode-app-folder
	sudo chown -R vagrant ~/.npm
		
    echo "You can place other node apps in the strongnode-app-folder/ and find them at /var/node-app-folder/"
    echo " 'slc run /var/strongnode-app-folder/myApp/app.js' to run the strong node node app in strongnode-app-folder/myApp"
		
		#bootstrap loopback from base
		cd /var/strongnode-app-folder
		slc lb project loopback-node-app
		cd loopback-node-app
		slc install
		slc lb model product
		slc lb model customer
		slc lb model store
		
		echo "loopback node.js app created at strongnode-app-folder/loopback-node-app"
		echo "created with model types: store, customer, product"
		
	#location of the active app
	cd /var/strongnode-app-folder/loopback-node-app
	
	#install some useful npm packages
	#sudo npm install -g forever
	
	#start the server
	#slc run app.js &
	# forever -w app.js
	#node server.js /var/log/php.log
	#slc debug . node-inspector --web-port=3000
	
	echo "machine configured. \":private_network\" configured at http://33.33.33.10"
	echo "to run the example app:"
	echo "1. vagrant ssh"
	echo "2. slc run /var/strongnode-app-folder/loopback-node-app/app.js"
	echo "3. open a browser on your host machine: to http://33.33.33.10:3000/explorer/"
	
fi
