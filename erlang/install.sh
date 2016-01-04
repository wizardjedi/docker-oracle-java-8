#!/bin/bash

apt-get update
apt-get install -y wget build-essential autoconf libtool

cd tmp
wget http://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb
dpkg -i erlang-solutions_1.0_all.deb

apt-get update

# Install erlang 18.2.1
apt-get install -y erlang-nox erlang-dev erlang-base-hipe

rm erlang-solutions_1.0_all.deb

apt-get -y autoclean
apt-get -y clean 
apt-get -y purge 
apt-get -y autoremove

rm -rf /var/lib/apt/lists/* /usr/share/doc/* /usr/share/doc-base/* /usr/share/zoneinfo/* /usr/share/locale/* /usr/share/man/* 

