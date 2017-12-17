#!/bin/bash

#This file is transferred to a Debian/Ubuntu Host and executed to re-map interfaces
#Extra config COULD be added here but I would recommend against that to keep this file standard.
echo "#################################"
echo "  Running Server Post Config"
echo "#################################"
sudo su

# Config for Vagrant Interface
cat <<EOT > /etc/network/interfaces
auto lo
iface lo inet loopback

auto mgmt
iface mgmt
    vrf-table auto

auto eth0
iface eth0 inet dhcp
    alias Interface used by oob management
    vrf mgmt

auto vagrant
iface vagrant
    vrf-table auto

auto eth3
iface eth3 inet dhcp
    alias Interface used by Vagrant
    vrf vagrant

source /etc/network/interfaces.d/*
EOT

echo " ###Creating SSH keys for cumulus user ###"
mkdir -p /home/cumulus/.ssh

cat <<EOT > /home/cumulus/.ssh/id_rsa.pub
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCzH+R+UhjVicUtI0daNUcedYhfvgT1dbZXgY33Ibm4MOo+X84Iwuzirm3QFnYf2O3uyZjNyrA6fj9qFE7Ekul4bD6PCstQupXPwfPMjns2M7tkHsKnLYjNxWNql/rCUxoH2B6nPyztcRCass3lIc2clfXkCY9Jtf7kgC2e/dmchywPV5PrFqtlHgZUnyoPyWBH7OjPLVxYwtCJn96sFkrjaG9QDOeoeiNvcGlk4DJp/g9L4f2AaEq69x8+gBTFUqAFsD8ecO941cM8sa1167rsRPx7SK3270Ji5EUF3lZsgpaiIgMhtIB/7QNTkN9ZjQBazxxlNVN6WthF8okb7OSt
EOT

cat /home/cumulus/.ssh/id_rsa.pub >> /home/cumulus/.ssh/authorized_keys

chmod 700 -R /home/cumulus/.ssh
chown cumulus:cumulus -R /home/cumulus/.ssh

echo "cumulus ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/10_cumulus


echo " ###Install NetQ agent ###"
apt-get update
apt-get install -y cumulus-netq


echo "#################################"
echo "   Finished"
echo "#################################"
