cd /var/strongnode-app-folder;
mkdir myLoopBackProject;
cd myLoopBackProject;
slc lb project myLoopBackApp;
cd myLoopBackApp;
slc install strong-agent;
slc install strong-cluster-control;
slc install loopback;
slc lb model product;
slc lb model customer;
slc lb model store;
slc run app.js;

