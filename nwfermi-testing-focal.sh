#!/bin/bash

# borra los drivers antiguos del sistema

sudo apt-get purge --remove nwfermi-daemon -y
sudo apt-get purge --remove nwfermi-module -y
sudo apt-get purge --remove nwfermi-module-host -y
sudo apt-get purge --remove nwfermi-module-host-pointer -y
sudo apt-get purge --remove xf86-input-nextwindow -y
sudo apt-get purge --remove touchegg -y

dkms unbuild nwfermi/0.6.5.0 --all
dkms unbuild nwfermi/0.7.0.1 --all

# Instala los drivers nuevos

# Los paquetes daemon, host y host-pointer no pueden estar instalados al mismo tiempo.

sudo apt-get install libc6-i386 -y
sudo dpkg -i ./testing/touchegg_202104060841-stable-2.0.9_ubuntu20.04.1_amd64.deb
sudo dpkg -i ./testing/xf86-input-nextwindow_0.4.0_bionic1_amd64.deb
sudo dpkg -i ./focal/nwfermi-daemon_0.6.5.1-0+lliurex6+focal_amd64.deb
sudo dpkg -i ./focal/nwfermi-module-host_0.6.5.1-0+lliurex6+focal_amd64.deb
sudo cp ./testing/nwfermi_daemon /usr/sbin/nwfermi_daemon
