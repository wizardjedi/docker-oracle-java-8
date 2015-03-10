#!/bin/bash

apt-get update 
apt-get install -y wget libgmp10
cd tmp
wget --no-check-certificate https://github.com/jgm/pandoc/releases/download/1.13.2/pandoc-1.13.2-1-amd64.deb
dpkg -i pandoc-1.13.2-1-amd64.deb

apt-get install -y texlive texlive-full gpp

apt-get -y autoclean
apt-get -y clean 
apt-get -y purge 
apt-get -y autoremove

rm -rf /var/lib/apt/lists/* /usr/share/doc/* /usr/share/doc-base/* /usr/share/zoneinfo/* /usr/share/locale/* /usr/share/man/* 

