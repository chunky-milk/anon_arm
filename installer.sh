#!/bin/bash

# Ensure script is being run as root
if [ $(id -u) -ne 0 ]; then
	echo "This script must be run as root. Try again with sudo."
	exit 1
fi

# Download code from repo
git clone https://github.com/chunky-milk/anonsurf-arm_beta anonsurf-arm && cd anonsurf-arm

# For upgrades and sanity check, remove any existing i2p.list file
rm -f /etc/apt/sources.list.d/i2p.list

# Compile the i2p ppa
apt-get update
apt-get install lxterminal apt-transport-https git aria2 -y
echo "deb http://deb.i2p2.no/ unstable main" > /etc/apt/sources.list.d/i2p.list # Default config reads repos from sources.list.d
wget https://geti2p.net/_static/i2p-debian-repo.key.asc -O /tmp/i2p-debian-repo.key.asc # Get the latest i2p repo pubkey
apt-key add /tmp/i2p-debian-repo.key.asc # Import the key
rm /tmp/i2p-debian-repo.key.asc # delete the temp key
apt-get update # Update repos

apt-get install libservlet3.0-java 
aria2c -x16 http://ftp.us.debian.org/debian/pool/main/j/jetty8/libjetty8-java_8.1.16-4_all.deb
dpkg -i libjetty8-java_8.1.16-4_all.deb # This should succeed without error
apt-get install libecj-java libgetopt-java libservlet3.0-java glassfish-javaee ttf-dejavu i2p i2p-router libjbigi-jni -y #installs i2p and other dependencies
apt-get -f install # resolves anything else in a broken state

apt-get install -y i2p-keyring #this will ensure you get updates to the repository's GPG key
apt-get install -y secure-delete tor i2p # install dependencies, just in case

# Configure and install the .deb
dpkg-deb -b anon_arm-deb-src/ anon-arm.deb # Build the deb package
dpkg -i anon-arm.deb || (apt-get -f install && dpkg -i anon-arm.deb) # this will automatically install the required packages

exit 0
