#!/bin/bash

apt-get update 
apt-get install -y puppet 
puppet apply /tmp/devel.pp 

apt-get remove -y puppet puppet-common libaugeas-ruby1.8 libruby1.8 libruby1.9.1 ruby ruby-json ruby-shadow ruby1.8 ruby1.9.1

apt-get -y autoclean
apt-get -y clean 
apt-get -y purge 
apt-get -y autoremove

rm -rf /var/lib/apt/lists/* /usr/share/doc/* /usr/share/doc-base/* /usr/share/zoneinfo/* /usr/share/locale/* /usr/share/man/* /var/cache/oracle-jdk8-installer

rm -rf /usr/lib/jvm/java-8-oracle/man

rm -rf /usr/lib/jvm/java-8-oracle/*src.zip \
           /usr/lib/jvm/java-8-oracle/lib/missioncontrol \
           /usr/lib/jvm/java-8-oracle/lib/visualvm \
           /usr/lib/jvm/java-8-oracle/lib/*javafx* \
           /usr/lib/jvm/java-8-oracle/jre/lib/plugin.jar \
           /usr/lib/jvm/java-8-oracle/jre/lib/ext/jfxrt.jar \
           /usr/lib/jvm/java-8-oracle/jre/bin/javaws \
           /usr/lib/jvm/java-8-oracle/jre/lib/javaws.jar \
           /usr/lib/jvm/java-8-oracle/jre/lib/desktop \
           /usr/lib/jvm/java-8-oracle/jre/plugin \
           /usr/lib/jvm/java-8-oracle/jre/lib/deploy* \
           /usr/lib/jvm/java-8-oracle/jre/lib/*javafx* \
           /usr/lib/jvm/java-8-oracle/jre/lib/*jfx* \
           /usr/lib/jvm/java-8-oracle/jre/lib/amd64/libdecora_sse.so \
           /usr/lib/jvm/java-8-oracle/jre/lib/amd64/libprism_*.so \
           /usr/lib/jvm/java-8-oracle/jre/lib/amd64/libfxplugins.so \
           /usr/lib/jvm/java-8-oracle/jre/lib/amd64/libglass.so \
           /usr/lib/jvm/java-8-oracle/jre/lib/amd64/libgstreamer-lite.so \
           /usr/lib/jvm/java-8-oracle/jre/lib/amd64/libjavafx*.so \
           /usr/lib/jvm/java-8-oracle/jre/lib/amd64/libjfx*.so
