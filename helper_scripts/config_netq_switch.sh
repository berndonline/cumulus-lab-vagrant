#!/bin/bash

echo "#################################"
echo "  Running Switch Post Config (config_switch.sh)"
echo "#################################"
sudo su

echo " ###Install NetQ agent ###"
apt-get update
apt-get install -y cumulus-netq

## Convenience code. This is normally done in ZTP.



echo "#################################"
echo "   Finished"
echo "#################################"
