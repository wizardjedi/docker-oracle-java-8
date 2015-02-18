file { ["/tmp/1/", "/tmp/2/"]:
    ensure => "directory",
    recurse => true,
    mode   => 775,
}

## Install java8
$webupd8src = '/etc/apt/sources.list.d/webupd8team.list'
 
# Ensure the sources list exists
# See http://stackoverflow.com/a/10463734/428876 for sharing files and configuring a puppet fileserver
file { $webupd8src:
	content => "deb http://ppa.launchpad.net/webupd8team/java/ubuntu lucid main\ndeb-src http://ppa.launchpad.net/webupd8team/java/ubuntu lucid main\n",
} ->
# Authorise the webupd8 ppa
# At the time of writing this key was correct, but check the PPA page on launchpad!
# https://launchpad.net/~webupd8team/+archive/java
exec { 'add-webupd8-key':
	command => 'apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886',
	path => ['/bin','/usr/bin/'],
	onlyif => 'test ! `which java`',
} ->
# update the apt keystore
exec { 'apt-key-update':
	command => 'apt-key update',
	path => ['/bin','/usr/bin/'],
	onlyif => 'test ! `which java`',
} ->
# update apt sources 
exec { 'apt-update':
	command => 'apt-get update',
	path => ['/bin','/usr/bin/'],
	onlyif => 'test ! `which java`',
} ->
# set license acceptance with debconf
# thanks to Gert van Dijk on http://askubuntu.com/a/190674
exec { 'accept-java-license':
	command => '/bin/echo /usr/bin/debconf shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections;/bin/echo /usr/bin/debconf shared/accepted-oracle-license-v1-1 seen true | /usr/bin/debconf-set-selections;',
	path => ['/bin','/usr/bin/'],
	onlyif => 'test ! `which java`',
} ->
# finally install the package
# oracle-java6-installer and oracle-java8-installer also available from the ppa
package { 'oracle-java8-installer':
	ensure => present,
}
