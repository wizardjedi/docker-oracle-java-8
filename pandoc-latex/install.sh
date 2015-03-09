#!/bin/bash

apt-get update 
apt-get install -y texlive texlive-full pandoc gpp

apt-get -y autoclean
apt-get -y clean 
apt-get -y purge 
apt-get -y autoremove

rm -rf /var/lib/apt/lists/* /usr/share/doc/* /usr/share/doc-base/* /usr/share/zoneinfo/* /usr/share/locale/* /usr/share/man/* 

