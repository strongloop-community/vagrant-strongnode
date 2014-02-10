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
  apt-get install -y python g++ make
  apt-get install -y vim git subversion curl
  apt-get install -y memcached build-essential
  
  #Install git
  sudo apt-get --yes --force-yes install git
  
 	cd /opt
  
  #Install Node
  sudo apt-get -y update
  sudo apt-get install -y python-software-properties python g++ make
  sudo add-apt-repository -y ppa:chris-lea/node.js
  sudo apt-get update
  sudo apt-get install -y nodejs
  
  #Install strong-cli
  apt-get update
	
	# Symlink our host strongnode-app-folder to the guest /var/strongnode-app-folder folder
  sudo ln -s /vagrant/strongnode-app-folder /var/strongnode-app-folder
	
	######################################################################
	## Install the StrongLoop CLI
	######################################################################
	echo "-SLC- npm install strong-cli"
  npm install -g strong-cli
  #sudo -i npm install strong-cli -g
  
	
	######################################################################
	## Create a sample app
	######################################################################
	echo "-SLC- create loopback-node-app"
	#bootstrap loopback from base
	cd /var/strongnode-app-folder
	slc lb project loopback-node-app
	cd loopback-node-app
	#slc install
	slc lb model product
  slc lb model customer
  slc lb model store
	
	######################################################################
	## Clone a sample app
	######################################################################
	#echo "  "
	#echo "clone an existing repo strongloop-community/loopback-example"
	#cd /var/strongnode-app-folder
	#git clone https://github.com/strongloop-community/loopback-example
	#cd loopback-example
	#npm install
	
	######################################################################
	##
	######################################################################
	echo "  "
  echo "loopback node.js app created at strongnode-app-folder/loopback-node-app"
  echo "created with model types: store, customer, product"
	echo "  "
	echo "You can place other node apps in the strongnode-app-folder/ and find them at /var/node-app-folder/"
	echo " 'slc run /var/strongnode-app-folder/myApp/app.js' to run the strong node node app in strongnode-app-folder/myApp"
	echo "  "
	
	### Optional installs and configurations
	#install some useful npm packages
	#sudo npm install -g forever
	
	### Optional startup commands
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
