#!/bin/bash

# improv
# sudo emerge --ask qemu virt-manager virt-viewer dnsmasq vde2 bridge-utils openbsd-netcat libvirt-openrc

sudo rc-service libvirtd start
sudo rc-update add libvirtd default

sudo sed -i 's/#unix_sock_group = "libvirt"/unix_sock_group = "libvirt"/g' /etc/libvirt/libvirtd.conf
sudo sed -i 's/#unix_sock_rw_perms = "0777"/unix_sock_rw_perms = "0777"/g' /etc/libvirt/libvirtd.conf
sudo sed -i 's/#unix_sock_rw_perms = "0770"/unix_sock_rw_perms = "0770"/g' /etc/libvirt/libvirtd.conf

sudo usermod -aG libvirt $(whoami)
sudo rc-service libvirtd restart

echo 'Reboot your system...'
