#!/bin/bash

# borra los drivers antiguos del sistema

sudo apt-get purge --remove nwfermi-daemon -y
sudo apt-get purge --remove nwfermi-module -y
sudo apt-get purge --remove nwfermi-module-host -y
sudo apt-get purge --remove nwfermi-module-host-pointer -y
sudo apt-get purge --remove xf86-input-nextwindow -y

dkms unbuild nwfermi/0.6.5.0 --all
dkms unbuild nwfermi/0.7.0.1 --all

# Instala los drivers nuevos

# Los paquetes daemon, host y host-pointer no pueden estar instalados al mismo tiempo.

sudo apt-get install libc6-i386 -y
sudo dpkg -i ./bionic/amd64/nwfermi-daemon_0.6.5.1-0+lliurex6_amd64.deb
#sudo dpkg -i ./bionic/amd64/nwfermi-module_0.6.5.1-0+lliurex6_amd64.deb
#sudo dpkg -i ./bionic/amd64/nwfermi-module-host_0.6.5.1-0+lliurex6_amd64.deb
sudo dpkg -i ./bionic/amd64/nwfermi-module-host-pointer_0.6.5.1-0+lliurex6_amd64.deb
sudo dpkg -i ./bionic/amd64/xf86-input-nextwindow_0.3.4~lliurex1+focal_amd64.deb
