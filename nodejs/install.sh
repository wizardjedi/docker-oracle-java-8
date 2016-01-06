#!/bin/bash

apt-get update

apt-get install -y nodejs npm git git-core
ln -s /usr/bin/nodejs /usr/bin/node

npm install -g bower 
npm install -g grunt-cli
npm install 
bower install --allow-root
## grunt 
## grunt serve

apt-get -y autoclean
apt-get -y clean 
apt-get -y purge 
apt-get -y autoremove

rm -rf /var/lib/apt/lists/* /usr/share/doc/* /usr/share/doc-base/* /usr/share/zoneinfo/* /usr/share/locale/* /usr/share/man/* /tmp/*

