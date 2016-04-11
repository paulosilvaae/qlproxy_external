#!/bin/bash

# all packages are installed as root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# get qlproxy
wget http://packages.diladele.com/qlproxy/4.5.0.50FA/amd64/release/suse13/qlproxy-4.5.0-50FA.x86_64.rpm

# install it
rpm -i qlproxy-4.5.0-50FA.x86_64.rpm

# restart apache
systemctl restart apache2
