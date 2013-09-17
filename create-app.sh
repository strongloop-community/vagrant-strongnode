cd /var/strongnode-app-folder;
slc lb project loopback-node-app;
cd loopback-node-app;
slc install;
slc install strong-cluster-control;
slc install strong-agent;
slc install loopback@1.0.0;
slc lb model product;
slc lb model customer;
slc lb model store;
slc run app.js;
#forver run app.js;

