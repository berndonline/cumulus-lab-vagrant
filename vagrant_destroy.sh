#!/bin/bash

virsh destroy cumulus-lab-vagrant_leaf-6
virsh destroy cumulus-lab-vagrant_leaf-5
virsh destroy cumulus-lab-vagrant_leaf-2
virsh destroy cumulus-lab-vagrant_spine-1
virsh destroy cumulus-lab-vagrant_spine-2
virsh destroy cumulus-lab-vagrant_leaf-4 
virsh destroy cumulus-lab-vagrant_edge-2 
virsh destroy cumulus-lab-vagrant_mgmt-1 
virsh destroy cumulus-lab-vagrant_leaf-1 
virsh destroy cumulus-lab-vagrant_edge-1 
virsh destroy cumulus-lab-vagrant_leaf-3 
virsh destroy cumulus-lab-vagrant_netq-1
virsh destroy cumulus-lab-vagrant_server-1
virsh destroy cumulus-lab-vagrant_server-2
virsh destroy cumulus-lab-vagrant_server-3
virsh destroy cumulus-lab-vagrant_server-4
virsh destroy cumulus-lab-vagrant_server-5
virsh destroy cumulus-lab-vagrant_server-6

virsh undefine cumulus-lab-vagrant_leaf-6
virsh undefine cumulus-lab-vagrant_leaf-5
virsh undefine cumulus-lab-vagrant_leaf-2
virsh undefine cumulus-lab-vagrant_spine-1
virsh undefine cumulus-lab-vagrant_spine-2
virsh undefine cumulus-lab-vagrant_leaf-4 
virsh undefine cumulus-lab-vagrant_edge-2 
virsh undefine cumulus-lab-vagrant_mgmt-1 
virsh undefine cumulus-lab-vagrant_leaf-1 
virsh undefine cumulus-lab-vagrant_edge-1 
virsh undefine cumulus-lab-vagrant_leaf-3 
virsh undefine cumulus-lab-vagrant_netq-1
virsh undefine cumulus-lab-vagrant_server-1
virsh undefine cumulus-lab-vagrant_server-2
virsh undefine cumulus-lab-vagrant_server-3
virsh undefine cumulus-lab-vagrant_server-4
virsh undefine cumulus-lab-vagrant_server-5
virsh undefine cumulus-lab-vagrant_server-6

virsh vol-delete cumulus-lab-vagrant_edge-1.img default
virsh vol-delete cumulus-lab-vagrant_edge-2.img default
virsh vol-delete cumulus-lab-vagrant_leaf-1.img default
virsh vol-delete cumulus-lab-vagrant_leaf-2.img default
virsh vol-delete cumulus-lab-vagrant_leaf-3.img default
virsh vol-delete cumulus-lab-vagrant_leaf-4.img default
virsh vol-delete cumulus-lab-vagrant_leaf-5.img default
virsh vol-delete cumulus-lab-vagrant_leaf-6.img default
virsh vol-delete cumulus-lab-vagrant_mgmt-1.img default
virsh vol-delete cumulus-lab-vagrant_spine-1.img default
virsh vol-delete cumulus-lab-vagrant_spine-2.img default
virsh vol-delete cumulus-lab-vagrant_netq-1.img default
virsh vol-delete cumulus-lab-vagrant_server-1.img default
virsh vol-delete cumulus-lab-vagrant_server-2.img default
virsh vol-delete cumulus-lab-vagrant_server-3.img default
virsh vol-delete cumulus-lab-vagrant_server-4.img default
virsh vol-delete cumulus-lab-vagrant_server-5.img default
virsh vol-delete cumulus-lab-vagrant_server-6.img default
